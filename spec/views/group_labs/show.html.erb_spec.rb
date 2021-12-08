require 'rails_helper'

RSpec.describe "group_labs/show", type: :view do
  before(:each) do
    @group_lab = assign(:group_lab, GroupLab.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
