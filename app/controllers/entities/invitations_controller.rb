class Entities::InvitationsController < Devise::InvitationsController
  def edit
  	p params
    session[:invitation_token] = params[:invitation_token]
    super
  end
end