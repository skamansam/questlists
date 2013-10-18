require 'spec_helper'

describe "states/show" do
  before(:each) do
    @state = assign(:state, stub_model(State,
      :name => "MyText",
      :description => "MyText",
      :type => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
