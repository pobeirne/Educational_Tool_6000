class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :user_name
      t.text :description
      t.string :avatar_url
      t.string :college_name
      t.string :course_name
      t.integer :year
      t.references :level, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
