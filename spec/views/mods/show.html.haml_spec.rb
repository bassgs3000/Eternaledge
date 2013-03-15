require 'spec_helper'

describe "mods/show" do
  before(:each) do
    @mod = assign(:mod, stub_model(Mod,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
