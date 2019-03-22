class Batter < Record
  def initialize(batter_params)
    super(batter_params[:id], batter_params[:type])
  end
end
