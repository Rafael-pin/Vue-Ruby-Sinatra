class Pet < ActiveRecord::Base
  has_many :photos
  has_many :vaccines

  #This is automatically created by activeRecord


  # attr_accessor :id_pet, :name, :birth_date, :weight, :profile_photo, :kind

  # def initialize(id_pet, name, birth_date, weight, profile_photo, kind)
  #   @id_pet = id_pet
  #   @name = name
  #   @birth_date = birth_date
  #   @weight = weight
  #   @profile_photo = profile_photo
  #   @kind = kind
  # end

  def make_sound
    sounds = {
      :dog => "auau",
      :cat => "miau",
      :bird => "piu",
      :other => "???"
    }
    sounds[@kind]
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

end
