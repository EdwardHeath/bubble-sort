arr1 = [4,3,78,2,0,2]
arr2 = ["hi","hello","hey"]

def bubble_sort arr1
    arr = arr1

    puts "=== BUBBLE SORT ==="
    puts "Unsorted Array: #{arr.inspect}"

    len = arr.size
    loop do
        swapped = false
        (len-1).times do |i|
            if(arr[i] > arr[i+1])
                x = arr[i+1]
                arr[i+1] = arr[i]
                arr[i] = x
                swapped = true
            end
        end
        break if not swapped
    end 

    puts "Sorted Array: #{arr.inspect}"
    puts
end

def bubble_sort_by arr2
    arr = arr2

    puts "=== BUBBLE SORT BY ==="
    puts "Unsorted Array: #{arr.inspect}"

    len = arr.size
    loop do
        swapped = false
        (len-1).times do |i|
            if(yield(arr[i],arr[i+1]) > 0)
                x = arr[i+1]
                arr[i+1] = arr[i]
                arr[i] = x
                swapped = true
            end
        end
        break if not swapped
    end 

    puts "Sorted Array by length: #{arr.inspect}"
    puts
end

bubble_sort(arr1)
bubble_sort_by(arr2) do |left, right|
    left.length - right.length
end