class String
  def is_numeric?
    self.gsub!(",","")
    Float(self)
    true 
  rescue 
    false
  end
end