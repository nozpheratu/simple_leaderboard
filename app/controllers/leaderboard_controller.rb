class LeaderboardController < ApplicationController
  def index
    @results = Result.all.order('score asc')
  end
end
