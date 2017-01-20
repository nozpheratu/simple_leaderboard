class LeaderboardController < ApplicationController
  def index
    @results = Result.all.order('score desc')
  end
end
