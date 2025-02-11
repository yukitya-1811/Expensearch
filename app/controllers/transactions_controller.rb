class TransactionsController < ApplicationController
    def new
        @current_user = current_user
        @transaction = Transaction.new
    end

    def create
        @transaction = Transaction.new(transaction_params)
        @transaction.user_id = current_user.id
        @transaction.status = :pending

        if @transaction.save
            flash[:notice] = "Transaction created successfully!"
        else
            flash[:alert] = "Failed to create transaction!"
        end
        redirect_to root_path
    end


    private
    def transaction_params
        params.require(:transaction).permit(:amount, :transaction_type, :target_id, :description)
    end
end