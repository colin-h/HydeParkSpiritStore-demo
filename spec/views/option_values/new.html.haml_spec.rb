require 'spec_helper'

describe "option_values/new" do
  before(:each) do
    assign(:option_value, stub_model(OptionValue,
      :name => "MyString",
      :active => false
    ).as_new_record)
  end

  it "renders new option_value form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", option_values_path, "post" do
      assert_select "input#option_value_name[name=?]", "option_value[name]"
      assert_select "input#option_value_active[name=?]", "option_value[active]"
    end
  end
end
