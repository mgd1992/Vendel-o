class AddTitleAndDescriptionAndPriceToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :description, :text
    add_column :products, :price, :integer
  end
end
