class Author
  attr_accessor :name

  @@authors = []

  def initialize(name)
    @name = name
    @@authors << self
  end

  def posts
    Post.all.select do |post|
      self == post.author
    end
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(postTitle)
    new_post = Post.new(postTitle)
    new_post.author = self
  end

  def self.post_count
    Post.all.length
  end

end
