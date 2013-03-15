class MinecraftController < ApplicationController
  def index
    @mods = Mod.all
  end
end
