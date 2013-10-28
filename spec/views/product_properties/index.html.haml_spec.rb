require 'spec_helper'

describe "product_properties/index" do
  before(:each) do
    assign(:product_properties, [
      stub_model(ProductProperty,
        :primary => false
      ),
      stub_model(ProductProperty,
        :primary => false
      )
    ])
  end

  it "renders a list of product_properties" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
