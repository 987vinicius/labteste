require 'rails_helper'

RSpec.describe "exames/show", type: :view do
  before(:each) do
    @exame = assign(:exame, Exame.create!(
      :nome => "Nome",
      :tipo => 2,
      :status => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
  end
end
