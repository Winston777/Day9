require 'nokogiri'
require 'open-uri'


    page = Nokogiri::HTML(open("https://www.nosdeputes.fr/deputes"))  

    array = []
    x = 0
    page.css("span.list_nom").each do |n|
	array[x] = n.content
    x += 1
end

    array_url = []
    y = 0
    page.css('span.urlphoto').each do |m|
	    array_url[y] = 'https://www.nosdeputes.fr/' + m['title'][1..-1]
        y += 1
        end

    array_email = []
    z = 0
    594.times do |o|
        page_email = Nokogiri::HTML(open(array_url[o]))
    end
        page_email.xpath('//*[@id="b1"]/ul[2]/li[1]/ul/li[1]/a').each do |j|
            array_email[z] = j.content
            z += 1  
            end
