require 'spec_helper'

describe "simple_products/new" do
  before(:each) do
    assign(:simple_product, stub_model(SimpleProduct,
      :sku => "MyString",
      :price => "9.99",
      :cost => "9.99"
    ).as_new_record)
  end

  it "renders new simple_product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", simple_products_path, "post" do
      assert_select "input#simple_product_sku[name=?]", "simple_product[sku]"
      assert_select "input#simple_product_price[name=?]", "simple_product[price]"
      assert_select "input#simple_product_cost[name=?]", "simple_product[cost]"
    end
  end
end
