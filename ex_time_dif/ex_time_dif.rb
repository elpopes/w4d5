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