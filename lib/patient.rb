require'pry'

class Patient

  attr_accessor :name, :doctor

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
binding.pry
    Patient.new(doctor, date, self)
  end

end
