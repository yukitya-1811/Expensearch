class Transaction < ApplicationRecord
  belongs_to :user

  enum :transaction_type, { :credit=>'credit', :debit=>'debit', :self_transfer=>'self_transfer' }
  enum :status, { :pending=>'pending', :successful=>'successful', :failed=>'failed' }

  validates :amount, presence: true
  validates :transaction_type, presence: true
  validates :status, presence: true
end
