class Transaction < ApplicationRecord
  belongs_to :user

  enum :transaction_type, { :credit=>'credit', :debit=>'debit', :self_transfer=>'self_transfer' }
  enum :status, { :pending=>'pending', :successful=>'successful', :failed=>'failed' }

  validates :amount, presence: true
  validates :transaction_type, presence: true
  validates :status, presence: true

  def self.get_target_user_map(user)
    target_users = User.all.reject { |u| u.id == user.id }
    target_users.map { |user| [user.name, user.id] }
  end
end
