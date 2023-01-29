Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

get("/forex", {:controller => "forex", :action => "list_pairs"})
get("/forex/:symbol", {:controller => "forex", :action => "pairwise"})

end
