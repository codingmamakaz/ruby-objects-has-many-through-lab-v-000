require'pry'

class Doctor

  attr_accessor :name, :patient, :appointment
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(name, patient)
        binding.pry
    Appointment.new(name, self, patient)
  end

  def appointments
    Appointment.all.select{|appointment|appointment.doctor == self}
  end
end
