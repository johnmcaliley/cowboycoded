require 'spec_helper'

describe String do
  it "should return true if string is numeric" do
    "1".is_numeric?.should be true
    "1.0".is_numeric?.should be true
    ".1".is_numeric?.should be true
    "1,000".is_numeric?.should be true
    "1,000.123".is_numeric?.should be true
    "0".is_numeric?.should be true
  end
  
  it "should return false if string is not numeric" do
    "1t".is_numeric?.should be false
    "".is_numeric?.should be false
    "hello".is_numeric?.should be false
    "1,000.a".is_numeric?.should be false
  end
end