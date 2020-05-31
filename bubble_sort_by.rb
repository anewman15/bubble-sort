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

arr = %w[hello hiya hey hi]
method_value = bubble_sort_by(arr) do |left, right|
  left.length - right.length
end

p method_value
p arr
