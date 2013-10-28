require 'spec_helper'

describe "variant_properties/edit" do
  before(:each) do
    @variant_property = assign(:variant_property, stub_model(VariantProperty,
      :primary => false
    ))
  end

  it "renders the edit variant_property form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", variant_property_path(@variant_property), "post" do
      assert_select "input#variant_property_primary[name=?]", "variant_property[primary]"
    end
  end
end
