require 'rails_helper'

RSpec.describe "decks/new", type: :view do
  before(:each) do
    assign(:deck, Deck.new(
      :name => "MyString",
      :theme_id => 1,
      :user => nil
    ))
  end

  it "renders new deck form" do
    render

    assert_select "form[action=?][method=?]", decks_path, "post" do

      assert_select "input#deck_name[name=?]", "deck[name]"

      assert_select "input#deck_theme_id[name=?]", "deck[theme_id]"

      assert_select "input#deck_user_id[name=?]", "deck[user_id]"
    end
  end
end
