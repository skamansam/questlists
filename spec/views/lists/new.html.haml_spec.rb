require 'spec_helper'

describe "lists/new" do
  before(:each) do
    assign(:list, stub_model(List,
      :name => "MyString",
      :description => "MyText",
      :icon => "MyString",
      :created_by => 1
    ).as_new_record)
  end

  it "renders new list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lists_path, "post" do
      assert_select "input#list_name[name=?]", "list[name]"
      assert_select "textarea#list_description[name=?]", "list[description]"
      assert_select "input#list_icon[name=?]", "list[icon]"
      assert_select "input#list_created_by[name=?]", "list[created_by]"
    end
  end
end
