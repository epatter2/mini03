class Game
  attr_accessor :title,:platform,:genre
  
  def initialize(title,platform,genre)
    @title = title
    @platform = platform
    @genre = genre
  end
  # write a method where if platform is PC, print "PC are great!"
  def what_platform
    if @platform == "PC"
      puts "PC are Awesome!"
    else
      puts "This platform is inferior"
    end
  end
end

xcom = Game.new("Xcom 2","PC","Turn-based Strategy")
puts xcom.title
puts xcom.platform
puts xcom.genre
puts what_platform