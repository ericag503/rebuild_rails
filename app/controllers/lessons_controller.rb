class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all.order(:lesson_num)
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

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end

  def edit
    @lessons = Lesson.all
    @lesson = Lesson.find(params[:id])
    render('lessons/edit.html.erb')
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(:name => params[:name],
                      :content => params[:content])
      render('lessons/show.html.erb')
    else
      render('lessons/edit.html.erb')
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    render('lessons/destroy.html.erb')
  end
end
