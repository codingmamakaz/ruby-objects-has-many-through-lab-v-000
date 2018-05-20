require'pry'

class Doctor

  attr_accessor :name, :patient
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
        binding.pry
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  def appointments


    Appointment.all.select{|appointment|appointment.doctor == self}
  end
end
