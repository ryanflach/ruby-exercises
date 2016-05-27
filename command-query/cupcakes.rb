class Cupcakes
  attr_reader :cupcakes

  def initialize
    @cupcakes = []
  end

  def sweetest
    if cupcakes.empty?
      nil
    else
      @cupcakes.sort_by {|cupcake|
        cupcake.sugar
      }.last
    end
  end

  def <<(cupcake)
    @cupcakes << cupcake
  end
end
