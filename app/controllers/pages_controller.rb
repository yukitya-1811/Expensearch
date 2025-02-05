class PagesController < ApplicationController
    before_action :authenticate_user!

    def home
        @user = "Ady"
    end

    def test
        @user = current_user
    end

    def print
        puts "Hi"
    end

end