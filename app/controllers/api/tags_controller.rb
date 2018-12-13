class Api::TagsController < ApplicationController

  def index
    @tags = Tag.all
    render "index.json.jbuilder"
  end
end
