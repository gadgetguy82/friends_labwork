def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, snack)
  foods = person[:favourites][:snacks]
  for food in foods
    if (food == snack)
      return true
    end
  end
  return false
end

def add_friend(person, name)
  person[:friends].push(name)
end

def remove_friend(person, name)
  person[:friends].delete(name)
end

def total_money(people)
  total= 0
  for person in people
    total += person[:monies]
  end
  return total
end

def lend_money(lender, lendee, amount)
  if (lender[:monies] >= amount)
    lender[:monies] -= amount
    lendee[:monies] += amount
  end
end

def all_fav_food(people)

  all_fav_foods=[]
  for person in people
    all_fav_foods += person[:favourites][:snacks]
  end
  return all_fav_foods
end

def nae_mates(people)

  nae_mate_list = []
  for person in people
    if person[:friends].length == 0
      nae_mate_list.push(person[:name])
    end
  end
  return nae_mate_list
end
