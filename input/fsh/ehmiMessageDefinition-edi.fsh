Profile: EHMIMessageDefinitionEdi
Parent: EHMIMessageDefinition
Description: "An example profile of the MessageDefinition-edi resource."
//* id = 
* identifier.system = $EHMIMessageDefinitionIdentifierSystem#urn:dk:healthcare:medcom:messaging:edifact
* identifier.type = $EHMIMedComMessageDefinitionType#EDIFACT
* useContext.code.system = $EHMIUsageContextCodeSystem (exactly)
* responseRequired = #on-error

