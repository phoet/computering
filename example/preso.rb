configure do
  # changes styles described here: https://github.com/sickill/rainbow#features
  self.style = {
    headline: {
      text:   "-".background(:green),
      buffer: "-".background(:blue),
    }
  }
end

headline 'computering'

paragraph 'is super easy'

command 'echo to use'

spec "runs spec" do
  it "even runs your spec with minitest" do
    true.must_equal true
  end
end

link 'see yourself', 'https://github.com/phoet/computering#usage'
