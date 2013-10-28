require 'spec_helper'

describe "simple_products/show" do
  before(:each) do
    @simple_product = assign(:simple_product, stub_model(SimpleProduct,
      :sku => "Sku",
      :price => "9.99",
      :cost => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sku/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
  end
end
