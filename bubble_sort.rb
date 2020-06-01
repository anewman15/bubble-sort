def bubble_sort(arr)
  sorted_arr = arr[0..-1]

  arr_size = sorted_arr.length

  (arr_size - 1).times do
    i = 0
    while i < arr_size - 1
      a = sorted_arr[i]
      b = sorted_arr[i + 1]
      if sorted_arr[i] > sorted_arr[i + 1]
        sorted_arr[i] = b
        sorted_arr[i + 1] = a
      end
      i += 1
    end
  end
  sorted_arr
end

def bubble_sort_by(arr)
  sorted_arr = arr.clone
  arr_size = arr.length

  (arr_size - 1).times do
    i = 0
    while i < arr_size - 1
      a = sorted_arr[i]
      b = sorted_arr[i + 1]
      if (yield sorted_arr[i], sorted_arr[i + 1]).positive?
        sorted_arr[i] = b
        sorted_arr[i + 1] = a
      end
      i += 1
    end
  end
  sorted_arr
end

numbers_array = []
5.times do
  print 'Please enter a random number, five in total: '
  array_input = gets.chomp.to_i
  numbers_array << array_input
end
puts "Your numbers are: #{numbers_array}"
puts "Your sorted numbers are: #{bubble_sort(numbers_array)}\n\n"

array_string = []
5.times do
  print 'Please enter a string, five in total: '
  string_input = gets.chomp.to_s
  array_string << string_input
end

string_value = bubble_sort_by(array_string) do |left, right|
  left.length - right.length
end
puts "Your strings are : #{array_string}"
puts "Your sorted strings are: #{string_value}"
