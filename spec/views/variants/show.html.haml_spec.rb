require 'spec_helper'

describe "variants/show" do
  before(:each) do
    @variant = assign(:variant, stub_model(Variant,
      :sku => "Sku",
      :price => "9.99",
      :cost => "9.99",
      :master => false,
      :count_pending_to_customer => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sku/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/false/)
    rendered.should match(/1/)
  end
end
