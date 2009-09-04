class BjsController < ApplicationController
	before_filter :check_logged_in, :only => [:edit, :update, :destroy]
 
  def new
    @bj = Bj.new
  end
  
  def create
    @bj = Bj.new(params[:bj])
    if @bj.save
      redirect_to "/bjs/#{@bj.id}"
    else
      render :template=>"bjs/new"
    end
  end

  def show
    @bj = Bj.find(params[:id])
  end
  
  def index
    @bjs = Bj.find(:all)
  end
  
  def find
    @bjs = Bj.find(:all,:conditions=>["name = ? OR description = ?",params[:search_string], params[:search_string]])
  end
  
  def edit
    @bj = Bj.find(params[:id])
  end
  
  def update
    @bj = Bj.find(params[:id])
    if @bj.update_attributes(params[:bj])
      redirect_to "/bjs/#{@bj.id}"
    else
      render :template=>"/bjs/edit"
    end
  end
  
  def destroy    
    	@bj = Bj.find(params[:id])
    	@bj.destroy
    	redirect_to '/bjs/'
  end
  private 
  	def check_logged_in
    authenticate_or_request_with_http_basic("Bjs") do |username, password|
      username == "admin" && password == "admin123"
    end

  end 
end
