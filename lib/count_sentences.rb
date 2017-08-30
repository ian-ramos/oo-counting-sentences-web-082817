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
    self.split(/[.!?]/).delete_if do |word|
      word == "" #if a sentence ends in "!!", it will split on both, but the second ! will just show up as ""
    end.count
  end
end
