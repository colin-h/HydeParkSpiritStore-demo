require 'spec_helper'

describe "variant_products/index" do
  before(:each) do
    assign(:variant_products, [
      stub_model(VariantProduct),
      stub_model(VariantProduct)
    ])
  end

  it "renders a list of variant_products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
