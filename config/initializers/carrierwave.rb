# frozen_string_literal: true

CarrierWave.configure do |config|
  config.storage                             = :gcloud
  config.gcloud_bucket                       = "gmp-#{Rails.env}-storage"
  config.gcloud_bucket_is_public             = true
  config.gcloud_authenticated_url_expiration = 600

  config.gcloud_attributes = {
    expires: 600
  }

  config.gcloud_credentials = {
    gcloud_project: 'global-math-project-201820',
    gcloud_keyfile: ENV['GCP_CREDENTIALS'] || Rails.root.join('global-math-project-fb8ec2b0dba5.json')
  }
end

if Rails.env.test?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end

  CarrierWave::Uploader::Base.descendants.each do |klass|
    next if klass.anonymous?
    klass.class_eval do
      def cache_dir
        "#{Rails.root}/spec/support/uploads/tmp"
      end

      def store_dir
        "#{Rails.root}/spec/support/uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
      end
    end
  end
end
