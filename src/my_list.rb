require_relative './enumerable'
class MyList
  include MyEnumerable
  def initialize(*arr)
    @list = arr
  end

  def each
    @i = 0
    while @i < @list.length
      puts @list[@i]
      @i += 1
    end
  end
end

# Create our list
list = MyList.new(1, 2, 3, 4)
# <MyList: @list=[1, 2, 3, 4]>

# Test #all?
p(list.all? { |e| e < 5 })
# => true

p(list.all? { |e| e > 5 })
# => false

# Test #any?
p(list.any? { |e| e == 2 })
# => true

p(list.any? { |e| e == 5 })
# => false

# Test #filter
p list.filter(&:even?)
# => [2, 4]
