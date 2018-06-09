class TutorialsController < ApplicationController
  # before_action :set_tutorial, only: [:show, :edit, :update, :destroy]



  # GET /tutorials
  # GET /tutorials.json
  def index
 @tutorials = Tutorial.where(format: "video")
 @videos = Video.all
#  render json: @videos
    # @tutorials = Tutorial.all

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
   @questions = @tutorial.questions.order('questions.time ASC')
    # render json: @tutorial
    # render plain: "show tutorial route"
  end

  # GET /tutorials/new
  def new
    @tutorial = Tutorial.new
    # if(params[:title])
    #   @tutorial.title = params[:title]
    # end
  end

  # GET /tutorials/1/edit
  def edit
  end

  # POST /tutorials
  # POST /tutorials.json
  def create
    # render json: params
    @tutorial = Tutorial.new(tutorial_params)
    @tutorial = Tutorial.new(
      user_id: current_user.id,
      title: params[:tutorial][:title],
      author: params[:tutorial][:author],
      url: params[:tutorial][:url],
      format: "video"
    )
    if(@tutorial.save && @tutorial.format == "video")
      @duration_obj = params[:duration]
      @duration_temp = 5
      @video = Video.new(
        tutorial_id: @tutorial.id,
        channel: params[:video][:channel],
        playlist: params[:video][:playlist],
        duration: @duration_temp,
      )
      if(@video.save)
        redirect_to "/tutorial/#{@tutorial.id}"
      end
    end

  
    p 'PARAMS'
    # render json: @tutorial
    # {
    #   "authenticity_token": "XkIaWzZ14FyOCbBQJ3jzF2XVh4YSGO9z4EXa5SGz1g0jbeofAEkhAofdHW2pWxEcd12QlEcP/lukELmKOONdPQ==",
    #   "tutorial": {
    #   "title": "higher order functions, part 1",
    #   "author": "mpj",
    #   "url": "https://www.youtube.com/embed/BMUiFMZr7vk"
    #   },
    #   "chapter": {
    #   "book_title": "",
    #   "book_edition": "",
    #   "start_page": "",
    #   "end_page": ""
    #   },
    #   "video": {
    #   "channel": "fun fun functions",
    #   "playlist": "higher order functions",
    #   "duration": {
    #   "hour": "0",
    #   "minute": "0",
    #   "second": "0"
    #   }
    #   },
    #   "controller": "tutorials",
    #   "action": "create"
    #   }





  end

  # PATCH/PUT /tutorials/1
  # PATCH/PUT /tutorials/1.json
  def update

    @tutorial = Tutorial.find(params[:tutorial_id])
    @tutorial.update_attributes(tutorial_params)
    @video = @tutorial.video
    @video.update_attributes(video_params)

    redirect_to "/tutorials/#{params[:tutorial_id]}"
    # render json: {
    #   tutorial: @tutorial,
    #   video: @video
    # }

    # render json: params

  #   <form action="/tutorials/<%=@tutorial.id%>" accept-charset="UTF-8" method="post">
  #   <input name="utf8" type="hidden" value="&#x2713;" />
  #   <input type="hidden" name="_method" value="patch" />
  #   <%= hidden_field_tag :authenticity_token, form_authenticity_token -%>
  #   title:
  #     <input type="text" name="title" value="<%=@tutorial.title%>" /><br>
  #   author:
  #     <input type="text" name="author" value="<%=@tutorial.author%>"/><br>
  #   url:
  #     <input type="text" name="tutorial[url]" /><br>
  #   playlist:
  #     <input type="text" name="playlist" /><br>
  #     <input hidden type="text" name="tutorial[format]" value="chapter"/>
    
  #     <input type="submit" name="commit" value="Edit Tutorial" />
  # </form>






    # respond_to do |format|
    #   if @tutorial.update(tutorial_params)
    #     format.html { redirect_to @tutorial, notice: 'Tutorial was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @tutorial }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @tutorial.errors, status: :unprocessable_entity }
    #   end
    # end

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
    # def set_tutorial
    #   if(params[:tutorial_id] != nil)
    #     @tutorial = Tutorial.find(params[:tutorial_id])
    #   end
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
    # end



    # Never trust parameters from the scary internet, only allow the white list through.
    def tutorial_params
      params.require(:tutorial).permit(:title, :author, :url, :format, :user_id)
    end
    def video_params
      params.require(:video).permit(:playlist, :channel, :duration)
    end
end
