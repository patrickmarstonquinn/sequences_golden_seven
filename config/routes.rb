Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get("/", :controller => 'sequences', :action => 'guesses')
get("/guesses", :controller => 'sequences', :action => 'guesses')
get("guesses/new", :controller => 'sequences', :action => "new_form" )
get("guesses/create_guess", :controller => 'sequences', :action => "create_row" )
get("/guesses/:the_row_id", :controller => 'sequences', :action => 'show')

# get("/guesses/:old_row_id/edit", :controller => 'sequences', :action => 'edit_row'))

get("/guesses/get_form", :controller => 'sequences', :action => 'edit_row')



end
