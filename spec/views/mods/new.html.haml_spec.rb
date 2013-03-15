require 'spec_helper'

describe "mods/new" do
  before(:each) do
    assign(:mod, stub_model(Mod,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new mod form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mods_path, :method => "post" do
      assert_select "input#mod_name", :name => "mod[name]"
    end
  end
end
