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

link 'see yourself', 'https://github.com/phoet/computering#usage'
