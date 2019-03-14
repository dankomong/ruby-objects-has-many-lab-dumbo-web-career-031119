class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    if @author != nil
      return @author.name
    else
      return nil
    end
  end

  def self.all
    @@all
  end

end
