require 'spec_helper'

describe "options/edit" do
  before(:each) do
    @option = assign(:option, stub_model(Option,
      :name => "MyString",
      :active => false
    ))
  end

  it "renders the edit option form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", option_path(@option), "post" do
      assert_select "input#option_name[name=?]", "option[name]"
      assert_select "input#option_active[name=?]", "option[active]"
    end
  end
end
