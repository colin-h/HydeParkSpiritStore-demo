require 'spec_helper'

describe "options/new" do
  before(:each) do
    assign(:option, stub_model(Option,
      :name => "MyString",
      :active => false
    ).as_new_record)
  end

  it "renders new option form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", options_path, "post" do
      assert_select "input#option_name[name=?]", "option[name]"
      assert_select "input#option_active[name=?]", "option[active]"
    end
  end
end
