class Vaccine
  attr_accessor :idVaccine
  attr_accessor :name
  attr_accessor :date
  attr_accessor :duration

  def initialize(idVaccine, name, date, duration)
    @idVaccine = idVaccine
    @name = name
    @date = date
    @duration = duration
  end

  def calculateExpiredDate
    return @date + @duration
  end

  def calculateRemaningTime
    if (@date + @duration <= Date.today)
      return "This vaccine has expired in #{ calculateExpiredDate() }" 
    end
    return "this vaccine will expire in #{ calculateExpiredDate() }, 
            you have #{ calculateExpiredDate().to_i } to vaccine your pet again"
  end

end
