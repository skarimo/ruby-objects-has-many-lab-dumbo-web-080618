class Post
  attr_accessor :title, :author
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def all
    @@all
  end

  def self.author
    self.author = author.name
  end

  def author_name
    if author != nil
      self.author.name
    else
      return nil
    end
  end

end
