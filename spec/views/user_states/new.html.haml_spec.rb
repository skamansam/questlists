require 'spec_helper'

describe "user_states/new" do
  before(:each) do
    assign(:user_state, stub_model(UserState,
      :state_for_type => "MyString",
      :state_for_id => 1
    ).as_new_record)
  end

  it "renders new user_state form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_states_path, "post" do
      assert_select "input#user_state_state_for_type[name=?]", "user_state[state_for_type]"
      assert_select "input#user_state_state_for_id[name=?]", "user_state[state_for_id]"
    end
  end
end
