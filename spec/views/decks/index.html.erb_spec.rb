require 'rails_helper'

RSpec.describe "decks/index", type: :view do
  before(:each) do
    assign(:decks, [
      Deck.create!(
        :name => "Name",
        :theme_id => 1,
        :user => nil
      ),
      Deck.create!(
        :name => "Name",
        :theme_id => 1,
        :user => nil
      )
    ])
  end

  it "renders a list of decks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
