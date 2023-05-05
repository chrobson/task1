class CountElements
    def initialize(elements)
      @elements = elements
    end
  
    def perform
      count_elements
    end
  
    private
  
    attr_reader :elements
  
    def count_elements
      elements_count = Hash.new(0)
      elements.each { |element| elements_count[element] += 1 }
      elements_count
    end
  end

  output = CountElements.new([0,4,2,1,0,2,5]).perform
  puts output
  