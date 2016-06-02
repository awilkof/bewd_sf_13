require 'pry'
require 'pry-byebug'
require 'mechanize'
require 'csv'

#Goal:
   #1) Find apartment listings section of craigslist using the 'mechanize' gem
       #a Use the existing form's 'query', 'min_price' and 'max_price' to trigger queries.
       #b Return the title, url, price and location for each listing
   #2)  Save the results to a CSV file using Ruby's 'csv' library
   #3) Use OOP, DRY and 'Brick By Brick' principles to build your script
       #Using the apartment.rb file to create an instance of each

#sample_apartment_url 'http://sfbay.craiglist.org/search/sfc/apa'

def scrape(url)
  #creates a new instance of the mechanize class, which creates unique IDs for everything on the page

  scrape = Mechanize.new
  #gets a specific map of the endpoint within the page
  scraper = scrape.hisotry_added = Proc.new { sleep 1.0 }
#Finding search form part of view layer,
  scraper.get(url) do |page|
#find a specific form inside of the bigger
    form = page.form_with(id: 'searchform') do |s|
#assigning new values to query, min_price, and max_price which are input fields
#looking on the page for search form, and then overwriting values
#create a query that gets dynamic answers
#make this dynamic instead of hardcode (I think gets)
      s['query'] = "Loft"
      s['min_price'] = 1000
      s['max_price'] = 6000
    end
    #Submitting search request with above values and returning results
      data_search_results(form.submit)
  end
end
#identifying/pinpointing specific html to variable to return
def data_search_results(data)
#searches for anything with a class that has p.row in it
  results = data.search('p.row')
  results.each do |listing|
      apartment = create_apartment(listing)
  end
end

def create_apartment(listing)
  price = listing.search('span.price').text.strip
  neighborhood = listing.search('span.pnr').text.strip #fix
  url = listing.css('a')[1].attributes["href"].values #this is just an endpoint, add a full hyperlink URL
  #use a string class to combine the whole url
  name = listing.search('span.pl').text.strip #needs to be fixed
  #creates an instance of the apartment here.
  #apartment.new(price, neighborhood, name, url)
end
#def make a method that turns this into a csv file

url = 'http://sfbay.craiglist.org/search/sfc/apa'
scrape(url)
#scraper.history_added = Proc.new { sleep 1.0 }
