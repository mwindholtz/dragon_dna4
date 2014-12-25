class RunArray
  
  def self.expand(*run)
    raise "Run Array not even" unless run.size.even?
    result = Array.new
    rev = run.reverse
    while (!rev.empty?)
      value = rev.pop
      count = rev.pop      
      count.times{ result << value}
    end
    result
  end
  
end