Instance: EMCSD_01.1_SampleEHMIMessagingEdeliveryFhirEndpoint
InstanceOf: EHMIMessagingEdeliveryFhirEndpoint
Description: "An example of an EHMIMessagingEdeliveryFhirEndpoint."
* id = "Endpoint.EMCSD.01.1"
* identifier.value = "Endpoint.EMCSD.01.1"
//* identifier.use = "official"
* status = #active
* managingOrganization = Reference(Organization/EMCSD.SOR.IO.01.1)
* period.start = "2023-01-01"
* period.end = "2024-01-01"
* address = "http://www.xyz.dk/fhir"
* payloadMimeType = #text/plain