class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    @resp=Faraday.get()
  end
end
