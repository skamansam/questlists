require 'spec_helper'

describe "images/edit" do
  before(:each) do
    @image = assign(:image, stub_model(Image,
      :created_by => 1,
      :image => "MyString",
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", image_path(@image), "post" do
      assert_select "input#image_created_by[name=?]", "image[created_by]"
      assert_select "input#image_image[name=?]", "image[image]"
      assert_select "input#image_name[name=?]", "image[name]"
      assert_select "textarea#image_description[name=?]", "image[description]"
    end
  end
end
