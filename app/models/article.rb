class Article < ActiveRecord::Base


  def date
  	self.updated_at.utc.strftime('%d.%m.%Y')
  end	

  def short
  	"#{self.content[0..300]}..."
  end	

  def self.colorize field, string
  	field.gsub(/#{string}/i) {|s| "<div class='text-success'>#{string}</div>"}
  end	


end
