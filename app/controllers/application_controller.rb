class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(_resource)
    if current_entity.complete?
      entities_path
    else
      edit_entity_path(current_entity)
    end
  end

  def after_sign_out_path_for(_resource)
    new_entity_session_path
  end
end
