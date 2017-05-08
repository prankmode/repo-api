class ReposController < ProtectedController
  before_action :set_repo, only: [:show, :update, :destroy]

  # GET /repos
  def index
    @repos = current_user.repos

    render json: @repos
  end

  # GET /repos/1
  def show
    render json: @repo
  end

  # POST /repos
  def create
    @repo = current_user.repos.build(repo_params)

    if @repo.save
      render json: @repo, status: :created
    else
      render json: @repo.errors, status: :unprocessable_entity
    end
  end

  # POST /repos/populate
  def populate
    file = File.read(Rails.root.join('scripts/ga-wdi-boston-repos.json'))
    repos = JSON.parse(file)

    repos.each do |r|
      begin
        r_params = { name: r['name'],
                     github_user: r['owner']['login'],
                     full_url: r['html_url'] }
        repo = current_user.repos.build(r_params)
        repo.save
      rescue ActiveRecord::RecordNotUnique => e
        next if e.message =~ /unique.*constraint.*index_repos_on_name/
        raise
      end

      tokens = r['name'].split('-')
      tokens.each do |t|
        # create the tags
        begin
          t_params = { name: t,
                       tagType: 'user' }
          ttag = current_user.tags.build(t_params)
          ttag.save
        rescue ActiveRecord::RecordNotUnique => e
          next if e.message =~ /unique.*constraint.*index_tags_on_name/
          raise
        end
      end
    end
  end

  # PATCH/PUT /repos/1
  def update
    if @repo.update(repo_params)
      render json: @repo
    else
      render json: @repo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /repos/1
  def destroy
    @repo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repo
      @repo = Repo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def repo_params
      params.require(:repo).permit(:name, :github_user, :full_url, :toc)
    end
end
