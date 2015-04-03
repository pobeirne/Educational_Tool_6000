class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :user_name ,              null: false, default: ""
      t.text :description,               null: false, default: ""
      t.string :avatar_url,              null: false, default: "https://www.science.unsw.edu.au/files/news/527C868C9284958A22F9E4D448BDDA12.JPG"
      t.string :college_name,            null: false, default: ""
      t.string :course_name,             null: false, default: ""
      t.integer :year,                   null: false, default: 1
      t.references :level,               index: true, default: 1
      t.references :user,                index: true

      t.timestamps
    end
  end
end
