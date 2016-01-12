require('rspec')
require('hashish')

describe(Hashish) do
  describe("#store") do
    it("properly stores a hash key, value pair") do
      test_hash = Hashish.new()
      expect(test_hash.store("hello", "world")).to(eq(["hello","world"]))
      expect(test_hash.store("goodbye", "world")).to(eq(["goodbye","world"]))
    end
  end

  describe("#fetch") do
    it("properly fetches a value from a hash") do
      test_hash = Hashish.new()
      test_hash.store("hello", "utah")
      test_hash.store("goodbye", "world")
      expect(test_hash.fetch("goodbye")).to(eq("world"))
      expect(test_hash.fetch("pickle")).to(eq("key not in hash"))
    end
  end

  describe("#has_key?") do
    it("properly checks if a key is in a hash") do
      test_hash = Hashish.new()
      test_hash.store("hello", "utah")
      test_hash.store("goodbye", "world")
      expect(test_hash.has_key?("hello")).to(eq(true))
      expect(test_hash.has_key?("pickle")).to(eq(false))
    end
  end
end
