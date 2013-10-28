require 'spec_helper'

describe "variant_products/edit" do
  before(:each) do
    @variant_product = assign(:variant_product, stub_model(VariantProduct))
  end

  it "renders the edit variant_product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", variant_product_path(@variant_product), "post" do
    end
  end
end
