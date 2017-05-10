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
    # response = File.read(Rails.root.join('scripts/ga-wdi-boston-repos.json'))
    require 'open-uri'
    binding.pry
    gh_url = 'https://api.github.com/users/' + populate_params[:name] + '/repos?per_page=100'
    response = open(gh_url).read
    repos = JSON.parse(response)

    # go through the repos and create each one.
    repos.each do |r|
      r_params = { name: r['name'],
                   github_user: r['owner']['login'],
                   full_url: r['html_url'] }
      repo = current_user.repos.build(r_params)
      repo.save

      # then take the repo name, split it apart at the - and make
      # each of those words a tag.
      tokens = r['name'].split('-')
      tokens.each do |t|
        tid = process_tag(t)
        if tid
          rt = RepoTag.create(repo_id: repo.id, tag_id: tid)
          if !rt.save
            render json: @repo.errors, status: :unprocessable_entity
          end
        end
      end
    end
  end

  # PATCH/PUT /repos/1
  def update
    t_id = process_tag(update_params[:tag])
    if t_id
      # create the relationship now that we have 2 ids
      rt = RepoTag.create(repo_id: @repo.id, tag_id: t_id)
      if !rt.save
        render json: @repo.errors, status: :unprocessable_entity
      end
    end

    if @repo.update(update_params)
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

    def process_tag(tag_name)
      if tag_name
        # tag name specified - does the tag already exist?
        t = current_user.tags.find_by name: tag_name
        if !t
          t = current_user.tags.create({name: tag_name})
          t.save
          t.id
        else
          t.id
         end
      else
        nil
      end

    end

    # Only allow a trusted parameter "white list" through.
    def repo_params
      params.require(:repo).permit(:name, :github_user, :full_url, :toc, :tags)
    end
    def update_params
      params.require(:updateRepo).permit(:id, :description, :url)
    end
    def populate_params
      params.require(:guser).permit(:name)
    end
end
