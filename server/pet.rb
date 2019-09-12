class Pet

  attr_accessor :id_pet
  attr_accessor :name
  attr_accessor :birth_date
  attr_accessor :weight
  attr_accessor :profile_photo
  attr_accessor :photos
  attr_accessor :vaccines
  attr_accessor :type

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
    case @type
    when "dog"
      return "au au"
    when "cat"
      return "miau"
    when "bird"
      return "piu piu"
    else
      return "???"
    end
  end

  def get_age
    return (Time.now.utc.year - @birth_date.year) - made_birth_day
  end

  def get_life_stage
    if (get_age < 2)
      return "puppy"

    elsif (get_age < 8)
      return "adult"

    end

    return "old"
  end

  def made_birth_day
    time = Time.now.utc

    if @birth_date.month >= time.month

      return @birth_date.day >= time.day ? 0 : 1

    end 
  end
  pet = Pet.new("Nome", Time.new(2010, 9, 12), 5, "cat", "petphoto.png", "photos", "vaccines")
  
  puts("#{pet.get_age} years. Your #{pet.type} is #{pet.get_life_stage} and makes #{pet.make_sound}")

end
