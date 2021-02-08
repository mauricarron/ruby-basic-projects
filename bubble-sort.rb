def bubble_sort(arr)
    arr.length.times do
        arr.each.with_index do |n, i|
            if arr[i+1]
                k = i + 1
                if n > arr[k]
                    arr[i] = arr[k]
                    arr[k] = n
                end
            end
        end
    end
    
    arr
end

numbers_to_order = [3, 4, 1, 8, 6, 5]
p bubble_sort(numbers_to_order)
