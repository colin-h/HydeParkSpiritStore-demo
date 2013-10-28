require 'spec_helper'

describe "simple_products/index" do
  before(:each) do
    assign(:simple_products, [
      stub_model(SimpleProduct,
        :sku => "Sku",
        :price => "9.99",
        :cost => "9.99"
      ),
      stub_model(SimpleProduct,
        :sku => "Sku",
        :price => "9.99",
        :cost => "9.99"
      )
    ])
  end

  it "renders a list of simple_products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sku".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
