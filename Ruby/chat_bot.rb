# You have a list conversations, in which each element is a conversation that is represented as an array of words. 
# You need to create a chatbot that will complete a conversation that is currently in progress, currentConversation.

# To do that, the chatbot must find the conversation from the given list that has the largest number of unique words that match with words from the currentConversation. 
# If there are several conversations that match this condition, the chatbot should use the one that appears first in conversations.
# If no conversation from the list contains any matching words from currentCoversation, the chatbot should leave currentConversation as it is.
#
# If there is a conversation that can complete currentConversation, the chatbot should find the first word in it that appears after all the matching words. 
# The chatbot should then append this word, along with all the words that follow it in that conversation, to currentConversation.
#    
# Return the final state of currentConversation

def chatBot(conversations, currentConversation)
    count_unique_word, index_conversation = 0, 0
    unique, final_conversation = [], []    

    conversations.each_with_index do |conversation, index|
        #puts "#{conversation.size} and count: #{count_unique_word}"
        unique_array = conversation & currentConversation
        puts "#{unique_array}"

        if  unique_array.size > count_unique_word
            count_unique_word = unique_array.size
            unique = unique_array
            index_conversation = index 
        end
    end

    if unique.empty?
        return currentConversation
    end
    puts "unique: #{unique} and count: #{count_unique_word} and index: #{index_conversation}"
    last_unique_word = unique.last
    last_unique_word_index = conversations[index_conversation].find_index(last_unique_word)
    
    last_words = conversations[index_conversation].drop(last_unique_word_index + 1)
    puts "Last word: #{last_unique_word}"
    puts "Last word index: #{last_unique_word_index}"
    puts "Last words: #{last_words}"
    final_conversation = currentConversation + last_words
    puts "Current conversation: #{final_conversation}"
end


chatBot([
            ["where","are","you","live","i","live","in","new","york"], 
            ["are","you","going","somewhere","tonight","no","i","am","too","tired","today"], 
            ["hello","what","is","your","name","my","name","is","john"]
        ], 
        ["hello", "john", "do", "you", "have", "a", "favorite", "city", "to", "live", "in", "yes", "it", "is"])
# Expected output: 
#  ["hello", "john", "do", "you", "have", "a", "favorite", "city", "to", "live", "in", "yes", "it", "is", "new", "york"]

puts(chatBot([
                ["lets","have","some","fun"], 
                ["i","never","get","it"], 
                ["be","aware","of","this","house"], 
                ["he","will","call","her"]
            ], 
            ["can", "you", "please"]))
# Expected output: ["can", "you", "please"]

chatBot([
            ["it","is","my","favorite","movie"], 
            ["really","i","did","not","know"]
        ], 
        ["what", "you", "think", "about", "this", "movie"])
# Expected output: ["what", "you", "think", "about", "this", "movie"]

chatBot([
            ["tonight","i","need","dollar","bills"], 
            ["i","dont","keep","fun"], 
            ["cheap","thrills","long","to","feel","money"], 
            ["the","bills","dont","need","the","dancing","baby"], 
            ["fun","dollar","dancing","thrills","the","baby","i","need"], 
            ["dont","have","fun"], 
            ["no","no","dont","have","dancing","fun","tonight"]
        ],
        ["beat", "the", "can", "as", "i", "dont", "feel", "thrills"])
 # Expected output: ["beat", "the", "can", "as", "i", "dont", "feel", "thrills", "need"]

 chatBot([
            ["fame","what","you","like","is","in","the","limo"], 
            ["fame","what","you","get","is","no","tomorrow"], 
            ["fame","what","you","need","you","have","to","borrow","fame"], 
            ["fame","its","mine","its","mine","its","just","his","line"], 
            ["to","bind","your","time","it","drives","you","to","crime"]
        ],
        ["what", "is"])

# Expected_output: ["what", "is", "in", "the", "limo"]