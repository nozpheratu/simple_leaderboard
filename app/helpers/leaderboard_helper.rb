module LeaderboardHelper
  def fscore(score)
    score /= 1000.0
    sprintf( "%.02f" , score )
  end
end
