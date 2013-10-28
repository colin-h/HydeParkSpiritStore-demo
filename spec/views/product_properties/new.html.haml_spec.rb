require 'spec_helper'

describe "product_properties/new" do
  before(:each) do
    assign(:product_property, stub_model(ProductProperty,
      :primary => false
    ).as_new_record)
  end

  it "renders new product_property form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", product_properties_path, "post" do
      assert_select "input#product_property_primary[name=?]", "product_property[primary]"
    end
  end
end
