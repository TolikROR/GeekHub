# 1
## Generate a hash. Key will be a month, value will be average temperature for
# #this month.
class HashWeather
  ARRAY_WITH_WEATHER = [
    '31.01  -7', '22.02  -20', '25.02  -15', '11.03  -5', '15.03  -1',
    '17.03  1', '21.03  3', '28.03  6', '02.04  5', '10.04  9', '13.04  6',
    '15.04  5', '18.04  7', '21.04  8', '24.04  7', '27.04  11', '30.04  11',
    '03.05  13', '05.05  12', '08.05  15', '11.05  13', '14.05  14',
    '17.05  16', '20.05  15', '24.05  17', '27.05  16', '01.06  20',
    '03.06  25', '07.06  27', '10.06  26', '13.06  26', '15.06  25',
    '18.06  27', '21.06  28', '24.06  27', '27.06  31', '30.06  31',
    '03.07  33', '05.07  32', '08.07  35'
  ].freeze

  attr_accessor :changed_array

  def initialize
    @changed_array = deleted_days_in_array(ARRAY_WITH_WEATHER)
  end

  def average_value_for_month
    hash_for_result = {}
    @changed_array.map do |e|
      key = get_key(e)
      weather_values = array_with_weathers(@changed_array, key)
      val = get_value_weather(weather_values)
      hash_for_result[key] = val
    end
    hash_for_result
  end

  private

  def array_with_weathers(array, key)
    values = []
    array.map do |value|
      equivalence_key = get_key(value)
      values.push(value.slice(4, value.length).to_i) if key == equivalence_key
    end
    values
  end

  def deleted_days_in_array(array)
    array.map do |e|
      e.slice(e.index('.') + 1..e.length)
    end
  end

  def get_key(str)
    str.slice(0..str.index(' ') - 1)
  end

  def get_value_weather(arr)
    arr.inject(:+) / arr.length
  end
end
