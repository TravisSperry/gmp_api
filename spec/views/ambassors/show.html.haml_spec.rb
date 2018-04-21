require 'rails_helper'

RSpec.describe "ambassadors/show", type: :view do
  before(:each) do
    @ambassador = assign(:ambassador, create(:ambassador))
  end

  it "renders attributes in <p>" do
    render
  end
end
