names_all = [
  "Stuart Blanda", "Kaden Batz", "Cornell Durgan", "Mrs. Kieran Goldner",
  "Miss Emile Littel", "Carolyne Terry", "Mrs. Ronaldo Buckridge",
  "Cristal Braun", "Dr. Joanne Bartoletti", "Kenton Block", "Jeromy Medhurst",
  "Gussie Daniel V", "Kitty Senger Jr.", "Lexus Gibson", "Kaylah Howell",
  "Maxie Wilderman", "Kayden Mohr", "Devonte Skiles", "Tina Mante", "Heloise Mann"
]
def delete_words(str)
  str.slice! "Mrs. "
  str.slice! "Dr. "
  str.slice! "Miss "
  str.slice! " V"
  str.slice! " Jr."
end

def task_one(names)
  names_hash  = {}

  names.map do |e|
    delete_words(e)

    key = e[0, e.index(' ')]
    value = e[e.index(' ') + 1, e.size]

    obj = { key => value }
    names_hash.merge!(obj)
  end
  names_hash
end
puts task_one(names_all)

def task_two(names)
  names_hash = {}
  names.map do |e|
    delete_words(e)

    key = e[0]
    value = e[e.index(' ') + 1]

    obj = { key => value }
    names_hash.merge!(obj)
  end

  names_hash
end
#puts task_two(names_all)

def task_three(names)
  chars = []

  names.map do |e|
    delete_words(e)
    chars.push(e[0], e[e.index(' ') + 1])
  end
  chars.uniq.sort
end
#puts task_three(names_all)

def task_four(names)
  names.map do |e|
    arr = e.split(' ')

    if arr[0] == "Mrs." || arr[0] == "Dr." || arr[0] == "Miss"
      first_name = arr[1]
      arr[1] = arr[2]
      arr[2] = first_name
    else
      first_name = arr[0]
      arr[0] = arr[1]
      arr[1] = first_name
    end
    e = arr.join(' ')
  end
end
#puts task_four(names_all)
