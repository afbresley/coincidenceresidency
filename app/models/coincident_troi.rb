class CoincidentTroi < ActiveRecord::Base

  after_create :do_something_else

  def do_something_else
    puts "meow meow meow"
  end
end
