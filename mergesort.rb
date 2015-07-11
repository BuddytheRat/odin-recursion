def merge_sort(list)
  puts list.to_s
  if list.size > 1
    m = (list.size-1)/2
    a, b = merge_sort(list[0..m]), merge_sort(list[m+1..-1])
  else
    return list
  end
  sorted = Array.new
  (a.size + b.size).times do
    sorted << a[0].to_i < b[0].to_i ? a.shift : b.shift
  end
  sorted
end

silly_array = ((1..12).to_a + (20..30).to_a + (1..10).to_a).shuffle
puts silly_array.to_s
puts merge_sort(silly_array).to_s