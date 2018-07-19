class Patient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    appt = Appointment.new(self, doctor, date)
  end

  def doctors
    appointments.map { |appt| appt.doctor }
  end

  def appointments
    Appointment.all.select { |appt| appt.patient == self }
  end
end
