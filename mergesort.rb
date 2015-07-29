def merge_sort(list)
  if list.size > 1
    m = (list.size-1)/2
    a, b = merge_sort(list[0..m]), merge_sort(list[m+1..-1])
  else
    return list
  end
  sorted = Array.new(list.size) do
    if a.empty? || b.empty?
      a.empty? ? b.shift : a.shift
    else
      a[0] < b[0] ? a.shift : b.shift
    end
  end
  sorted
end

silly_array = ((1..100).to_a * 3).to_a.shuffle[0..15]
puts silly_array.to_s
puts merge_sort(silly_array).to_s