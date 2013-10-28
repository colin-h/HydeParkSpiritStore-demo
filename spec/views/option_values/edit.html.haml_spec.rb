require 'spec_helper'

describe "option_values/edit" do
  before(:each) do
    @option_value = assign(:option_value, stub_model(OptionValue,
      :name => "MyString",
      :active => false
    ))
  end

  it "renders the edit option_value form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", option_value_path(@option_value), "post" do
      assert_select "input#option_value_name[name=?]", "option_value[name]"
      assert_select "input#option_value_active[name=?]", "option_value[active]"
    end
  end
end
