class RequestsController < ApplicationController
  def create
  	@request = Request.new(request_params)

    respond_to do |format|
      if @request.save
        format.html { redirect_to entities_url, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_request }
      end
    end
  end

  private

   def request_params
    params.require(:request).permit(:name,:email, :website)
   end
end
