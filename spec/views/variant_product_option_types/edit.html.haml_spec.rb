require 'spec_helper'

describe "variant_product_option_types/edit" do
  before(:each) do
    @variant_product_option_type = assign(:variant_product_option_type, stub_model(VariantProductOptionType,
      :name => "MyString"
    ))
  end

  it "renders the edit variant_product_option_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", variant_product_option_type_path(@variant_product_option_type), "post" do
      assert_select "input#variant_product_option_type_name[name=?]", "variant_product_option_type[name]"
    end
  end
end
