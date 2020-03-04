class Vaccine < ActiveRecord::Base
  belongs_to :pet

  def calculate_duration_date
    date + duration * 86400
  end

  def show_results
    expired_date = calculate_duration_date.strftime("%d/%m/%Y")

    if (calculate_duration_date <= Time.now.utc)

    return "This vaccine has expired in #{expired_date}"

    end

    "this vaccine will expire in #{expired_date} /
    you have #{(calculate_duration_date - Time.now.to_i).strftime("%d")} day(s) to vaccine your pet again"  
  end
end
