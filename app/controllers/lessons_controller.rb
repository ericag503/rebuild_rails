class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def new
    @lessons = Lesson.all
    @lesson = Lesson.new
    render('lessons/new.html.erb')
  end

  def create
    @lessons = Lesson.all
    @lesson = Lesson.new(params[:lesson])
    if @lesson.save
      render('lessons/index.html.erb')
    else
      render('lessons/new.html.erb')
    end
  end
end
