module UserAgentList
  module ParserUa
    def all
      result = {}
      parser.css('h3').each do |item|
        parser.css("a:contains('#{item.text}')").each do |link|
          result[item.text] ||= []
          result[item.text] << link.children.text unless link.children.text =~ /-->>/
        end
        result.delete(item.text) if result[item.text] && result[item.text].empty?
      end
      result
    end

    def by_browser(string)
      raise BrowserNotSupported, "#{string} is not supported" unless SUPPORTED_BROWSERS.include?(string)

      result = []
      parser.css("a:contains('#{string}')").each do |link|
        result << link.children.text unless link.children.text =~ /-->>/
      end
      result
    end

    private

    def useragentstring_url
      "http://www.useragentstring.com/pages/Browserlist/"
    end

    def parser
      @doc ||= Nokogiri::HTML(open(useragentstring_url).read)
    end

  end
end
