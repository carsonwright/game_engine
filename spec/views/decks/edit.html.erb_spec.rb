require 'rails_helper'

RSpec.describe "decks/edit", type: :view do
  before(:each) do
    @deck = assign(:deck, Deck.create!(
      :name => "MyString",
      :theme_id => 1,
      :user => nil
    ))
  end

  it "renders the edit deck form" do
    render

    assert_select "form[action=?][method=?]", deck_path(@deck), "post" do

      assert_select "input#deck_name[name=?]", "deck[name]"

      assert_select "input#deck_theme_id[name=?]", "deck[theme_id]"

      assert_select "input#deck_user_id[name=?]", "deck[user_id]"
    end
  end
end
