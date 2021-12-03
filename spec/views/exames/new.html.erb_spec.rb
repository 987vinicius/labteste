require 'rails_helper'

RSpec.describe "exames/new", type: :view do
  before(:each) do
    assign(:exame, Exame.new(
      :nome => "MyString",
      :tipo => 1,
      :status => false
    ))
  end

  it "renders new exame form" do
    render

    assert_select "form[action=?][method=?]", exames_path, "post" do

      assert_select "input[name=?]", "exame[nome]"

      assert_select "input[name=?]", "exame[tipo]"

      assert_select "input[name=?]", "exame[status]"
    end
  end
end
