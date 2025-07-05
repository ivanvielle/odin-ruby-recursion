# Build a method #merge_sort that takes in an array and returns a sorted array, using a recursive merge sort methodology.
def merge_sort(array)
  length = array.length

  return array if length <= 1

  mid = length / 2
  left = merge_sort(array[0...mid])
  right = merge_sort(array[mid..-1])

  sorted = []
  until left.empty? || right.empty?
    left.first <= right.first ? sorted << left.shift : sorted << right.shift
  end

  sorted + left + right
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])