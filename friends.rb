def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  snacks = person[:favourites][:snacks]
  for snack in snacks
    if(food == snack)
      return true
    else
      return false
    end
  end
end

def add_friend(person, new_friend)
  person[:friends].push(new_friend)
end

def remove_friend(person, not_a_friend)

  friends = person[:friends]
  for friend in friends

    if(friend == not_a_friend)

      #person[:friends].delete_at(not_a_friend.index)
      person[:friends].delete(not_a_friend)

    end
  end
end

def total_money(people)
  counter = 0
  for person in people
    counter += person[:monies]
  end
  return counter
end

def give_money(lender, loaner, amount)

  one = lender[:monies] - amount
  two = loaner[:monies] + amount

  return [one, two]

end

def everyones_favourite_food(people)

  food = []

  for person in people
    for snack in person[:favourites][:snacks]
      food.push(snack)
    end
  end

  return food

end

def people_with_no_friends(people)
  no_friends_people = []

  for person in people
    if person[:friends].length == 0
      no_friends_people.push(person[:name])
    end
  end

  return no_friends_people
end
