class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    qString=params[:query]
    @resp=Faraday.get "https://api.github.com/search/repositories" do |req|
      req.params['q']=qString
      req.params["client_id"]=""
    end
    body=JSON.parse(@resp.body)
    if @resp.success?
      @repos=body["items"]
      @
    else
      @repos=body
    end
    render 'search'
  end
end
