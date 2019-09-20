class Doctor 
@@all = Array.new 

attr_accessor :name 

def initialize(name)
@name = name 
end 

def self.all 
@@all 
end 

def new_appointment(patient,date)
appointment = Appointment.new(date,patient,self)
end 

def appointments 
Appointment.all.select{|apps| apps.doctor == self} 
end 

def patients
appointments.map{|apps| apps.patient}
end 

end 