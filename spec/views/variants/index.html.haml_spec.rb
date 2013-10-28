require 'spec_helper'

describe "variants/index" do
  before(:each) do
    assign(:variants, [
      stub_model(Variant,
        :sku => "Sku",
        :price => "9.99",
        :cost => "9.99",
        :master => false,
        :count_pending_to_customer => 1
      ),
      stub_model(Variant,
        :sku => "Sku",
        :price => "9.99",
        :cost => "9.99",
        :master => false,
        :count_pending_to_customer => 1
      )
    ])
  end

  it "renders a list of variants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sku".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
