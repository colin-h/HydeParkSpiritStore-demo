require 'spec_helper'

describe "option_values/index" do
  before(:each) do
    assign(:option_values, [
      stub_model(OptionValue,
        :name => "Name",
        :active => false
      ),
      stub_model(OptionValue,
        :name => "Name",
        :active => false
      )
    ])
  end

  it "renders a list of option_values" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
