# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ambassadors/new', type: :view do
  before(:each) do
    assign(:ambassador, Ambassador.new)
  end

  it 'renders new ambassador form' do
    render

    assert_select 'form[action=?][method=?]', ambassadors_path, 'post' do
    end
  end
end
