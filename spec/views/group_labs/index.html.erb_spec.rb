require 'rails_helper'

RSpec.describe "group_labs/index", type: :view do
  before(:each) do
    assign(:group_labs, [
      GroupLab.create!(),
      GroupLab.create!()
    ])
  end

  it "renders a list of group_labs" do
    render
  end
end
