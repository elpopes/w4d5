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


def third_anagram?(str1, str2)
    str1.chars.sort == str2.chars.sort
end

p third_anagram?("gizmo", "sally")    #=> false
p third_anagram?("elvis", "lives")    #=> true


def fourth_anagram?(str1, str2)
    hash = Hash.new(0)
    return false if str1.length != str2.length
    str1.each_char.with_index do |char, i|
        hash[char] += 1
        hash[str2[i]] -= 1
    end
    hash.values.all?(0)
end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true