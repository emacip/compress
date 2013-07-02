#coding: utf-8
require "#{File.dirname(__FILE__)}/../lib/item"

describe Item do

  it "set new item" do
    item = Item.new("aaaa")
    item.value.should == "aaaa"
  end

  it "get new item to_s" do
    item = Item.new("aaaa")
    item.to_s.should == "The string is aaaa"
  end

  it "compression some nil text" do
    item = Item.new("")
    item.compress.should == "not value"
  end

  it "compression some text aaaa" do
    item = Item.new("aaaa")
    item.compress.should == "a4"
  end

  it "compression some dificult text aaabbccc" do
    item = Item.new("aaabbccc")
    item.compress.should == "a3b2c3"
  end

  it "decompression some nil text" do
    item = Item.new("")
    item.decompression.should == "not value"
  end

  it "decompression some text a4" do
    item = Item.new("a4")
    item.decompression.should == "aaaa"
  end

  it "decompression some dificult text a4b2" do
    item = Item.new("a4b2")
    item.decompression.should == "aaaabb"
  end

end