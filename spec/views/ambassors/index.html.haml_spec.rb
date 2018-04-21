require 'rails_helper'

RSpec.describe "ambassadors/index", type: :view do
  before(:each) do
    assign(:ambassadors, create_list(:ambassador, 2))
  end

  it "renders a list of ambassadors" do
    render
  end
end
