class Item < Record
  attr_reader :name,
              :ppum,
              :batters,
              :toppings

  def initialize(item_params)
    super(item_params[:id], item_params[:type])
    @name = item_params[:name]
    @ppu = item_params[:ppu]
    @batters = make_batters(item_params[:batters])
    @toppings = make_toppings(item_params[:topping])
  end

  def make_batters(batters)
    batters[:batter].map do |batter_params|
      Batter.new(batter_params)
    end
  end

  def make_toppings(toppings)
    toppings.map do |topping_params|
      Topping.new(topping_params)
    end
  end
end
