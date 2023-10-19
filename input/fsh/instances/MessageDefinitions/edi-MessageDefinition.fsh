Instance: EHMI.edi.bin02.b0210x.MessageDefinition
InstanceOf: EHMIMessageDefinition
Description: "An example of an EHMIMessageDefinition for bin02:b0210x."
* id = "EHMI.edi.bin02.b0210x.MessageDefinition"
* url = $MedComMessageDefinitionUri#urn:dk:healthcare:medcom:edifact:medbin:bin02:b0210x
//* identifier.system = "www.medcom.dk"
* identifier.period.start = "2012-07-01"
* identifier.type = $EHMIMedComMessageDefinitionType#EDIFACT
* identifier.use = #official 
* identifier.value = "bin02:b0210x"
* version = "b0210x"
* name = "Binary document transport for attachments to all referral types"
* title = "binary-document-transport-for-attachments-to-all-referral-types"
* status = #active
* date = "2020-06-26"
* publisher = "MedCom"
* copyright = "Copyright © 2022 MedCom"
* publisher = "MedCom"
* contact[InteroperabilityConsultant].name = "Interoperability Consultant, Michael Johansen"
//* contact[=].telecom.system = #email
* contact[=].telecom.value = "mjo@medcom.dk" 
//* contact[=].telecom.use = #work
* contact[SubjectMatterExpert].name = "Subject Matter Expert, Gitte Henriksen"
//* contact[=].telecom.system = #email
* contact[=].telecom.value = "ghe@medcom.dk" 
//* contact[=].telecom.use = #work
* description = "BIN01 bliver i dag brugt til mange forskellige formål, hvoraf kun en delmængde er i form af vedhæftelse af bilag til en henvisning. Derfor indføres en ny MEDBIN-standard, BIN02, som skal bruges til vedhæftelse af bilag i forbindelse med henvisninger (REF01, REF02 og REF06). Når VANS-leverandørerne møder en BIN02, skal de sørge for at route den til henvisningshotellet (RUSA Standardkatalog - Beskrivelse jf. §3stk2 i bekendtgørelsen)"
* useContext.code = #workflow
* useContext.valueCodeableConcept.text = "Regioner, Private parter i sundhedsvæsenet, Kommuner"
* purpose = "Denne standard anvendes, når man ønsker at sende en binær fil sammen med henvisningstyperne REF01, RFE02 og REF06 (RUSA Standardkatalog - Hvad skal standarden anvendes til jf. §3,2 i bekendtgørelsen)"
* copyright = "Copyright © 2022 MedCom"
* eventCoding = $MessageEvents#empty-message

