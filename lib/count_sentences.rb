require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
   self.end_with?("?")
  end

  def exclamation?
   self.end_with?("!")
  end

  def count_sentences
    
    count = 0
    if(!self.include?("."||"?"||"!"))
      return 0
    else
      puts self.split(/[.?!]/).delete(" ")
      temp = self.split(/[.?!]/).count
      return temp
    end
  end
end