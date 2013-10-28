require 'spec_helper'

describe "product_properties/edit" do
  before(:each) do
    @product_property = assign(:product_property, stub_model(ProductProperty,
      :primary => false
    ))
  end

  it "renders the edit product_property form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", product_property_path(@product_property), "post" do
      assert_select "input#product_property_primary[name=?]", "product_property[primary]"
    end
  end
end
