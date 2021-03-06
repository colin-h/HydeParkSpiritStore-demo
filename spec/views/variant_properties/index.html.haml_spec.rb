require 'spec_helper'

describe "variant_properties/index" do
  before(:each) do
    assign(:variant_properties, [
      stub_model(VariantProperty,
        :primary => false
      ),
      stub_model(VariantProperty,
        :primary => false
      )
    ])
  end

  it "renders a list of variant_properties" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
