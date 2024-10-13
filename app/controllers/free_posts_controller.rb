class FreePostsController < ApplicationController
  before_action :authenticate_user!, only: %i[ new edit update destroy ]
  before_action :set_free_post, only: %i[ show edit update destroy ]

  # GET /free_posts or /free_posts.json
  def index
    @free_posts = FreePost.includes(:user)
  end

  # GET /free_posts/1 or /free_posts/1.json
  def show
    @free_post = FreePost.find(params[:id])
    @comment = Comment.new
    @comments = @free_post.comments.includes(:user).order(created_at: :desc)
  end

  # GET /free_posts/new
  def new
    @free_post = FreePost.new
  end

  # GET /free_posts/1/edit
  def edit
  end

  # POST /free_posts or /free_posts.json
  def create
    @free_post = FreePost.new(free_post_params)
    @free_post.user_id = current_user.id
    respond_to do |format|
      if @free_post.save
        format.html { redirect_to free_posts_path, notice: "Free post was successfully created." }
        format.json { render :index, status: :created, location: @free_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @free_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /free_posts/1 or /free_posts/1.json
  def update
    respond_to do |format|
      if @free_post.update(free_post_params)
        format.html { redirect_to free_post_url(@free_post), notice: "Free post was successfully updated." }
        format.json { render :show, status: :ok, location: @free_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @free_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /free_posts/1 or /free_posts/1.json
  def destroy
    if @post.user == current_user
      @free_post.destroy!
      respond_to do |format|
        format.html { redirect_to free_posts_url, notice: "Free post was successfully destroyed." }
        format.json { head :no_content }
      end
    else
      redirect_to posts_path, alert: '削除権限がありません'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_free_post
      @free_post = FreePost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def free_post_params
      params.require(:free_post).permit(:user_id, :title, :body, :icon, :created_at, :updated_at)
    end
end
