def bisect(a, x)
    a.each_with_index do |y, i|
      return i if y >= x
    end
  
    a.length
  end


def remove_dups(a)
    p a.uniq
    p Hash[a.zip a].values
  
    b = []
    a.each { |x| b.append x unless b.include? x }
    p b
  
    b = []
    p(a.filter do |x|
      i = bisect(b, x)
  
      if b[i] == x
        false
      else
        b.insert i, x
  
        true
      end
    end)
end


def main()
    loop do
        print "Enter numbers separated by ',': "
            remove_dups(gets.chomp.split(',').map(&:to_i))
        end
end

main()
