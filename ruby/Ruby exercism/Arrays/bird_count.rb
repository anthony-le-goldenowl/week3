=begin
Instructions
You're an avid bird watcher that keeps track of how many birds have visited your garden in the last seven days.

You have five tasks, all dealing with the numbers of birds that visited your garden.

Task 1
Check what the counts were last week
For comparison purposes, you always keep a copy of last week's counts nearby, which were: 0, 2, 5, 3, 7, 8 and 4. Implement the BirdCount.last_week method that returns last week's counts:

BirdCount.last_week
# => [0, 2, 5, 3, 7, 8, 4]

Task 2
Check how many birds visited yesterday

Implement the BirdCount#yesterday method to return how many birds visited your garden yesterday. The bird counts are ordered by day, with the first element being the count of the oldest day, and the last element being today's count.

birds_per_day = [2, 5, 0, 7, 4, 1]
bird_count = BirdCount.new(birds_per_day)
bird_count.yesterday
# => 4

Task 3
Calculate the total number of visiting birds
Implement the BirdCount#total method to return the total number of birds that have visited your garden:

birds_per_day = [2, 5, 0, 7, 4, 1]
bird_count = BirdCount.new(birds_per_day)
bird_count.total
# => 19

Task 4
Calculate the number of busy days
Some days are busier than others. A busy day is one where five or more birds have visited your garden. Implement the BirdCount#busy_days method to return the number of busy days:

birds_per_day = [2, 5, 0, 7, 4, 1]
bird_count = BirdCount.new(birds_per_day)
bird_count.busy_days
# => 2

Task 5
Check if there was a day with no visiting birds

Implement the BirdCount#day_without_birds? method that returns true if there was a day at which zero birds visited the garden; otherwise, return false:

birds_per_day = [2, 5, 0, 7, 4, 1]
bird_count = BirdCount.new(birds_per_day)
bird_count.day_without_birds?
# => true

=end

class BirdCount
  def self.last_week
    [0,2,5,3,7,8,4]
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
  end

  def yesterday
    @birds_per_day[-2]
  end

  def total
    sum = 0
    sum = @birds_per_day.sum
  end

  def busy_days
    @count = 0
    @birds_per_day.each do |bird|
      if bird >=5 
        @count = @count + 1
      end
    end
    return @count
  end

  def day_without_birds?
    if (@birds_per_day.include?(0))
      return true
    end
    return false
  end
end
