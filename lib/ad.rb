#encoding: utf-8

class Ad
  def initialize(url)
    @url = url
    file = File.expand_path(url, __FILE__)
    @doc = Nokogiri::HTML(open(file))
  end

  def description
    @doc.at_css("#msg_div_msg table table td").text
  end

  def property_fields
    debugger
    @doc.at_css("#msg_div_msg table table tr")

  end


end