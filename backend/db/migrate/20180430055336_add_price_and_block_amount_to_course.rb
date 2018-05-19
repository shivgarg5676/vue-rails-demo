class AddPriceAndBlockAmountToCourse < ActiveRecord::Migration[5.1]
  def change
    add_column :course_pages, :price, :integer
    add_column :course_pages, :block_price, :integer
  end
end
