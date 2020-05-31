sorted_arr = arr.clone
a = sorted_arr[1]
      b = sorted_arr[2]
      if (yield sorted_arr[1], sorted_arr[2]) > 0
        sorted_arr[1] = b
        sorted_arr[2] = a
      end

arr = ["hello", "hiya", "hey","hi" ]
method_value = bubble_sort_by(arr) do | left, right |
  left.length - right.length
end
p sorted_arr[1]
p sorted_arr[2]
p sorted_arr[2]


