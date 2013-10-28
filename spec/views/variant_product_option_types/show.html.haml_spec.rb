require 'spec_helper'

describe "variant_product_option_types/show" do
  before(:each) do
    @variant_product_option_type = assign(:variant_product_option_type, stub_model(VariantProductOptionType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
