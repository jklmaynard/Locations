require('rspec')
require('locations')
require('pry')

describe(Location) do
  before() do
    Location.clear()
  end

  describe('#place') do
    it("lets you put in a name of a location") do
      test_location = Location.new("Aberystwyth, Wales")
      expect(test_location.place()).to(eq("Aberystwyth, Wales"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Location.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a location to the array of saved locations") do
      test_location = Location.new("Tuscaloosa, Alabama")
      test_location.save()
      expect(Location.all()).to(eq([test_location]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved locations") do
      Location.new("Tuscaloosa, Alabama").save()
      Location.clear()
      expect(Location.all()).to(eq([]))
    end
  end

end
