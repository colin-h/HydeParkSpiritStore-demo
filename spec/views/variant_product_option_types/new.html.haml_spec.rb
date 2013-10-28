require 'spec_helper'

describe "variant_product_option_types/new" do
  before(:each) do
    assign(:variant_product_option_type, stub_model(VariantProductOptionType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new variant_product_option_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", variant_product_option_types_path, "post" do
      assert_select "input#variant_product_option_type_name[name=?]", "variant_product_option_type[name]"
    end
  end
end
