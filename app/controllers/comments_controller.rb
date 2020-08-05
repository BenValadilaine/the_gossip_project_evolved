class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

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
    @comment = Comment.new
    puts "*"*50
    puts params
    @gossip = Gossip.find(params[:gossip_id])
    puts "#"*50
    puts @gossip
    @comment = Comment.create(content: params[:content], user: User.last, gossip: @gossip)
    puts "-"*50
    puts @comment
    redirect_to gossip_path(@gossip.id)
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)

      else

      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy

  end
end

private
# Use callbacks to share common setup or constraints between actions.
def set_comment
  @comment = Comment.find(params[:id])
end

# Only allow a list of trusted parameters through.
def comment_params
  params.require(:comment).permit(:content)
end
