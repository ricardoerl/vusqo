class Entities::InvitationsController < Devise::InvitationsController
  def update
  	#p params[:entity][:invitation_token]
  	#p '----------------'
#    session[:invitation_token] = params[:entity][:invitation_token]
#    p session[:invitation_token]
    super
  end
end