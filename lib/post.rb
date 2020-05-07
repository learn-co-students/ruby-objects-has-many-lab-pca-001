class Post
  attr_reader :title, :author
  @@all = []
  def initialize(name)
    @title = name
    @@all << self
  end
  def author=(name)
    @author = name
    @author.posts << self
  end
  def self.all
    @@all
  end
  def author_name
    @author.nil? ? nil : @author.name
  end
end