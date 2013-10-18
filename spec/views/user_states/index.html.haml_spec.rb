require 'spec_helper'

describe "user_states/index" do
  before(:each) do
    assign(:user_states, [
      stub_model(UserState,
        :state_for_type => "State For Type",
        :state_for_id => 1
      ),
      stub_model(UserState,
        :state_for_type => "State For Type",
        :state_for_id => 1
      )
    ])
  end

  it "renders a list of user_states" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State For Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
