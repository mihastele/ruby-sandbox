require 'bcrypt'

users = [
  {name: "marko", password: "11111"},
  {name: "mirko", password: "12111"},
  {name: "murko", password: "13111"},
]
passwords = []


def create_hash_digest(password)
  return BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end


def secure_init_list(users)
  users.each do |record|
    record[:password] = create_hash_digest(record[:password])
  end
  puts users
  return users
end



def authenticate_user(username, password, list_of_users)
  list_of_users.each do |record|
    if record[:name] == username && verify_hash_digest(record[:password]) == password
      puts "Authenticated"
      return
    else
      puts "Nope"
      return
    end
  end
end

new_password = create_hash_digest("1234")

puts new_password == "12342"
puts new_password == "1234"

secure_init_list(users)

authenticate_user("marko", "11111", users)
authenticate_user("marko", "12111", users)



