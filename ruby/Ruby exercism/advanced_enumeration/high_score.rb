class HighScores
  def initialize(arr)
    @arr = arr
  end
  def scores
    @arr
  end
  def latest
    @arr[-1]
  end
  def personal_best
    @arr.max
  end
  def personal_top_three
    @arr.max(3)
  end
  def latest_is_personal_best?
    self.latest == self.personal_best ? true : false
  end 
end