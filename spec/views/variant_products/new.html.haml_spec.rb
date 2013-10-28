require 'spec_helper'

describe "variant_products/new" do
  before(:each) do
    assign(:variant_product, stub_model(VariantProduct).as_new_record)
  end

  it "renders new variant_product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", variant_products_path, "post" do
    end
  end
end
