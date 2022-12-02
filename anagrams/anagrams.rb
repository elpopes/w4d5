# def first_anagram?(str1, str2)
#     anagrams = []
#     sorted = false
#     dummy = str1.dup 
#     until sorted
#         (0...dummy.length - 1).each do |i|
#             j = i + 1
#             dummy[i], dummy[j] = dummy[j], dummy[i]
#             anagrams << dummy.dup
#         end
#         sorted = true if dummy == str1
#     end
#     anagrams
# end

# puts first_anagram?('elvis', 'lives').inspect



def second_first_anagram?(str1, str2)
    perms = str1.chars.permutation.to_a.map(&:join)
    perms.include?(str2)

end

p second_first_anagram?("gizmo", "sally")    #=> false
p second_first_anagram?("elvis", "lives")    #=> true

def second_anagram?(str1, str2)
    chars1 = str1.split('')
    chars2 = str2.split('')
    chars1.each_with_index do |char, i|
            index = chars2.find_index(char)
            unless index.nil?
                chars2.delete_at(index)
            end
    end
    chars2.empty?
end

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true

