require_relative '../lib/caesar_cipher'

describe "letter_cipher" do
  it "should return the letter whith a gap of i letters" do
    expect(word_cipher("b" , 2)).to eq("d")
    expect(word_cipher("s",1)).to eq("t")
    expect(word_cipher("k", 26)).to eq("k")
    
  end
end

describe "word_cipher" do
  it "should return the word wrd whith a gap of i letters" do
    expect(word_cipher("ba" , 2)).to eq("dc")
    expect(word_cipher("super",1)).to eq("tvqfs")
    expect(word_cipher("skusku", 26)).to eq("skusku")
    
  end
end

describe "caesar_cipher" do
  it "should return the sentence str whith a gap of n letters , keeping the same ponctuation, the same caps and the" do
    expect(caesar_cipher("skusku comme dirait migos" , 25)).to eq("rjtrjt bnlld chqzhs lhfnr")
    expect(caesar_cipher("super",1)).to eq("tvqfs")
    expect(caesar_cipher("bah super", 1)).to eq("cbi tvqfs")
    
  end
end

