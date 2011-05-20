class String
  def is_numeric?
    Float(self.gsub(",",""))
    true 
  rescue 
    false
  end
end