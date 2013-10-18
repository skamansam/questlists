require 'spec_helper'

describe "states/new" do
  before(:each) do
    assign(:state, stub_model(State,
      :name => "MyText",
      :description => "MyText",
      :type => 1
    ).as_new_record)
  end

  it "renders new state form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", states_path, "post" do
      assert_select "textarea#state_name[name=?]", "state[name]"
      assert_select "textarea#state_description[name=?]", "state[description]"
      assert_select "input#state_type[name=?]", "state[type]"
    end
  end
end
