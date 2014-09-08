class AddColumn < ActiveRecord::Migration
  def change
    add_column :lessons, :lesson_num, :integer
  end
end
