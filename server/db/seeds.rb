pets = {name: 'bilu', birth_date: '2018-09-10', weight: 12, profile_photo: 'wdwdwd', kind: 'dog'}

vaccines = {name: "raiva", date: "2018-09-16", duration: 360}

photos = {photo: "https//exemplo", description: "cat"}

pet = Pet.create(pets)
vaccine = Vaccine.create(vaccines)
photo = Photo.create(photos)

pet.vaccines.push(vaccine)
pet.photos.push(photo)