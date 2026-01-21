@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection cds entity for student'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

define root view entity zrap_c_stud
  provider contract transactional_query
  as projection on zrap_i_stud
{
  key Id,
      Fname,
      Lname,
      Dob,
      Class,
      CreatedBy,
      CreatedAt,
      LastchangedBy,
      LastchangedAt,
      LocinstLastchangedAt
}
