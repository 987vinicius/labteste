require 'rails_helper'

RSpec.describe "group_labs/edit", type: :view do
  before(:each) do
    @group_lab = assign(:group_lab, GroupLab.create!())
  end

  it "renders the edit group_lab form" do
    render

    assert_select "form[action=?][method=?]", group_lab_path(@group_lab), "post" do
    end
  end
end
