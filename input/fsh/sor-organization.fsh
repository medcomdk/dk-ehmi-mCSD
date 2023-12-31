Profile:      EHMISOROrganization
Parent:       MCSDOrganization
Id:           EHMI.SOR.Organization
Title:        "EHMI SOR Organization"
Description:  """ EHMI SOR General Organization """
* identifier ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open //#closed eller #open 
* identifier contains
    SOR 1..1 MS SU 
* identifier[SOR].use = #official
* identifier[SOR].type from $EHMISORorganizationIdentierTypeVS
* identifier[SOR].type = $EHMISORorganizationIdentierType#SOR (exactly)
* identifier[SOR].system = "1.2.208.176.1.1" (exactly)
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = coding.code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    SOR-Hierarchy 1..1 MS SU 
    and SOR-UnitType 0..1 SU
* type[SOR-Hierarchy].coding.code from $EHMISOROrganizationTypeVS
* type[SOR-Hierarchy].coding.system = $EHMISOROrganizationType
* type[SOR-UnitType].coding.code from $EHMISORUnitTypeVS
* type[SOR-UnitType].coding.system = $EHMISORUnitType
//* endpoint 0..0

Profile:      EHMISORIOOrganization
Parent:       EHMISOROrganization
Id:           EHMI.SOR.InstitutionOwner.Organization
Title:        "EHMI SOR Institution Owner Organization"
Description:  """ EHMI SOR Institution Owner Organization IO (DK:IE) """
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = coding.code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    EHMISORIOOrganizationType 1..1 MS SU 
* type[SOR-Hierarchy].coding.code = $EHMISOROrganizationType#IE (exactly)
* type[EHMISORIOOrganizationType].coding.code from $EHMISORIOOrganizationTypeVS
* type[EHMISORIOOrganizationType].coding.system = $EHMISORIOOrganizationType
* partOf 0..0
* endpoint 0..0

Profile:      EHMISORMunicipalityOrganization
Parent:       EHMISORIOOrganization
Id:           EHMI.SOR.InstitutionOwner.Municipality.Organization
Title:        "EHMI SOR Institution Owner Municipality Organization"
Description:  """ EHMI SOR Institution Owner Municipality Organization IO (DK:IE) """
//* type[SOR-Hierarchy] = $EHMISOROrganizationType#IE (exactly)
* identifier ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open //#closed eller #open 
* identifier contains
    MunicipalityCode 1..1 MS SU 
* identifier[MunicipalityCode].use = #official
* identifier[MunicipalityCode].value from $EHMISORMunicipalityCodeVS
* identifier[MunicipalityCode].type from $EHMISORorganizationIdentierTypeVS
* identifier[MunicipalityCode].system = $EHMISORMunicipalityCode
* type[SOR-Hierarchy].coding.code = $EHMISOROrganizationType#IE (exactly)
* type[EHMISORIOOrganizationType].coding.code = $EHMISORIOOrganizationType#Municipality (exactly)
* type[SOR-UnitType].coding.code = $EHMISORUnitType#kommune (exactly)

Profile:      EHMISORRegionalOrganization
Parent:       EHMISORIOOrganization
Id:           EHMI.SOR.InstitutionOwner.Regional.Organization
Title:        "EHMI SOR Institution Owner Regional Organization"
Description:  """ EHMI SOR Institution Owner Regional Organization IO (DK:IE) """
///* type[SOR-Hierarchy] = $EHMISOROrganizationType#IE (exactly)
* identifier ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = type
  * ^slicing.rules = #open //#closed eller #open 
* identifier contains
    RegionalCode 1..1 MS SU 
* identifier[RegionalCode].use = #official
* identifier[RegionalCode].value from $EHMISORRegionalCodeVS
* identifier[RegionalCode].type from $EHMISORorganizationIdentierTypeVS
* identifier[RegionalCode].system = $EHMISORRegionalCode
* type[SOR-Hierarchy].coding.code = $EHMISOROrganizationType#IE (exactly)
* type[EHMISORIOOrganizationType].coding.code = $EHMISORIOOrganizationType#Region (exactly)
* type[SOR-UnitType].coding.code = $EHMISORUnitType#region (exactly)

Profile:      EHMISORHIOrganization
Parent:       EHMISOROrganization
Id:           EHMI.SOR.HealthcareInstitution.Organization
Title:        "EHMI SOR Healthcare Institution Organization"
Description:  """ EHMI SOR Healthcare Institution Organization HI (DK:SI) """
* type[SOR-Hierarchy].coding.code = $EHMISOROrganizationType#SI (exactly)
//* partOf = Reference(Organization)
* partOf 1..1 MS

/*
Invariant:   dk-ehmi-org-1
Description: "EHMISORHIOrganization.partOf SHALL be of type IO"
Severity:    #error
Expression:  "partOf only Reference({Organization/EHMISORIOOrganization})"
//XPath:       "f:given or f:family"
*/

Profile:      EHMISORHospitalOrganization
Parent:       EHMISORHIOrganization
Id:           EHMI.SOR.HealthcareInstitution.Hospital.Organization
Title:        "EHMI SOR Healthcare Institution Hospital Organization"
Description:  """ EHMI SOR Healthcare Institution Hospital Organization HI (DK:SI) """
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = coding.code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    ClinicalAdministrativeHierarchy 1..1 MS SU 
* type[SOR-Hierarchy] = $EHMISOROrganizationType#SI (exactly)
* type[ClinicalAdministrativeHierarchy].coding.code from ehmi-sor-clinical-administrative-hierarchy-valueset
* type[ClinicalAdministrativeHierarchy].coding.code = $EHMISORClinicalAdministrativeHierarchy#Hospital (exactly)
* type[ClinicalAdministrativeHierarchy].coding.system = $EHMISORClinicalAdministrativeHierarchy

Profile:      EHMISOROUOrganization
Parent:       EHMISOROrganization
Id:           EHMI.SOR.OrganizationalUnit.Organization
Title:        "EHMI SOR Organizational Unit"
Description:  """ EHMI SOR Organizational Unit OU (DK:OE) """
* type[SOR-Hierarchy].coding.code = $EHMISOROrganizationType#OE (exactly)

Profile:      EHMISORHospitalOUOrganization
Parent:       EHMISOROUOrganization
Id:           EHMI.SOR.HospitalOUOrganization.Organization
Title:        "EHMI SOR Organizational Unit"
Description:  """ EHMI SOR Organizational Unit OU (DK:OE) """
* type ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = coding.code
  * ^slicing.rules = #open //#closed eller #open 
* type contains
    ClinicalAdministrativeHierarchy 1..1 MS SU 
* type[SOR-Hierarchy].coding.code = $EHMISOROrganizationType#OE (exactly)
//* type[ClinicalAdministrativeHierarchy] = $EHMISORClinicalAdministrativeHierarchy#Afdeling
