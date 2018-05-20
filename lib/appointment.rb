class Appointment

  attr_accessor :date
  @@all = []

  def initialize(patient, doctor, date)
    @date = date
  
    @@all << self
  end

  def self.all
    @@all
  end

end
