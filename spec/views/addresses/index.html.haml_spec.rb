require 'spec_helper'

describe "addresses/index" do
  before(:each) do
    assign(:addresses, [
      stub_model(Address,
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip_code => "Zip Code",
        :phone_number => "Phone Number",
        :alternative_phone => "Alternative Phone",
        :default => false
      ),
      stub_model(Address,
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip_code => "Zip Code",
        :phone_number => "Phone Number",
        :alternative_phone => "Alternative Phone",
        :default => false
      )
    ])
  end

  it "renders a list of addresses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip Code".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Alternative Phone".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
