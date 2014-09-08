require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :name }
  it { should validate_presence_of :content }
  it { should validate_presence_of :lesson_num }

  context '#next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'lesson1', :lesson_num => 1, :content => "hello"})
      next_lesson = Lesson.create({:name => 'lesson2', :lesson_num => 2, :content => "hello"})
      expect(current_lesson.next).to eq next_lesson
    end
  end
end
