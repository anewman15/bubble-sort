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

array_string = %w[]
bubble_sort_by(array_string) do |left, right|
  left.length - right.length
end
