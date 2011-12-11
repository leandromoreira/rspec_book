module Codebreaker
 class Marker
  def initialize(secret, guess)
   @secret, @guess = secret, guess
  end

  def exact_match?(index)
   @guess[index] == @secret[index]
  end

  def number_match?(index)
   @secret.include?(@guess[index]) && !exact_match?(index)
  end

  def exact_match_count()
   (0..3).inject(0) do |sum, element|
    sum + (exact_match?(element) ? 1 : 0)
   end
  end

  def number_match_count()
   (0..3).inject(0) do |sum, element|
    sum + (number_match?(element) ? 1 : 0)
   end
  end
 end
end
