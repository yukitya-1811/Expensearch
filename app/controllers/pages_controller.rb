class PagesController < ApplicationController
    before_action :authenticate_user!

    def home
        @user = current_user.name
    end

    def test
        @user = current_user
    end

    def print
        puts "Hi"
        redirect_to root_path, notice: "Successfully logged in!"
    end

end