require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))
while i = 1
    array = []
    x = 0
    page.css('a.price').each do |n|
    array[x] = n['data-usd']
    x += 1
    end

    array_02 = []
    y = 0
    page.css('a.currency-name-container').each do |m|
    array_02[y] = m.content
    y += 1
    end

    hash = Hash[array_02.zip(array)]

    
puts hash
sleep 3600
end