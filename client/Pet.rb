class Pet
  
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

  def setType(type)
    @type = :type
  end

  def makeSound
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

  def getAge
    return Date.today - @birthDate
  end

  def getLifeStage
    if (getAge() < 2)
      return "puppy"
    elsif (getAge() < 8)
      return "adult"
    end
    return "old"
  end
end

class Test

  pet = Pet.new("Nome", 2000/3/4, 5, "dog", "petphoto.png", "photos", "vaccines")
  
  puts(pet.makeSound())

end
