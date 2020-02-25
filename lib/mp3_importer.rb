class MP3Importer
  
  attr_accessor :path
  
  def initialize(file)
    @path = file
  end
  
  def files
    files = []
    Dir.new(self.path).each{|file| files << file}
    files
  end
  
  def import
    self.files.each{|file| Song.new_by_filename(file)}
  end
end