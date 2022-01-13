class CreatePizzaTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :pizza_types do |t|
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
