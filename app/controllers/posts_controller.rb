class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def send_email
    x = Post.sendEmail(params[:id])
  
    if x[0] == 200
      @wiadomosc = "Udalo sie, szkoda wysłana do przeliczenia."
      @wiadomosc2= "Mail o tytule #{ x[1] } został wysłany."
      respond_to do |format|
        format.js
      end
    else
      @wiadomosc = 'Coś się rozkurwiło na amen.'
      @wiadomosc2= 'Szkoda nie wysłana do liczenia :('
      respond_to do |format|
        format.js
      end
    end
  end
  
  def create
    @post = Post.new(post_params)
    # Post.create(mark: 'cwel', model: 'tusk', year: '2015', registration: 'smiec')      
    
    if @post.save
      redirect_to @post
    else
      render "new"
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end
  
  def destroy
    @post.destroy
    redirect_to root_path
  end
  
  private
  
  def post_params
    params.require(:post).permit(:mark, :model, :year, :registration, :owner, :document, :oc, :partial, :private, :after, :credit, :poland, :pole, :attorney, :sold, :invoice, :deal )
  end
  
  def find_post
    @post = Post.find(params[:id])
  end
  
end
