require 'spec_helper'

describe "products/new" do
  before(:each) do
    assign(:product, stub_model(Product,
      :name => "MyString",
      :description => "MyText",
      :permalink => "MyString",
      :active => false
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", products_path, "post" do
      assert_select "input#product_name[name=?]", "product[name]"
      assert_select "textarea#product_description[name=?]", "product[description]"
      assert_select "input#product_permalink[name=?]", "product[permalink]"
      assert_select "input#product_active[name=?]", "product[active]"
    end
  end
end
