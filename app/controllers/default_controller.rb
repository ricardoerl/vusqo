class DefaultController < ApplicationController
  def index
    @entities = Entity.where('name is not null')
  end

  def apply
  	@request = Request.new
  end
end
