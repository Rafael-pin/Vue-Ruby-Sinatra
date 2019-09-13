class Pet

  attr_accessor :id_pet, :name, :birth_date, :weight, :profile_photo, :type, :photos, :vaccines

  def initialize(name, birth_date, weight, type, profile_photo, photos, vaccines)
    @name = name
    @birth_date = birth_date
    @weight = weight
    @type = type
    @profile_photo = profile_photo
    @photos = photos
    @vaccines = vaccines 
  end

  def make_sound
    sounds = {
      :dog => "auau",
      :cat => "miau",
      :bird => "piu",
      :other => "???"
    }
    sounds[@type]
  end

  def age
    age = Time.now.utc.year - @birth_date.year
    made_birthday_this_year? ? age : age - 1
  end

  def life_stage
    return "puppy" if (get_age < 2)
    return "adult" if (get_age < 8)
    "old"
  end

  def made_birthday_this_year?
    time = Time.now.utc
    @birth_date.month >= time.month && @birth_date.day >= time.day
  end

  pet = Pet.new("Nome", Time.new(2010, 9, 12), 5, "cat", "petphoto.png", "photos", "vaccines")
  
  puts("#{pet.get_age} years. Your #{pet.type} is #{pet.get_life_stage} and makes #{pet.make_sound}")

end
