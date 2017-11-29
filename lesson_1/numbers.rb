numbers = %w[
  9461055376 1098029425 1365826266 3651652057
  6639633927 9198606875 3425027805 9600912575
  8826860435 4244213108 8930423446 6975487430
  2956968315 4024720801 8882048673 4897211695
  6089600553 4272319905 4517433227 5565635133
]

def one_numbers(num_array)
  nums = {}
  num_array.map do |e|
    key = e
    value = e.split('').max

    obj = { key => value }
    nums.merge!(obj)
  end
  nums
end
puts one_numbers(numbers)

def two_numbers(num_array)
  nums = ''
  num_array.map do |e|
    nums += e.split('').max
    nums += e.split('').min
  end
  nums
end
# puts two_numbers(numbers)

def three_numbers(num_array)
  nums = []
  num_array.each { |e| nums.push(e.to_i) }
  sum = nums.sort[0] + nums.sort[1] + nums.sort[-1] + nums.sort[-2]
end
# puts three_numbers(numbers)
