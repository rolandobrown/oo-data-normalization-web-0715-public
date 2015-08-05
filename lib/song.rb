require 'tempfile'

class Song
  attr_accessor :title, :artist

  def serialize
    new_title = self.title.gsub(" ", "_").downcase
    f = Tempfile.new(["#{new_title}", ".txt"], "tmp")
    f.write("#{self.artist.name} - #{self.title}")
    f.close
  end
end

# you can also use f.write("#{@artist.name} - #{@title}")

#thanks Dan!
