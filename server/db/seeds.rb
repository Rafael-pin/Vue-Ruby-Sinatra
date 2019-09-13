class Seeds
  pet = [
    {id_pet: nil name: 'Jon', birth_date: '2018/09/10', weight: 'e@example.com', profile_photo: ' ', type: 'dog', photos: ' ', vaccines: ' '},
  ]
  
  pet.each do |u|
    Pet.create(u)
end