# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'User Login', type: :feature do
  let(:user) { create(:user) }

  before do
    visit '/'
    expect(page).to have_text('Global Math Project Login')
  end

  scenario 'User logs in' do
    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'password'
    click_button 'Sign in'

    expect(page).to have_text('Dashboard')
  end
end
