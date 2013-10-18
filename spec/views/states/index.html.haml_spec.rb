require 'spec_helper'

describe "states/index" do
  before(:each) do
    assign(:states, [
      stub_model(State,
        :name => "MyText",
        :description => "MyText",
        :type => 1
      ),
      stub_model(State,
        :name => "MyText",
        :description => "MyText",
        :type => 1
      )
    ])
  end

  it "renders a list of states" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
