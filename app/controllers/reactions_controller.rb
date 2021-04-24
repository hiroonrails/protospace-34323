class ReactionsController < ApplicationController
  def create
    @comment = Reaction.new(comment_parameter)
    if @comment.save
      redirect_to prototype_path(@comment.prototype)
    else
      @prototype = Prototype.find(params[:prototype_id])
      @comments = @prototype.reactions.includes(:user)
      render "prototypes/show"
    end
  end

  private
  def comment_parameter
    params.require(:reaction).permit(:comment).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end