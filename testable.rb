module Testable
  def self.to_test
    @to_test ||= []
  end
  def self.included(mod)
    to_test << mod 
  end
  def self.run
    @to_test.each do |c|
      o = c.new
      o.methods.grep(/^_test/).each do |m|
        o.send(m)
      end
    end
    puts
  end

  def assert(result)
    print result ? "." : "F"
  end
end
