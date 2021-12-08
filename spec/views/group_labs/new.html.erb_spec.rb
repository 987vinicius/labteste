require 'rails_helper'

RSpec.describe "group_labs/new", type: :view do
  before(:each) do
    assign(:group_lab, GroupLab.new())
  end

  it "renders new group_lab form" do
    render

    assert_select "form[action=?][method=?]", group_labs_path, "post" do
    end
  end
end
