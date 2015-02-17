require 'rails_helper'

RSpec.describe "themes/index", type: :view do
  before(:each) do
    assign(:themes, [
      Theme.create!(
        :name => "Name",
        :user => nil,
        :styling => ""
      ),
      Theme.create!(
        :name => "Name",
        :user => nil,
        :styling => ""
      )
    ])
  end

  it "renders a list of themes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
