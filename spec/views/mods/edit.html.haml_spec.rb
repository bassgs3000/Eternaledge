require 'spec_helper'

describe "mods/edit" do
  before(:each) do
    @mod = assign(:mod, stub_model(Mod,
      :name => "MyString"
    ))
  end

  it "renders the edit mod form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mods_path(@mod), :method => "post" do
      assert_select "input#mod_name", :name => "mod[name]"
    end
  end
end
