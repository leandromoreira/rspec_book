class Magazine
 attr_accessor :pages
 def initialize
  @pages = (1..100).to_a
 end
end

describe "An amazing rspec solution to tests" do
 it "works" do
  linux = Magazine.new
  linux.should have(100).pages
 end
end
