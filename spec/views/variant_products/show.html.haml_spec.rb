require 'spec_helper'

describe "variant_products/show" do
  before(:each) do
    @variant_product = assign(:variant_product, stub_model(VariantProduct))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
