class Hashish
  def initialize
    @hash = []
  end

  def store(key, value)
    input_array = [key, value]
    @hash << input_array
    input_array
  end

  def fetch(key)
    @hash.each do |arr|
      if key == arr[0]
        return arr[1]
      end
    end
    "key not in hash"
  end

  def has_key?(key)
    fetch(key) != "key not in hash"
  end
end
