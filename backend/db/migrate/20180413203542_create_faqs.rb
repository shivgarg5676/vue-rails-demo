class CreateFaqs < ActiveRecord::Migration[5.1]
  def change
    create_table :faqs do |t|
      t.string :question
      t.text :answer
      t.belongs_to :course_page
      t.integer :seq_number
      t.timestamps
    end
  end
end
