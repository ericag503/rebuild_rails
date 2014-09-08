class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :lesson_num, :presence => true, numericality: {only_integer: true}
  validates_uniqueness_of :lesson_num
  validates :content, :presence => true

  default_scope { order(lesson_num: :asc) }

  def next
    next_lesson = Lesson.where("lesson_num > ?", self.lesson_num).first
  end

  def prev
    prev_lesson = Lesson.where("lesson_num < ?", self.lesson_num).last
  end
end

