class SectionsController < ApplicationController

  def index
    @sections = Section.all
    @section = Section.new
    render('sections/index.html.erb')
  end

end
