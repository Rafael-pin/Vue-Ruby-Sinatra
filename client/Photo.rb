class Photo
  attr_accessor :idPhoto
  attr_accessor :photo
  attr_accessor :description
  
    def initialize(idPhoto, photo, description)
      @idPhoto = idPhoto
      @photo = photo
      @description = description
    end

end
