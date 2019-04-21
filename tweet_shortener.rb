# Write your code here.

def dictionary
  substitutes = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split(" ").map do | word |
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end


def bulk_tweet_shortener(tweet)
  tweet.map do | tweets |
    puts word_substituter(tweets)
  end
end

def selective_tweet_shortener(tweet)
  tweet.split(" ").map do | message |
    if message.length >140
      word_substituter(message)
    elsif message.length <= 130
      message
    end
  end
end
    