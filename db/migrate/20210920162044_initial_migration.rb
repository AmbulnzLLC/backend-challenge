class InitialMigration < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :role, null: false, default: 0
      t.string :email, default: "", null: false
      t.string :encrypted_password, default: "", null: false
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.string :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string :unconfirmed_email

      t.timestamps

      t.index :confirmation_token, unique: true
      t.index :email, unique: true
      t.index :reset_password_token, unique: true
    end

    create_table :pizza_types do |t|
      t.string :name, null: false
      t.decimal :price, null: false, default: 0, precision: 11, scale: 2

      t.timestamps

      t.index :name, unique: true
    end

    create_table :orders do |t|
      t.references :user
      t.decimal :cost, null: false, default: 0, precision: 11, scale: 2
      t.decimal :total_cost, null: false, default: 0, precision: 11, scale: 2
      t.float :discount, null: false, default: 0

      t.timestamps
    end

    create_table :order_items do |t|
      t.references :order
      t.references :pizza_type
      t.integer :quantity, null: false, default: 1

      t.timestamps

      t.index [:order_id, :pizza_type_id], unique: true
    end
  end
end
