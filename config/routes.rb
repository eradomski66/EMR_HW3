Rails.application.routes.draw do
  get("/", { :controller => "things", :action => "index" })


  resources "entries"
  resources "places"

end
