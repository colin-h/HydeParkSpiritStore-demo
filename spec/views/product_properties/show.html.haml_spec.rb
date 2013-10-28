require 'spec_helper'

describe "product_properties/show" do
  before(:each) do
    @product_property = assign(:product_property, stub_model(ProductProperty,
      :primary => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
