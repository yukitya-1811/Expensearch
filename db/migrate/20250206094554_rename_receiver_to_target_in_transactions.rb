class RenameReceiverToTargetInTransactions < ActiveRecord::Migration[7.2]
  def change
    rename_column :transactions, :receiver_id, :target_id
  end
end
