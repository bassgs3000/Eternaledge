require 'spec_helper'

describe "mods/index" do
  before(:each) do
    assign(:mods, [
      stub_model(Mod,
        :name => "Name"
      ),
      stub_model(Mod,
        :name => "Name"
      )
    ])
  end

  it "renders a list of mods" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
