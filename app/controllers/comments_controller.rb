class CommentsController < ApplicationController
  # before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    if(params[:category] == "question")
      # render plain: "question"
      Comment.create(
        content: params[:content],
        question_id: params[:question_id],
        user_id: params[:user_id]
      )
    elsif(params[:category] == "answer")
      # render plain: "answer"
      Comment.create(
        content: params[:content],
        answer_id: params[:answer_id],
        user_id: params[:user_id]
      )
    end
    # render json: params
   redirect_to "/tutorials/#{params[:tutorial_id]}/questions/#{params[:question_id]}"
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  # "/questions/:question_id/comment" to: 'comments#update'
  # "/questions/:question_id/comment/:answer_id/" to: 'comments#update'
  def update
    render json: params
    # respond_to do |format|
    #   if @comment.update(comment_params)
    #     format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @comment }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @comment.errors, status: :unprocessable_entity }
    #   end
    # end
    # redirect to question of the answer, or question of the comment.
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:comment_id])
    @comment.destroy
    # @comment.destroy
    # respond_to do |format|
    #   format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
    redirect_to "/tutorials/#{params[:tutorial_id]}/questions/#{params[:question_id]}"
    # render json: params
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:content, :question_id, :answer_id)
    end
end
