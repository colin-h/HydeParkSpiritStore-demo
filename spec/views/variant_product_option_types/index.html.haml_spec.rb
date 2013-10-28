require 'spec_helper'

describe "variant_product_option_types/index" do
  before(:each) do
    assign(:variant_product_option_types, [
      stub_model(VariantProductOptionType,
        :name => "Name"
      ),
      stub_model(VariantProductOptionType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of variant_product_option_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
