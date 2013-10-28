require 'spec_helper'

describe "variant_properties/show" do
  before(:each) do
    @variant_property = assign(:variant_property, stub_model(VariantProperty,
      :primary => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
