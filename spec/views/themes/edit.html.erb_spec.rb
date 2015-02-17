require 'rails_helper'

RSpec.describe "themes/edit", type: :view do
  before(:each) do
    @theme = assign(:theme, Theme.create!(
      :name => "MyString",
      :user => nil,
      :styling => ""
    ))
  end

  it "renders the edit theme form" do
    render

    assert_select "form[action=?][method=?]", theme_path(@theme), "post" do

      assert_select "input#theme_name[name=?]", "theme[name]"

      assert_select "input#theme_user_id[name=?]", "theme[user_id]"

      assert_select "input#theme_styling[name=?]", "theme[styling]"
    end
  end
end
