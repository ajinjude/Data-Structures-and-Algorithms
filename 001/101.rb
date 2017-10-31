# Given an unsorted array of integers, find a pair with given sum in it.
# naive approach, finds indices
 def find_pair(array,sum)
  indices = []
  for i in 0...array.length
    for j in i+1...array.length
      indices.push("#{i},#{j}") if array[i] + array[j] == sum
    end
  end
  indices
end