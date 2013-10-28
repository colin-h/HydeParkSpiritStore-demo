require 'spec_helper'

describe "product_types/edit" do
  before(:each) do
    @product_type = assign(:product_type, stub_model(ProductType,
      :name => "MyString",
      :active => false
    ))
  end

  it "renders the edit product_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", product_type_path(@product_type), "post" do
      assert_select "input#product_type_name[name=?]", "product_type[name]"
      assert_select "input#product_type_active[name=?]", "product_type[active]"
    end
  end
end
