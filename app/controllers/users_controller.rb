class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    #users#showで@userに紐づいているprototypesがなかったからエラーになっていた
    @prototypes = @user.prototypes
  end
end