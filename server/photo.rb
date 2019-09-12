class Photo
  attr_accessor :id_photo
  attr_accessor :photo
  attr_accessor :description
  
    def initialize(id_photo, photo, description)
      @id_photo = id_photo
      @photo = photo
      @description = description
    end

end
