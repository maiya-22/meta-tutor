class TutorialsController < ApplicationController
  before_action :set_tutorial, only: [:show, :edit, :update, :destroy]



  # GET /tutorials
  # GET /tutorials.json
  def index
    # gon.authenticity_token = form_authenticity_token
    @tutorials = Tutorial.all
  #   render locals: {
  #   gon: gon
  # }
    # @tutorials = Tutorial.paginate(:page =>params[:page], :per_page => 2)
  end

  def search 
    @tutorial = Tutorial.where(title: params[:title])[0]
    if(@tutorial != nil)
      if(@tutorial.format == "video")
        @questions = Question.where(tutorial_id: @tutorial.id).order(:time)
      elsif (@tutorial.format == "chapter")
        @questions = Question.where(tutorial_id: @tutorial.id).order(:page)
      end
      render 'show'
    else
      redirect_to action: 'new', title: params[:title]
    end
  end

  # GET /tutorials/1
  # GET /tutorials/1.json
  def show
    # if(params[:id] == "search")
    #   render plain: "OK"
    # elsif(@tutorial.format == "video")
    #   # @questions = Question.where(tutorial_id: @tutorial.id).order(:time)
    # elsif (@tutorial.format == "chapter")
    #   # @questions = Question.where(tutorial_id: @tutorial.id).order(:page)
    # end
    @tutorial = Tutorial.find(params[:tutorial_id])
    # render json: @tutorial
    render plain: "show tutorial route"
  end

  # GET /tutorials/new
  def new
    @tutorial = Tutorial.new
    if(params[:title])
      @tutorial.title = params[:title]
    end
  end

  # GET /tutorials/1/edit
  def edit
  end

  # POST /tutorials
  # POST /tutorials.json
  def create
    # @tutorial = Tutorial.new(tutorial_params)

    # respond_to do |format|
    #   if @tutorial.save
    #     format.html { redirect_to @tutorial, notice: 'Tutorial was successfully created.' }
    #     format.json { render :show, status: :created, location: @tutorial }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @tutorial.errors, status: :unprocessable_entity }
    #   end
    # end
    p 'PARAMS'
    render json: params
  end

  # PATCH/PUT /tutorials/1
  # PATCH/PUT /tutorials/1.json
  def update
    respond_to do |format|
      if @tutorial.update(tutorial_params)
        format.html { redirect_to @tutorial, notice: 'Tutorial was successfully updated.' }
        format.json { render :show, status: :ok, location: @tutorial }
      else
        format.html { render :edit }
        format.json { render json: @tutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutorials/1
  # DELETE /tutorials/1.json
  def destroy
    @tutorial.destroy
    respond_to do |format|
      format.html { redirect_to tutorials_url, notice: 'Tutorial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutorial
      if(params[:tutorial_id] != nil)
        @tutorial = Tutorial.find(params[:tutorial_id])
      end
      # p "params:"
      # p params
      # # if someone is using the search by title form:
      # if(params[:title] != nil)
      #   @tutorial = Tutorial.where(title:params[:title])[0]
      #   if(@tutorial == nil)
      #     render plain: "fix the search functionality, for when the title is not available"
      #   end
      # else
      #   @tutorial = Tutorial.find(params[:id])
      # end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tutorial_params
      params.require(:tutorial).permit(:title, :author, :url, :format, :user_id)
    end
end
