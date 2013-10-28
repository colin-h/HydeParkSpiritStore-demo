require 'spec_helper'

describe "variants/new" do
  before(:each) do
    assign(:variant, stub_model(Variant,
      :sku => "MyString",
      :price => "9.99",
      :cost => "9.99",
      :master => false,
      :count_pending_to_customer => 1
    ).as_new_record)
  end

  it "renders new variant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", variants_path, "post" do
      assert_select "input#variant_sku[name=?]", "variant[sku]"
      assert_select "input#variant_price[name=?]", "variant[price]"
      assert_select "input#variant_cost[name=?]", "variant[cost]"
      assert_select "input#variant_master[name=?]", "variant[master]"
      assert_select "input#variant_count_pending_to_customer[name=?]", "variant[count_pending_to_customer]"
    end
  end
end
