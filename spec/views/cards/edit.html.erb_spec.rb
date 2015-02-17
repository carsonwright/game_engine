require 'rails_helper'

RSpec.describe "cards/edit", type: :view do
  before(:each) do
    @card = assign(:card, Card.create!(
      :name => "MyString",
      :content => "",
      :deck => nil,
      :user => nil
    ))
  end

  it "renders the edit card form" do
    render

    assert_select "form[action=?][method=?]", card_path(@card), "post" do

      assert_select "input#card_name[name=?]", "card[name]"

      assert_select "input#card_content[name=?]", "card[content]"

      assert_select "input#card_deck_id[name=?]", "card[deck_id]"

      assert_select "input#card_user_id[name=?]", "card[user_id]"
    end
  end
end
