class CreateCoursePages < ActiveRecord::Migration[5.1]
  def change
    create_table :course_pages do |t|
      t.string :name
      t.string :slug 
      t.string :backend_key
      t.timestamps
    end
    add_index :course_pages, [:slug, :backend_key], unique: true
  end
end

