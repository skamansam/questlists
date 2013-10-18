require 'spec_helper'

describe "list_items/edit" do
  before(:each) do
    @list_item = assign(:list_item, stub_model(ListItem,
      :name => "MyString",
      :description => "MyText",
      :icon => "MyString",
      :created_by => 1,
      :list_id => 1
    ))
  end

  it "renders the edit list_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", list_item_path(@list_item), "post" do
      assert_select "input#list_item_name[name=?]", "list_item[name]"
      assert_select "textarea#list_item_description[name=?]", "list_item[description]"
      assert_select "input#list_item_icon[name=?]", "list_item[icon]"
      assert_select "input#list_item_created_by[name=?]", "list_item[created_by]"
      assert_select "input#list_item_list_id[name=?]", "list_item[list_id]"
    end
  end
end
