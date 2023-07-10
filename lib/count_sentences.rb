require 'pry'

class String

  def sentence?
    self.end_with?(".") # end_with? is a default Ruby method to check strings
  end

  def question?
    self.end_with?("?") # adding the ? char instead of . to check the string
  end

  def exclamation?
    self.end_with?("!") # adding the ! char instead of . to check the string
  end

  def count_sentences
    self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count # using scan, map and count with regex to split the input string to sentences
  end
end