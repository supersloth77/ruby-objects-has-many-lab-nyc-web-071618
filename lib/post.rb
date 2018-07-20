class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    if self.author.class == Author
      self.author.name
    else
      nil
    end
  end

end
