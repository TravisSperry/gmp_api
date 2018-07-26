# frozen_string_literal: true

class NewsletterService
  attr_reader :ambassador

  MAILCHIMP_API_KEY =
    Rails.application.credentials[:production][:mailchimp][:api_key].freeze
  AMBASSADOR_LIST_ID = '8ae9ed9f0d'.freeze

  def initialize(ambassador)
    @ambassador = ambassador
  end

  def subscribe
    ambassador_list
      .members(lower_case_md5_hashed_email_address)
      .upsert(body: {
                email_address: ambassador.email,
                status: "subscribed",
                merge_fields: {
                  FNAME: ambassador.first_name,
                  LNAME: ambassador.last_name
                }
              })
  end

  private

  def ambassador_list
    gibbon.lists(AMBASSADOR_LIST_ID)
  end

  def gibbon
    Gibbon::Request.new(api_key: MAILCHIMP_API_KEY)
  end

  def lower_case_md5_hashed_email_address
    return unless ambassador.email
    Digest::MD5.hexdigest ambassador.email.downcase
  end
end
