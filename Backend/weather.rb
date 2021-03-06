require 'date'
=begin
  Weather day ADT
=end
class Weather
=begin
  Constructor for Weather day ADT,
  Inputs:
    date: 8 String convertible to int
    precipitation: int
    t_max: float
    t_min: float
=end
  def initialize date, precipitation, t_max, t_min
    @date = Date.new(
        date.byteslice(0..3).to_i,
        date.byteslice(4..5).to_i,
        date.byteslice(6..7).to_i
    )
    @precipitation = precipitation.to_i
    @temp = ((t_min.to_f/10)..(t_max.to_f/10))
  end

=begin
  Returns date
=end
  def date
    @date
  end
=begin
  returns temperature as a range
=end
  def temp
    @temp
  end
=begin
  returns t_max int
=end
  def t_max
    @temp.max
  end
=begin
  returns t_min int
=end
  def t_min
    @temp.min
  end
=begin
  returns precipitation
=end
  def precipitation
    @precipitation
  end
=begin
  converts to string
=end
  def to_s
    "[ Date: " + @date.to_s + ", Precipitation: " + @precipitation.to_s + ",  Temperature: " + @temp.to_s + " ]"
  end
=begin
  equality operator
=end
  def == other
    self.class == other.class && self.state == other.state
  end
=begin
  private: returns state
=end
  def state
    self.instance_variables.map { |variable| self.instance_variable_get variable }
  end

  private :state

end