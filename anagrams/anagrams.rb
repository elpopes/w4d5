def first_anagram?(str1, str2)
    anagrams = []
    sorted = false
    dummy = str1.dup 
    until sorted
        (0...dummy.length - 1).each do |i|
            j = i + 1
            dummy[i], dummy[j] = dummy[j], dummy[i]
            anagrams << dummy.dup
        end
        sorted = true if dummy == str1
    end
    anagrams
end

puts first_anagram?('elvis', 'lives').inspect


# anagram?("gizmo", "sally")    #=> false
# anagram?("elvis", "lives")    #=> true