# Using iteration, write a method #fibs which takes a number and return an array containing that many numbers from the Fibonacci sequence.
def fibs(num)
  nums = []
  first = 0
  second = 1

  while num > 0 do
    # insert first number to numbers array
    nums << first
    # get sum of first and second numbers
    result = first + second

    # set second number to the first element, and the first number to the previous sum
    second = first
    first = result

    num -= 1
  end

  nums
end

# Write another method #fibs_rec which solves the same problem recursively
def fibs_rec(num, nums = [])
  return nums if nums.length == num

  if nums.empty?
    nums << 0
  elsif nums.length == 1
    nums << 1
  elsif nums.length > 1
    nums << (nums[-2] + nums[-1])
  end
  
  fibs_rec(num, nums)
end

# fibs(8)
puts fibs_rec(8)