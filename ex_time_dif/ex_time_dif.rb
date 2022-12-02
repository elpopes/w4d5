def my_min(array)
    (0...array.length-1).each do |i|
        return array[i] if array.all? {|ele| ele >= array[i]}
    end
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
puts my_min(list)  # =>  -5


def my_min_efficient(array)
    array.inject {|acc, ele| ele < acc ? ele : acc }
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
puts my_min_efficient(list)  # =>  -5

def largest_contiguous_subsum(list)
    subarrays = []
    (0...list.length - 1).each do |i|

        (i + 1...list.length).each do |j|
            subarrays << list[i..j].sum
        end
    end
    subarrays.max
end

list = [5, 3, -7]
puts largest_contiguous_subsum(list) # => 8

list = [2, 3, -6, 7, -6, 7]
puts largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])



def largest_contiguous_subsum_2(list)
    largest = 0
    cur 
    (0...list.length - 1).each do |i|
       list.inject 

    end
end

list = [5, 3, -7]
puts largest_contiguous_subsum_2(list) # => 8

list = [2, 3, -6, 7, -6, 7]
puts largest_contiguous_subsum_2(list) # => 8 (from [7, -6, 7])



largest = array.sum
(0..array.length).each {|i| largest = array[0..i] if array[0..i] > largest} 
(0..array.length).reverse_each {| largest = array[0..i] if array[0..i] > largest} 
