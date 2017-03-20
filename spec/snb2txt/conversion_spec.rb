require 'spec_helper'

module Snb2txt
  describe Conversion do
    it 'extracts text from the note' do
      expect {
        described_class.new('spec/fixtures/my_note.snb').call
      }.to output("Sonos\nPut.io\n").to_stdout
    end
  end
end
