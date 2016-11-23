class DefaultController < ApplicationController
  def index
    @entities = Entity.where('name is not null').limit(3).order('RANDOM()')
  end

  def apply
    @request = Request.new
  end
end
