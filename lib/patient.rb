class Patient 
@@all = Array.new 
attr_accessor :name 

def self.all 
@@all  
end 
 
def initialize(name)
@name = name 
Patient.all << self 
end 

def new_appointment(doctor,date)
appointment = Appointment.new(date,self,doctor)
end 

def appointments
  Appointment.all.select {|apps| apps.patient == self}
end 

def doctors
  appointments.collect {|apps| apps.doctors}
end 

end 