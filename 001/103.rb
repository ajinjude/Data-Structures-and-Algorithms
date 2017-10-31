# Given an unsorted array of integers, find a pair with given sum in it.
# O(n) approach using hashing, finds indices
def findPair(array,sum)
  hash = Hash.new
  array.each_with_index do |element,i|
    if hash[sum - element] != nil then
      puts "#{hash[sum - element]}, #{i}"
    end
    hash[element] = i
  end
end