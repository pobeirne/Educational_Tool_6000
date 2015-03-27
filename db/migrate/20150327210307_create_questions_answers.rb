class CreateQuestionsAnswers < ActiveRecord::Migration
  def change
    create_table :questions_answers do |t|
      t.belongs_to :question, index: true
      t.belongs_to :answer, index: true
      t.timestamps
    end
  end
end
