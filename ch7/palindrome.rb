# class Phrase < String
#   def processed_content
#     processor(self)
#   end
#   def palindrome?
#     processed_content == processed_content.reverse
#   end

#   def louder
#     self.upcase
#   end

#   def processor(string)
#     string.downcase
#   end
# end

# class TranslatedPhrase < Phrase
#   attr_accessor :translation

#   def initialize(content, translation)
#     super(content)
#     @translation = translation
#   end

#   def processed_content
#     processor(self.translation)
#   end
# end

module Palindrome
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

  def processed_content
    self.to_s.downcase
  end
end
