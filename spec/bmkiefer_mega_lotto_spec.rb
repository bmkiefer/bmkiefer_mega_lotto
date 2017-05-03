require "spec_helper"

RSpec.describe BmkieferMegaLotto do
  it "has a version number" do
    expect(BmkieferMegaLotto::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end

  describe "#configure" do
    before do
      BmkieferMegaLotto.configure do |config|
        config.drawing_count = 10 
      end
    end

    it "returns an array with 10 elements" do
      draw = BmkieferMegaLotto::Drawing.new.draw
      
      expect(draw).to be_a(Array)
      expect(draw.size).to eq(10) 
    end
  end
end
