class Topping < Record
  def initialize(topping_params)
    super(topping_params[:id], topping_params[:type])
  end
end
