def bubble_sort(arr)
  arr_size = arr.length
  
  (arr_size - 1).times do
    i = 0
    while i < arr_size - 1
      a = arr[i]
      b = arr[i + 1]
      if arr[i] > arr[i + 1]
        arr[i] = b
        arr[i + 1] = a
      end
      i += 1
    end
  end
  arr
end
  
arr = [12, 10, 9, 7, 6, 5, 4, 2]
p bubble_sort(arr)