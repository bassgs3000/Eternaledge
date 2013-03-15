require 'spec_helper'

describe "Mods" do
  describe "GET /mods" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get mods_path
      response.status.should be(200)
    end
  end
end
