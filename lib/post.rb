class Post
  attr_accessor :author
  @@all = []

  def initialize(book_title)
    @book_title = book_title
    @@all << self
  end

  def self.all
    @@all
  end

  def title
    @book_title
  end
  
  def author_name
    if author
      author.name
    end
  end
end