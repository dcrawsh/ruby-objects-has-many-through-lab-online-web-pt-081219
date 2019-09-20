class Appointment 
@@all = Array.new 
attr_accessor :date,:patient,:doctor
def self.all 
@@all  
end 

def inititalize(date,patient,doctor)
@date = date 
@patient = patient
@doctor = doctor 
Appointment.all << self 
end 


end 