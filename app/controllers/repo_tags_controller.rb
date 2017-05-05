class RepoTagsController < ApplicationController
  before_action :set_repo_tag, only: [:show, :update, :destroy]

  # GET /repo_tags
  def index
    @repo_tags = RepoTag.all

    render json: @repo_tags
  end

  # GET /repo_tags/1
  def show
    render json: @repo_tag
  end

  # POST /repo_tags
  def create
    @repo_tag = RepoTag.new(repo_tag_params)

    if @repo_tag.save
      render json: @repo_tag, status: :created, location: @repo_tag
    else
      render json: @repo_tag.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /repo_tags/1
  def update
    if @repo_tag.update(repo_tag_params)
      render json: @repo_tag
    else
      render json: @repo_tag.errors, status: :unprocessable_entity
    end
  end

  # DELETE /repo_tags/1
  def destroy
    @repo_tag.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repo_tag
      @repo_tag = RepoTag.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def repo_tag_params
      params.require(:repo_tag).permit(:repo_id, :tag_id)
    end
end
