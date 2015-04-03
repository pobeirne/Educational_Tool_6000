class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question
      t.text :hint , null: true
      t.string :image , null: true
      t.references :category, index: true
      t.references :level, index: true
      t.timestamps
    end
  end
end
