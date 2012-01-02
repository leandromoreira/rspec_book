class Magazine
 attr_accessor :pages
 def initialize
  @pages = (1..100).to_a
 end
 def published?
  true
 end
end

class Article
end

describe "An amazing rspec solution to tests" do
 it "works" do
  linux = Magazine.new
  linux.should have(100).pages
 end
end

#this is CONSICE

describe Magazine do
 it { should have(100).pages }
 it { should be_published }
end

describe "test double" do
 context "#double, #stub and #mock" do
  it "returns an instance of RSpec::Mocks::Mock" do
   double_object = double('object')
   mock_object = mock('object')
   stub_object = stub('object')
   double_object.class.should == mock.class
   mock.class.should == stub_object.class
  end
 end

 context "#double" do

  it "stubs methods when required" do
   car = double('car')
   car.stub(:name).and_return('Ferrari')
   car.name.should == 'Ferrari'
  end

  it "set the obligation of being executed" do
   ring = double('ring')
   ring.should_receive(:take).and_return('my precious')
   ring.take.should == 'my precious'
  end

  it "works with methods which accepts parameters" do
   mozart = double('mozart')
   mozart.should_receive(:play).with(:classic).and_return(true)
   mozart.play(:classic).should be_true 
  end

  it "provides us shortcuts to faster stubs" do
   customer = double('customer', :name => 'Peter Griffin', :buyer_level => 100)
   customer.buyer_level.should == 100 
  end

  it "enables us to provide a block method version" do
   zelda = double('zelda')

   zelda.stub(:play) do |coins|
    throw Error unless coins > 1
   end

   lambda{ zelda.start }.should raise_error
  end
 end

 describe Article  do
  it "turns easy the deep stubs" do
   recent = double()
   published = double()
   article = double('article')
   Article.stub(:recent).and_return(recent)
   recent.stub(:published).and_return(published)
   published.stub(:authored_by).with(1).and_return(article)
   article.stub(:date).and_return("11/25/2009")

   Article.recent.published.authored_by(1).date.should == "11/25/2009"
  end

  it "turns really easy the deep stubs" do
   article = double('article')
   article.stub(:date).and_return('11/25/2009')
   Article.stub_chain(:recent, :published, :authored_by).and_return(article)

   Article.recent.published.authored_by(1).date.should == "11/25/2009"
  end
 end

end
