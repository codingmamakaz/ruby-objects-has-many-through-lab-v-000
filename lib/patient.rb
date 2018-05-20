require'pry'

class Patient

  attr_accessor :name, :doctor, :appointment

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
binding.pry
    Appointment.new(doctor, date, self)
  end

  def appointments
    Appointment.all.select{|appointment|appointment.patient == self}
  end

  def doctors
    appointments.map{|appointment|appointment.doctor}
  end

end
