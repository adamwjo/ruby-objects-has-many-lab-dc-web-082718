



class Author

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @posts = []
  end

  def posts
    @posts
  end

  def self.all
    @@all
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(post)
    add_post(Post.new(post))
  end

  def self.post_count
    Post.all.length 
  end





end
