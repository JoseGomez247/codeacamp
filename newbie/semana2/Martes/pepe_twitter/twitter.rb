require 'nokogiri'
require 'open-uri'
require 'net/http'
class TwitterScrapper

  def initialize(url)
    @url=url
   @doc=Nokogiri::HTML(open(url))
  end
  def extract_username
    profile_name = @doc.search(".ProfileHeaderCard-name > a")
    name=profile_name.first.inner_text
    name
  end
  def extract_tweets
    #____________________Time
    tweets_time= @doc.search(".stream .time")
    arr_time= []
    arr_time2=[]
    10.times do |x|
      arr_time << tweets_time[x].inner_text
    end
    arr_time.each do |y|
      arr_time2<<y.to_s.chop
    end
    arr_time2
  #____________________tweets
    tweets_text= @doc.search(".stream .js-tweet-text-container")
    arr_text= []
    10.times do |y|
    arr_text << tweets_text[y].inner_text
  end
    var_text2=[]
    arr_text.each do |textt|
      var_text2 << textt.to_s.chop
    end
    var_text2
  #____________________retweets
  arr_retweets=[]
  retweets= @doc.search(".ProfileTweet-action--retweet > .ProfileTweet-actionCount")
  10.times do |ret|
  arr_retweets<<retweets[ret].inner_text
end
var_text3=[]
arr_retweets.each do |textt|
  var_text3 << textt.to_s.chop
end
var_text3
#____________________Favoritos
arr_favs= []
favorites= @doc.search(".ProfileTweet-action--favorite > .ProfileTweet-actionCount")
10.times do |fav|
  arr_favs << favorites[fav].inner_text
end
var_text4=[]
arr_favs.each do |favs|
  var_text4 << favs.to_s.chop
end
var_text4

#_________________resultado
str_f= ' '
10.times do |time|
str_f << "Tweets: #{arr_time2[time]}: #{var_text2[time]} #{var_text3[time]} #{var_text4[time]}"
end
str_f
  end
  def extract_stats
    profile_stats = @doc.search(".ProfileNav-list  .ProfileNav-value")
    arr=[]
    4.times do |x|
    arr<<profile_stats[x].inner_text
  end
  "Stats: Tweets: #{arr[0].strip}, Siguiendo: #{arr[1]}, Seguidores: #{arr[2]}, Favoritos: #{arr[3]}"
  end
end
fascinatingpics= TwitterScrapper.new('https://twitter.com/Fascinatingpics')
tweeter=TwitterScrapper.new(ARGV*'')
  puts  fascinatingpics.extract_username
  puts fascinatingpics.extract_stats
  puts fascinatingpics.extract_tweets
  puts tweeter.extract_username
  puts tweeter.extract_stats
  puts tweeter.extract_tweets
