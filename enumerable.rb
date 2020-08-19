module Enumerable
  def my_each(_array = nil)
    return to_enum unless block_given?
    Array(self).length.times do |i|
      yield(Array(self)[i])
    end
    self
  end
end