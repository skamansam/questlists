require 'spec_helper'

describe "list_items/index" do
  before(:each) do
    assign(:list_items, [
      stub_model(ListItem,
        :name => "Name",
        :description => "MyText",
        :icon => "Icon",
        :created_by => 1,
        :list_id => 2
      ),
      stub_model(ListItem,
        :name => "Name",
        :description => "MyText",
        :icon => "Icon",
        :created_by => 1,
        :list_id => 2
      )
    ])
  end

  it "renders a list of list_items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Icon".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
