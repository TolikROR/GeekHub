# Need to find a count of keys which starts from "yes"
class CountKey
  HASH_KEYS = {
    'yes' => 23, 'b' => 'travel', 'yesterday' => 34.5,
    :yesss => :fg, try: 30, key: 'some value',
    'yesterday1' => 34, 'yesteryear' => 2014
  }.freeze
  def initialize
    @keys = HASH_KEYS
  end

  def count_keys
    count = 0
    @keys.each_key do |key|
      count += 1 if key.to_s.include? 'yes'
    end
    puts count
  end
end

count = CountKeys.new
count.count_keys
