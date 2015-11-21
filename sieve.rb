class Sieve

  def initialize(number)
    @number = number
  end

  def primes
    @number_array = []
    (2..@number).each do |num|
      @number_array << [num, 'true']
    end
    mark_non_primes
    primes_array = @number_array.select {|arr| arr[1] == 'true'}
    primes_array.map {|item| item[0]}
  end

  private

  def mark_non_primes
    @number_array.each do |arr|
      if arr[1] == 'true'
        @number_array.each do |arr2|
          if arr2[0] % arr[0] == 0 && arr2[0] != arr[0]
            arr2[1] = 'false'
          end
        end
      end
    end
  end


end