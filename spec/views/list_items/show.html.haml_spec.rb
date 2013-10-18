require 'spec_helper'

describe "list_items/show" do
  before(:each) do
    @list_item = assign(:list_item, stub_model(ListItem,
      :name => "Name",
      :description => "MyText",
      :icon => "Icon",
      :created_by => 1,
      :list_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Icon/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
