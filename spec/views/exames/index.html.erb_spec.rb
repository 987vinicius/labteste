require 'rails_helper'

RSpec.describe "exames/index", type: :view do
  before(:each) do
    assign(:exames, [
      Exame.create!(
        :nome => "Nome",
        :tipo => 2,
        :status => false
      ),
      Exame.create!(
        :nome => "Nome",
        :tipo => 2,
        :status => false
      )
    ])
  end

  it "renders a list of exames" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
