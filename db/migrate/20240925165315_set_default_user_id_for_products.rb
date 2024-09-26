class SetDefaultUserIdForProducts < ActiveRecord::Migration[7.1]
  def change
    # Set default user_id for products with nil user_id
    Product.where(user_id: nil).update_all(user_id: 1038477725)

    # Change user_id column to not allow null values
    change_column_null :products, :user_id, false
  end
end
