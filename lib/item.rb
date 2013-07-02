class Item

  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def to_s
    "The string is #{value}"
  end

  def compress
    if self.value.empty?
      return "not value"
    else
      val   = self.value.split(//)
      last  = val[0]
      count = 0
      r     = ""
      val.each_index do |i|
        if last == val[i]
          count +=1
        else
          r += "#{last}#{count.to_s}"
          count = 1
        end
        last = val[i]
        r += "#{last}#{count.to_s}" if val[i+1].nil?
      end
      return r
    end
  end

  def decompression
    if self.value.empty?
      return "not value"
    else
      val    = self.value.split(//)
      r      = ""
      val.each_index do |i|
        first  = val[i]
        second = val[i+1]
        third  = val[i+2]
        r += "#{first*second.to_i}" if first != third  or third.nil?
      end
    end
    return r
  end
end


