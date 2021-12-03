require 'rails_helper'

RSpec.describe "exames/edit", type: :view do
  before(:each) do
    @exame = assign(:exame, Exame.create!(
      :nome => "MyString",
      :tipo => 1,
      :status => false
    ))
  end

  it "renders the edit exame form" do
    render

    assert_select "form[action=?][method=?]", exame_path(@exame), "post" do

      assert_select "input[name=?]", "exame[nome]"

      assert_select "input[name=?]", "exame[tipo]"

      assert_select "input[name=?]", "exame[status]"
    end
  end
end
