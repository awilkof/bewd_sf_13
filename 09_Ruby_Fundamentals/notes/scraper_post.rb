#1 Determine the tools - mechanize
#2 Determine patterns from the websites
#3 Develop a game plan
  #a connect to craigslist using mechanize
  #b match and store the search parameter IDs needed on the form page
  #c form.submit with the query, min_price, max_price
  #d parse results
  #e csv

require 'pry'
require 'pry-byebug'
require 'mechanize'
require_relative 'apartment'
require 'csv'

#method that scrapes CL
#Creates an instance of mechanize
#that will create an instance of everything on the page

def connect_scraper
  #creates a new instance like you would any other class
  Mechanize.new
end
#submit
  def search_results(form_values)
    results = form_values.submit
    results.search('p.row')
  end
#the main scrape method itself
def scrape_list(url, query_name, max_price, min_price)
  #give it time to break between hitting the site so CL won't block our gets
  scrape.history_added = Proc.new { sleep 40.0 }
#Use mechanize to save all the IDs on the page into objects to be saved
  connect_scraper.get(url) do |search_page|
    form_values = search_page.form_with(id: 'searchform') do |search|
      search['query'] = query_name
      search['min_price'] = min_price.to_i
      search['max_price'] = max_price.to_i
    end
    raw_results = search_results(form_values)
    parse_results(raw_results)
  end
end

#iterate through results, create instance of apartment,
#shovel each result into an array
def parse_results(raw_results)
  results = []
  results << ['Name', 'URL', 'Price', 'Neighborhood']

  raw_results.each do |results|
  link =
  name =
  url=
  link.
  price =
  neighborhood = ...

  puts "This apartment is located in #{neighborhood}."
  a = Apartment.new(name, url, price, neighborhood)

  results << [a.name, a.url, a.price, a.neighborhood]

  create_csv_(results)
end

def create_csv(result)

end

#provide dynamic place for query, price, range and url
url = 'http://newyork.craigslist.org/search/hhh'
query_name = "Apartment"
min_price = 1000
max_price = 2000

binding.pry
