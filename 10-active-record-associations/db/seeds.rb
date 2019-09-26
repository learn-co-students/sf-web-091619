doc1 = Doctor.create(name: "Dr dr")
doc2 = Doctor.create(name: "Another doc")

pat1 = Patient.create(name: "Mark", age: 36)
pat2 = Patient.create(name: "Lisa", age: 29)

Appointment.create(doctor_id: doc1.id, patient_id: pat1.id, time: "4pm")
Appointment.create(doctor_id: doc2.id, patient_id: pat1.id, time: "2pm")
