require 'spec_helper'

describe "variant_properties/new" do
  before(:each) do
    assign(:variant_property, stub_model(VariantProperty,
      :primary => false
    ).as_new_record)
  end

  it "renders new variant_property form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", variant_properties_path, "post" do
      assert_select "input#variant_property_primary[name=?]", "variant_property[primary]"
    end
  end
end
