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

    def index
        @transactions = Transaction.where(user_id: current_user.id).order(:created_at)
    end

    # Only for AJAX
    def search_transactions
        transactions = Transaction.search(params[:q])
        respond_to do |format|
            format.json { render json: transactions.map { |t| { id: t.id, description: t.description, user: User.find_by(id: t.user_id).name } } }
        end
    end

    private
    def transaction_params
        params.require(:transaction).permit(:amount, :transaction_type, :target_id, :description)
    end
end