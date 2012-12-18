#encoding: utf-8
require_relative "../lib/boot"

describe Ad do

  let(:ad) {Ad.new("../../spec/alfa_romeo.html")}

  it "returns description" do
    ad.description.should =~ /Alfa Romeo 159, ļoti labā tehniskā stāvoklī/
  end

  it "returns property fields" do
    ad.property_fields.should == true
  end

end