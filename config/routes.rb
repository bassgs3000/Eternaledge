Eternaledge::Application.routes.draw do
  resources :mods, path: "/minecraft/mods"

  match "minecraft" => "minecraft#index"
  match "home" => "home#index"

  root to: "home#index"
end
