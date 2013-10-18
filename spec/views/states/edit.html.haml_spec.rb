require 'spec_helper'

describe "states/edit" do
  before(:each) do
    @state = assign(:state, stub_model(State,
      :name => "MyText",
      :description => "MyText",
      :type => 1
    ))
  end

  it "renders the edit state form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", state_path(@state), "post" do
      assert_select "textarea#state_name[name=?]", "state[name]"
      assert_select "textarea#state_description[name=?]", "state[description]"
      assert_select "input#state_type[name=?]", "state[type]"
    end
  end
end
