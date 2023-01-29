Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

get("/", {:controller => "forex", :action => "home_page"})
get("/forex", {:controller => "forex", :action => "list_pairs"})
get("/forex/:symbol_from", {:controller => "forex", :action => "pairwise"})
get("/forex/:symbol_from/:symbol_to", {:controller => "forex", :action => "conversion"})

end
