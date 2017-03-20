require 'zip'
require 'nokogiri'

module Snb2txt
  class Conversion
    def initialize(filename)
      @filename = filename
    end

    def call
      Zip.warn_invalid_date = false
    	Zip::File.open(@filename) do |zip_file|
        entry = zip_file.glob('snote/snote.xml').first

        xml = Nokogiri::XML(entry.get_input_stream)

        xml.xpath('//sn:t').each do |node|
          puts node.text
        end
      end
    end
  end
end
