require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    count = 0
    self.strip.split.map { |e| count += 1 if e.sentence? || e.question? \
      || e.exclamation?}
    count
  end
end