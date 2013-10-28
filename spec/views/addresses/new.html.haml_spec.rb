require 'spec_helper'

describe "addresses/new" do
  before(:each) do
    assign(:address, stub_model(Address,
      :first_name => "MyString",
      :last_name => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip_code => "MyString",
      :phone_number => "MyString",
      :alternative_phone => "MyString",
      :default => false
    ).as_new_record)
  end

  it "renders new address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", addresses_path, "post" do
      assert_select "input#address_first_name[name=?]", "address[first_name]"
      assert_select "input#address_last_name[name=?]", "address[last_name]"
      assert_select "input#address_address[name=?]", "address[address]"
      assert_select "input#address_city[name=?]", "address[city]"
      assert_select "input#address_state[name=?]", "address[state]"
      assert_select "input#address_zip_code[name=?]", "address[zip_code]"
      assert_select "input#address_phone_number[name=?]", "address[phone_number]"
      assert_select "input#address_alternative_phone[name=?]", "address[alternative_phone]"
      assert_select "input#address_default[name=?]", "address[default]"
    end
  end
end
