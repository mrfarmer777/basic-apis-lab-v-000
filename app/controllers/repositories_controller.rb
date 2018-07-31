class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    qString=params[:]
    @resp=Faraday.get("https://api.github.com/search/repositories")
  end
end
