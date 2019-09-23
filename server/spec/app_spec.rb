require_relative './spec_helper.rb'
require 'require_all'
require_all 'models/'
require 'byebug'
require 'timecop'

describe "Pet.make_sound" do
  it "expect to return auau" do
    pet = Pet.new(kind: :dog)

    expect(pet.make_sound).to eq("auau")
  end
  it "expect to return ???" do
    pet = Pet.new(kind: :other)

    expect(pet.make_sound).to eq("???")
  end
end

describe "Pet.age" do
  before do
    time_now = Time.local(2019, 9, 23)
    Timecop.travel(time_now)
    Timecop.freeze(Time.now)
   end

  after do
    Timecop.return
  end

  it "expect to recive an age equals 10" do
    pet = Pet.new(birth_date: "2009-09-23")
    expect(pet.age).to eq(10)
  end
  
  it "expect to recive an age equals 9" do
    pet = Pet.new(birth_date: "2009-09-22")
    expect(pet.age).to eq(9)
  end

end

describe "Pet.life_stage" do
  before do
    time_now = Time.local(2019, 9, 23)
    Timecop.travel(time_now)
    Timecop.freeze(Time.now)
   end

  after do
    Timecop.return
  end

  it "expect to return puppy" do
    pet = Pet.new(birth_date: "20019-09-22")
    expect(pet.life_stage).to eq("puppy")
  end

  it "expect to return adult" do
    pet = Pet.new(birth_date: "2017-09-23")
    expect(pet.life_stage).to eq("adult")
  end
  it "expect to return old" do
    pet = Pet.new(birth_date: "2011-09-23")
    expect(pet.life_stage).to eq("old")
  end
end

describe "Vaccine.show_results" do
  before do
    time_now = Time.local(2019, 9, 23)
    Timecop.travel(time_now)
    Timecop.freeze(Time.now)
   end

  after do
    Timecop.return
  end

  it "expect to return expire date 23/10/2019 and days (30) to vaccine" do
    vaccine = Vaccine.new(date: "2019-09-23", duration: "30")
    expect(vaccine.show_results).to eq("this vaccine will expire in 23/10/2019 /\n    you have 30 day(s) to vaccine your pet again")
  end

  it "expect to return expire (10/09/2019) date" do
    vaccine = Vaccine.new(date: "2019-09-01", duration: "9")
    expect(vaccine.show_results).to eq("This vaccine has expired in 10/09/2019")
  end
end

describe "Vaccine.calculate_duration_date" do 
  before do
    time_now = Time.local(2019, 9, 23)
    Timecop.travel(time_now)
    Timecop.freeze(Time.now)
  end

  after do
    Timecop.return
  end

  it "expect to return the date of expiration 01/10/2019" do
    vaccine = Vaccine.new(date: "2019-09-01", duration: "30")
    expect(vaccine.calculate_duration_date.strftime("%d/%m/%Y")).to eq("01/10/2019")
  end

  it "expect to return the date of expiration 01/12/2019" do
    vaccine = Vaccine.new(date: "2019-09-01", duration: "94")
    expect(vaccine.calculate_duration_date.strftime("%d/%m/%Y")).to eq("04/12/2019")
  end
end

describe "Expect to return a boolean" do
  before do
    time_now = Time.local(2019, 9, 23)
    Timecop.travel(time_now)
    Timecop.freeze(Time.now)
  end

  after do
    Timecop.return
  end

  it "expect to return true" do
    pet = Pet.new(birth_date: "2018-09-23")
    expect(pet.made_birthday_this_year?).to eq(true)
  end

  it "expect to return false" do
    pet = Pet.new(birth_date: "2018-09-22")
    expect(pet.made_birthday_this_year?).to eq(false)
  end
end