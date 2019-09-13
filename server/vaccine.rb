class Vaccine
  attr_accessor :idVaccine, :name, :date, :duration

  def initialize(id_vaccine, name, date, duration)
    @id_vaccine = idVaccine
    @name = name
    @date = date
    @duration = duration
  end

  def calculate_duration_date
    @date + @duration * 86400
  end

  def show_results
    expired_date = calculate_duration_date.strftime("%d/%m/%Y")

    return "This vaccine has expired in #{expired_date}" if (calculate_duration_date <= Time.now.utc)

    "this vaccine will expire in #{expired_date}
    you have #{(calculate_duration_date - Time.now.to_i).strftime("%d")} day(s) to vaccine your pet again"
    
  end

  vaccine = Vaccine.new(1,"raiva",Time.new(2019, 9, 12),10)

  puts vaccine.name
  puts vaccine.show_results

end
