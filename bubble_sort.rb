print "Enter array: "
arr = gets.chomp[1..-2].split(",").map(&:to_i)

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

puts arr.inspect
