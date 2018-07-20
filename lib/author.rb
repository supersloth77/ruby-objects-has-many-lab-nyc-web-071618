class Author

  attr_accessor :name, :post, :posts

@@count = 0

def initialize(name)
  @name = name
  @posts = []
end

def add_post(post)
  @posts << post
  post.author = self
  @@count += 1
end

def add_post_by_title(post_title)
  post = Post.new(post_title)
  post.author = self
  @posts << post
  @@count += 1
end

def self.post_count
  @@count
end

end
