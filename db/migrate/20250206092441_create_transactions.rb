class CreateTransactions < ActiveRecord::Migration[7.2]
  def change
    create_table :transactions do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :amount
      t.string :type
      t.integer :receiver_id
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
