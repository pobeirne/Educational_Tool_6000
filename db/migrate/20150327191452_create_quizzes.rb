class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :title
      t.text :description
      t.boolean :is_attempted
      t.boolean :is_complete
      t.string :num_of_questions 
      t.datetime :start_at , null: true  
      t.datetime :end_at , null: true 
      t.references :user, index: true
      t.references :level, index: true
      t.timestamps
    end
  end
end
