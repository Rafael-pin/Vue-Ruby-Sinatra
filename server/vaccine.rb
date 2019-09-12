class Vaccine
  attr_accessor :idVaccine
  attr_accessor :name
  attr_accessor :date
  attr_accessor :duration

  def initialize(id_vaccine, name, date, duration)
    @id_vaccine = idVaccine
    @name = name
    @date = date
    @duration = duration
  end

  def calculate_expired_date
    return @date + @duration
  end

  def calculate_remaning_time
    if (@date + @duration <= Date.today)
      return "This vaccine has expired in #{ calculate_expired_date }" 
    end
    return "this vaccine will expire in #{ calculate_expired_date }, 
      you have #{ calculate_expired_date.to_i } to vaccine your pet again"
  end

end
