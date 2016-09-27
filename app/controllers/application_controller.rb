class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
  	if current_entity.complete?
  	  root_url
  	else
  	  edit_entity_path(current_entity)
  	end
  end
end
