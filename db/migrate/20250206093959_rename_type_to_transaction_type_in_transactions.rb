class RenameTypeToTransactionTypeInTransactions < ActiveRecord::Migration[7.2]
  def change
    rename_column :transactions, :type, :transaction_type
  end
end
