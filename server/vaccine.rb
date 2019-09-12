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



  def calculate_duration_date
    return @date + @duration * 86400
  end

  def show_results
    expired_date = calculate_duration_date.strftime("%d/%m/%Y")
    if (calculate_duration_date <= Time.now.utc)

      return "This vaccine has expired in #{expired_date}" 

    end

    return "this vaccine will expire in #{expired_date}" +
      " you have #{(calculate_duration_date - Time.now.to_i).strftime("%d")} day(s) to vaccine your pet again"
  end

  vaccine = Vaccine.new(1,"raiva",Time.new(2019, 9, 12),10)

  puts vaccine.name
  puts vaccine.show_results


end
