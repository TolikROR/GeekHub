emails = [
  'lou.hand@mohr.name', 'sigmund@schamberger.org', 'clement@kreigerbeer.co',
  'marcus_strosin@nienow.org',
  'levi.kuhn@tremblay.info', 'arlo@blickgrant.name', 'jonathon@rath.co',
  'kailee.olson@quigley.org', 'alaina@renner.net', 'dylan@mclaughlin.net',
  'luna_hyatt@ritchiecronin.name', 'amie_blick@kiehn.info',
  'carolina@bechtelargleichner.name', 'saul_heaney@heathcote.com',
  'dell_tromp@kuvalisfunk.io', 'lexie.hyatt@okuneva.com',
  'marquise@oconnerbailey.name', 'adah@hauckspencer.info',
  'gilberto@cronin.name', 'dock.braun@bins.com'
]

ages = [
  30, 14, 30, 27, 23, 17, 25, 22, 24, 13, 27,
  15, 22, 13, 19, 20, 16, 10, 21, 25
]

names = %w[
  Michel Reagan Annabelle Chanelle Jennyfer Adonis
  Vidal Lera Aurore Garrett Vergie Lauryn Paxton
  Osborne Clinton Karson Ellie Hermann Else Otilia
]
# 1
users = {}
age_and_name = []
emails.each_index do |i|
  age_and_name = [ages[i], names[i]]
  users[emails[i]] = age_and_name
end

# 2
users.select { |_k, v| v[0] > 19 }

# 3
users.sort_by { |_key, value| value[1] }

# 4
users.each_key do |key|
  puts key.to_s.slice(key.to_s.index('@') + 1..key.to_s.length)
end
