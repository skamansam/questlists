require 'spec_helper'

describe "user_states/show" do
  before(:each) do
    @user_state = assign(:user_state, stub_model(UserState,
      :state_for_type => "State For Type",
      :state_for_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State For Type/)
    rendered.should match(/1/)
  end
end
