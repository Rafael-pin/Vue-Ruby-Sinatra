class Pet

  require 'date'
  
  attr_accessor :idPet
  attr_accessor :name
  attr_accessor :birthDate
  attr_accessor :weight
  attr_accessor :profilePhoto
  attr_accessor :photos
  attr_accessor :vaccines
  attr_accessor :type

  @type = :dog

  def initialize(name, birthDate, weight, type, profilePhoto, photos, vaccines)
    @name = name
    @birthDate = birthDate
    @weight = weight
    @type = type
    @profilePhoto = profilePhoto
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
    return (Date.today - @birthDate).to_i / 365 
  end

  def get_life_stage
    if (getAge() < 2)
      return "puppy"
    elsif (getAge() < 8)
      return "adult"
    end
    return "old"
  end

  pet = Pet.new("Nome", Date.new(2017,9,12), 5, "dog", "petphoto.png", "photos", "vaccines")
  
  puts(" #{ pet.get_age() } years. Your #{ pet.type } is #{ pet.get_life_stage() } and makes #{ pet.make_sound() }")

end