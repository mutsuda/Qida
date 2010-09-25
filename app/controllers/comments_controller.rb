class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.xml
  def index
    @comments = Comment.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @comments }
    end
  end



  def create
    @comment = Comment.create!(params[:comment])
    flash[:notice] = "Comment added!"
   # redirect_to convo_path(@blip.convo)
   respond_to do |format|
   		format.html { redirect_to @comment.incidence}
   		format.js
   	end
  end


  #Aixo de skip before filter s'ha de solucionar d'alguna altra manera
  skip_before_filter :verify_authenticity_token
  def destroy
    
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to @comment.incidence }
      format.js
    end
  end
end
