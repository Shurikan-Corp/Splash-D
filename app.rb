#!/usr/bin/env ruby
#encoding: UTF-8

class SplashD < Shoes
url "/", :mainscreen

def mainscreen

require 'net/http'
require 'json'
require 'dotenv/load'

# App Menu

mb = menubar
helpmenu = menu "Help"
settingsitem = menuitem "Settings", key: "control_s" do
end
helpmenu << settingsitem
updateitem = menuitem "Check for Updates" do
  system "start %CD%/updater.exe"
end
helpmenu << updateitem
licenseitem = menuitem "View License" do
  alert "Copyright (c) 2020 JDsnyke\n\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\n\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.", title: "MIT License"
end
helpmenu << licenseitem
aboutseperator = menuitem "---"
helpmenu << aboutseperator
aboutitem = menuitem "About", key: "control_i" do
  current_ver = File.read("version.txt")
  alert "Version : #{current_ver}\n\nRuby Version : #{RUBY_VERSION}\n\nShoes Version : #{Shoes::VERSION_NUMBER} - r#{Shoes::VERSION_REVISION}\n\nAuthors : JDsnyke", title: "About"
end
helpmenu << aboutitem
mb << helpmenu

@loc = "en-AU"
@source = "Bing"

if @source == "Bing"
  url = URI(ENV['BING_API']+ "#{@loc}.json")
  response = Net::HTTP.get(url)
  data = JSON.parse(response)

  data["images"].each do |info|
    @link = "https://www.bing.com" + info["url"]
    @link.gsub!("&pid=hp", "")
    @ref = info["copyright"]
    @ref.gsub!("(", "\n(")
    @refmore = info["copyrightlink"]
  end

  Thread.new do
    download @link, :save => "lib/scripts/img/daily.jpg"
    info "Done downloading image"
  end

elsif @source == "Gearth"
  url = IO.read("lib/json/earthview.json")
  data = JSON.parse(url)
  value = rand(0..1519)
  @link = data[value]["image"]
  @ref = data[value]["country"] + "\n(© Google Earth View)"
  @refmore = data[value]["map"]
  
  Thread.new do
    download @link, :save => "lib/scripts/img/daily.jpg"
    info "Done downloading image"
  end
end

stack do
  image "#{@link}", height: 300, width: 500, cache: false
end

stack do
  para "#{@ref}", align: "center"
end

stack do
  flow do
  para "                                    "
  button "Apply" do
    system "start %CD%/lib/scripts/apply.bat"
  end
  para "  "
  button "Learn More" do
    system "start #{@refmore}"
  end
  end
end

end
end

Shoes.app :title => "Splash'D", height: 420, width: 500, menus: true