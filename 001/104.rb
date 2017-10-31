# Given an unsorted array of integers, find a pair with given sum in it.
# O(n) approach, finds values
def find_pair(array,sum)
  values = []
  array.each_with_index do |element,index|
    values.push("#{sum - element},#{element}") if array.slice(index+1,array.length).include?(sum - element)
  end
  values
end