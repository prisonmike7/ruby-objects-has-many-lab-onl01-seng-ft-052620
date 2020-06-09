class Author

  attr_accessor :name, :posts

  # @@song_collection

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def posts
    Post.all
  end

  def post
    Post.all.select {|post| post.author == self}
  end

  def self.post_count
    Post.all.length
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

end
