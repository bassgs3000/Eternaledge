Eternaledge::Application.routes.draw do
  resources :mods, path: "/minecraft/mods"


  match "minecraft" => "minecraft#index"
  root to: "minecraft#index"

end
