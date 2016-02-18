require_relative 'user_agent_list/version'
require_relative 'user_agent_list/parser_ua'
require 'nokogiri'
require 'open-uri'

module UserAgentList
  include ParserUa
  extend self
  class BrowserNotSupported < StandardError;end

  SUPPORTED_BROWSERS = ["ABrowse", "Acoo Browser", "America Online Browser",
                        "AmigaVoyager", "AOL", "Arora", "Avant Browser", "Beonex",
                        "BonEcho", "Browzar", "Camino", "Charon", "Cheshire", "Chimera",
                        "Chrome", "ChromePlus", "Classilla", "CometBird", "Comodo_Dragon",
                        "Conkeror", "Crazy Browser", "Cyberdog", "Deepnet Explorer",
                        "DeskBrowse", "Dillo", "Dooble", "Edge", "Element Browser", "Elinks",
                        "Enigma Browser", "EnigmaFox", "Epiphany", "Escape", "Firebird", "Firefox",
                        "Fireweb Navigator", "Flock", "Fluid", "Galaxy", "Galeon", "GranParadiso",
                        "GreenBrowser", "Hana", "HotJava", "IBM WebExplorer", "IBrowse", "iCab", "Iceape",
                        "IceCat", "Iceweasel", "iNet Browser", "Internet Explorer", "iRider", "Iron",
                        "K-Meleon", "K-Ninja", "Kapiko", "Kazehakase", "KKman", "KMLite", "Konqueror",
                        "LeechCraft", "Links", "Lobo", "lolifox", "Lorentz", "Lunascape", "Lynx", "Madfox",
                        "Maxthon", "Midori", "Minefield", "Mozilla", "myibrow", "MyIE2", "Namoroka",
                        "Navscape", "NCSA_Mosaic", "NetNewsWire", "NetPositive", "Netscape", "NetSurf",
                        "OmniWeb", "Opera", "Orca", "Oregano", "osb-browser", "Palemoon", "Phoenix", "Pogo",
                         "Prism", "QtWeb Internet Browser", "Rekonq", "retawq", "RockMelt", "Safari",
                         "SeaMonkey", "Shiira", "Shiretoko", "Sleipnir", "SlimBrowser", "Stainless",
                         "Sundance", "Sunrise", "surf", "Sylera", "Tencent Traveler", "TenFourFox",
                         "theWorld Browser", "uzbl", "Vimprobable", "Vonkeror", "w3m", "WeltweitimnetzBrowser",
                          "WorldWideWeb", "Wyzo"].freeze

  def supported_browsers
    SUPPORTED_BROWSERS
  end
end

puts UserAgentList.by_browser("ABrowse").inspect  
