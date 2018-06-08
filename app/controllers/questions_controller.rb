class QuestionsController < ApplicationController
  # before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
    @tutorial = Tutorial.find(params[:tutorial_id])
    @question = Question.find(params[:question_id])
    @user = @question.user
   
    render 'question_thread'
  end

  # GET /questions/new
  def new
    @tutorial = Tutorial.find(params[:tutorial_id])
    @question = Question.new
    @question.tutorial_id = @tutorial.id
    @question.user_id = current_user.id
    @question.title = ' what is the title of your question? '
    @question.status = 'open'
    @question.content = 'please write your question from ' + @tutorial.title
    # render json: @question
  end


  # not using this route:
  # GET /questions/1/edit
  def edit
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(
      user_id: params[:user_id],
      tutorial_id: params[:tutorial_id],
      time: params[:time],
      title: params[:title],
      content: params[:content],
      status: "open"
    )

    if(@question.save)
      redirect_to "/tutorials/#{params[:tutorial_id]}/questions/#{@question.id}"
    end

    # render json: @question
    # redirect_to "/tutorials/#{params[:tutorial_id]}"
    
    # respond_to do |format|
    #   if @question.save
    #     format.html { redirect_to @question, notice: 'Question was successfully created.' }
    #     format.json { render :show, status: :created, location: @question }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @question.errors, status: :unprocessable_entity }
    #   end
    # end


#     <form action="/question" method="post">
#     <%= hidden_field_tag :authenticity_token, form_authenticity_token -%>
#     <input hidden name="tutorial_id" value="<%=@tutorial.id%>"/>
#     <input hidden name="status" value="open"></input>

#     title:
#     <input name="title"/>
#     content:
#     <input name="content" placehodler="ask your question ..."></input>
#     time:
#     <input  name="time" placeholer="enter the time-stamp of your question"></input>
#     <button type="submit">submit question</button>
# </form>
# <button data-show="comment-<%=%>" class="click-to-show" hidden>cancel</button>




  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    @question = Question.find(params[:question_id])
    @question.update_attributes(question_params)
    redirect_to "/tutorials/#{@question.tutorial.id}/questions/#{@question.id}"
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question = Question.find(params[:question_id])
    # @question.destroy
    # @question.destroy
    # render json: @question

    redirect_to "/tutorials/#{@question.tutorial.id}"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:title, :content, :status, :level, :page, :time, :user_id, :tutorial_id)
    end
end
