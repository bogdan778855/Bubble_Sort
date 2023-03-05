def bubble_sort(arr)
  n = arr.length
  loop do
    swapped = false

    (n - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end

    break unless swapped
  end

  arr
end

print "Впишіть масив чисел, розділенних комою: "
input = gets.chomp

# розділяємо строку на цифри
array_to_sort = input.split(",").map(&:to_i)

# сортуємо масив
sorted_array = bubble_sort(array_to_sort)

puts "Відсортований масив: #{sorted_array.inspect}"
