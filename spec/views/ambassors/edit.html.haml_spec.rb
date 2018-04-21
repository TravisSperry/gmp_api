require 'rails_helper'

RSpec.describe "ambassadors/edit", type: :view do
  before(:each) do
    @ambassador = assign(:ambassador, create(:ambassador))
  end

  it "renders the edit ambassador form" do
    render

    assert_select "form[action=?][method=?]", ambassador_path(@ambassador), "post" do
    end
  end
end
