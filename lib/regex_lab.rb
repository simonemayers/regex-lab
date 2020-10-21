def starts_with_a_vowel?(word)
    if word = word.match(/\b[aeiouAEIOU]\w*/)
        true
    else
        false 
    end
end

def words_starting_with_un_and_ending_with_ing(text)
    text.scan(/\bun\w*ing\b/)
end

def words_five_letters_long(text)
    text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    if [text] == text.scan(/^[A-Z].*[.!?]/)
        true
    else
        false
    end
end

def valid_phone_number?(phone)
    if [phone] == phone.scan(/\d{10}/)
        true
    elsif [phone] == phone.scan(/[(]\d*[)]\d*[-]\d{4}\b/)
        true
    elsif [phone] == phone.scan(/\d{3}\s\d{3}\s\d{4}/)
        true
    elsif [phone] == phone.scan(/[(]\d{3}[)]\d{7}/)
        true
    else
        false 
    end
end
