require 'rails_helper'

RSpec.describe "cards/index", type: :view do
  before(:each) do
    assign(:cards, [
      Card.create!(
        :name => "Name",
        :content => "",
        :deck => nil,
        :user => nil
      ),
      Card.create!(
        :name => "Name",
        :content => "",
        :deck => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of cards" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
