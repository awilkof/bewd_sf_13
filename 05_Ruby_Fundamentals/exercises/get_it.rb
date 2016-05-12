#1 - Pull the json from the reddit API via
  # http://www.reddit.com/.json
  # http://mashable.com/stories.json
#2 - Parse it using the JSON library
#3 - Find the stories based on techniques used in the code_along (max of 25 provided)
#4 - Create a new story hash out of each story with the following keys :title, :upvotes and :category
    #title, #category and #upvotes may not be the names use
#5 - Add each story to an array
#6 - Print each story from the array on your "Front Page"
#7 - BONUS ### create an 'csv' file using the api data & Ruby's CSV library
     # -> http://ruby-doc.org/stdlib-2.2.2/libdoc/csv/rdoc/CSV.html
         #title, upvote, category are the required columns

require 'typhoeus'#library that faciltates http requests
require 'pry'
require 'pry-byebug'
require 'json'
#2 Parsing response into JSON
def connect_to_api(url)
  response = Typhoeus.get(url)
  return JSON.parse(response.body)
end


#3 Find stories
def get_stories(reddit_json_response)
  stories = reddit_json_response['data']['children']
  stories.each do |story|
    title = story['data']['title']
    categories = story['data']['subreddit']
    upvotes = story['data']['ups']
    create_story_hash.push(story)
  end
end

def create_story_hash(story_hash)
  story_hash = {title: story["title"], categories: story["subreddit"], upvotes: story["ups"]}

end

url ='http://www.reddit.com/.json'
reddit_json_response = connect_to_api(url)
get_stories(reddit_json_response)
