class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :num_correct
      t.integer :num_incorrect
      t.integer :grade
      t.string :duration
      t.references :user, index: true
      t.references :quiz, index: true
      t.timestamps
    end
  end
end
