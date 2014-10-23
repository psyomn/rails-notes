

json.users @users do |user|
  json.extract! user, :name, :surname, :age
end
