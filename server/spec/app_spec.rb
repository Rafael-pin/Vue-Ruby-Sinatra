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

  # it "expect to recive an age = 10" do
  #   pet = Pet.new(birth_date: "2009-09-17")
  #   expect(pet.age).to eq(9)
  # end