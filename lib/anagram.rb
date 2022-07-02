require 'pry'

class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)
    lengthFilterArray = array.filter { |item| item.length == word.length }
    if lengthFilterArray == []
      lengthFilterArray
    else
      matchedWord = lengthFilterArray.filter do |item|
        itemArray = item.chars
        sortedLetterArray = itemArray.sort
      
        wordArray = word.chars
        sortedWord = wordArray.sort

        sortedLetterArray == sortedWord
      end
    end
    matchedWord
  end
end


sample = Anagram.new("the")
sample.match(["hte", "eth", "tttt"])