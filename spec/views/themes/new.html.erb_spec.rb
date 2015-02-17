require 'rails_helper'

RSpec.describe "themes/new", type: :view do
  before(:each) do
    assign(:theme, Theme.new(
      :name => "MyString",
      :user => nil,
      :styling => ""
    ))
  end

  it "renders new theme form" do
    render

    assert_select "form[action=?][method=?]", themes_path, "post" do

      assert_select "input#theme_name[name=?]", "theme[name]"

      assert_select "input#theme_user_id[name=?]", "theme[user_id]"

      assert_select "input#theme_styling[name=?]", "theme[styling]"
    end
  end
end
