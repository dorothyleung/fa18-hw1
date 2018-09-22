class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    # Q4 CODE HERE
    int_arr = a.map(&:to_i)
    int_arr_two = int_arr.map{|i| i+2}.uniq

    # even = []
    # i = 0
    # while i < int_arr_two.length
    #   if int_arr_two[i] % 2 == 0
    #     even.push(int_arr_two[i])
    #   end
    #   i += 1
    # end

    # Ruby way
    even = []
    int_arr_two.each do |item|
      if item % 2 == 0
        even.push(item)
      end
    end

    even.reject{|number| number >= 10}.inject(:+)

  end
end
