dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def find_word(word,dic)
    array=word.downcase.split
    count=Hash.new(0)
    substring=dic.each do |word_in_dic|
        array.each do |text|
            if text.include?(word_in_dic)
                count[word_in_dic]+=1
                #puts "#{word_in_dic}:#{count}"
            
            end
        end
    end
    p count
end

find_word("bazonga",dictionary)