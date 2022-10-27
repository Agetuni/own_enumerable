module MyEnumerable
  def all?
    @return_value = true
    @list.each do |n|
      @return_value = if yield n
                        true
                      else
                        false
                      end
    end
    @return_value
  end

  def any?
    @return_value = false
    @list.each { |n| @return_value = true if yield n }
    @return_value
  end

  def filter
    @filtered_array = []
    @list.each do |n|
      @filtered_array << n if yield n
    end
    @filtered_array
  end
end
