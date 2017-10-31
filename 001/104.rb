# Given an unsorted array of integers, find a pair with given sum in it.
# O(n) approach, finds values
def findPair(array,sum)
  array.each do |element|
    puts "#{sum - element},#{element}" if array.include?(sum - element)
  end
end