# Define a class called User that keeps track of a person's username
# it should receive the username when initialized
# it should have a method add_blog which accepts a date and text
# it should have a method blogs which returns an array of all blogs the user has written
# they should be in reverse chronological order (newest first)
#
# Define a class called Blog that could be used to store an entry for your web log.
# The class should have a getter and setter methods: text , date , user
# its initialize method should receive the date, user , and text
# have a method called summary that returns the first 10 words from the text (or the entire text if it is less than 10 words)
#
# Two blogs should be equal to eachother if they have the same user, date, and text
# here is a partially filled out example of how to define the == operator:
#      def ==(other)
#        return self.date == other.date
#      end

require 'date'

# emma = User.new('Emma')
# simon =User.new('Simon')
# emma.username ---- 'Emma'
# emma.blogs  ---- []
# emma.add_blog('18-02-2021', 'this is my first blog')
# emma.bogs ---- [{date: '18-02-2021', text: 'this is my first blog'}]

class User
  attr_accessor :username, :blogs

  def initialize(username)
    @username = username
    self.blogs = []
  end

  def add_blog(date, text)
    new_blog = Blog.new(date, self, text)
    blogs << new_blog
    self.blogs = blogs.sort_by { |blog| blog.date }.reverse
    new_blog
  end
  
end

class Blog
  attr_accessor :date, :user, :text

  def initialize(date, user, text)
    self.date = date
    self.user = user
    self.text = text
  end

  def summary
    text.split[0..9].join(' ')
  end

  def entry
    "#{user.username} #{date}\n#{text}"
  end

  def ==(other)
    self.date == other.date &&
    self.user == other.user &&
    self.text == other.text
  end

end
