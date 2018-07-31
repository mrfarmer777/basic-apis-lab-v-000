class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    qString=params[:query]
    @resp=Faraday.get "https://api.github.com/search/repositories" do |req|
      req.params[]
    
  end
end
