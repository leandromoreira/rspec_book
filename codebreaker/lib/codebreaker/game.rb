module Codebreaker

 class Game

  def initialize(output)
   @output = output
  end

  def start(secret)
   @secret = secret
   @output.puts 'Welcome to Codebreaker!'
   @output.puts 'Enter guess:'
  end

  def guess(guess)
   @output.puts'+'*exact_match_count(guess)+'-'*number_match_count(guess)
  end

  private

  def exact_match?(guess, index)
   guess[index] == @secret[index]
  end

  def number_match?(guess, index)
   @secret.include?(guess[index]) && !exact_match?(guess, index)
  end

  def exact_match_count(guess)
   (0..3).inject(0) do |sum, element|
    sum + (exact_match?(guess, element) ? 1 : 0)
   end
  end

  def number_match_count(guess)
   (0..3).inject(0) do |sum, element|
    sum + (number_match?(guess, element) ? 1 : 0)
   end
  end

 end

end
