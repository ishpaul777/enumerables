module MyEnumerable
  def all?
    each do |item|
      return false if yield(item) == false
    end
    true
  end

  def any?
    each do |item|
      return true if yield(item) == true
    end
    false
  end

  def filter
    result = []
    each do |item|
      result << item if yield(item) == true
    end
    result
  end
end
