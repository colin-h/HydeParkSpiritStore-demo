require 'spec_helper'

describe "addresses/show" do
  before(:each) do
    @address = assign(:address, stub_model(Address,
      :first_name => "First Name",
      :last_name => "Last Name",
      :address => "Address",
      :city => "City",
      :state => "State",
      :zip_code => "Zip Code",
      :phone_number => "Phone Number",
      :alternative_phone => "Alternative Phone",
      :default => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Address/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Zip Code/)
    rendered.should match(/Phone Number/)
    rendered.should match(/Alternative Phone/)
    rendered.should match(/false/)
  end
end
