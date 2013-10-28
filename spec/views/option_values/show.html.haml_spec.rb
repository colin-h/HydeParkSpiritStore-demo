require 'spec_helper'

describe "option_values/show" do
  before(:each) do
    @option_value = assign(:option_value, stub_model(OptionValue,
      :name => "Name",
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/false/)
  end
end
