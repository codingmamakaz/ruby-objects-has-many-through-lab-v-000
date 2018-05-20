require'pry'

class Patient

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Patient.new(doctor, date, self)
  end

end
