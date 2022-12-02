def bad_two_sum?(arr, target_sum)
    (0...arr.length - 1).each do |i|
        (i + 1...arr.length).each do |j|
            return true if arr[i] + arr[j] == target_sum
        end
    end
    return false
end

arr = [0, 1, 5, 7]
puts bad_two_sum?(arr, 6) # => should be true
puts bad_two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr, target)
    arr.sort!

    
end