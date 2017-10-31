# Given an unsorted array of integers, find a pair with given sum in it.
# O(n) approach using hashing, finds indices
def find_pair(array,sum)
  indices = []
  hash = Hash.new
  array.each_with_index do |element,i|
    if hash[sum - element] != nil then
      indices.push("#{hash[sum - element]},#{i}")
    end
    hash[element] = i
  end
  indices
end