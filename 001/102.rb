# Given an unsorted array of integers, find a pair with given sum in it.
# O(nlogn) approach using sorting, finds values
def find_pair(array,sum)
  values = []
  array.sort!
  low = 0
  high = array.length - 1
  while low < high
    values.push("#{array[low]},#{array[high]}") if array[low] + array[high] == sum
    (array[low] + array[high] < sum) ? low += 1 : high -= 1
  end
  values
end