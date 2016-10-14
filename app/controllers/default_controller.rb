class DefaultController < ApplicationController
  def index
  end

  def apply
  	@request = Request.new
  end
end
