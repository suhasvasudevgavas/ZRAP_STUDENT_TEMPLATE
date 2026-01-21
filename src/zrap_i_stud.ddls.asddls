@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Interaface cds entity for student'

@Metadata.ignorePropagatedAnnotations: true

define root view entity zrap_i_stud
  as select from zrap_stud

{
  key id                     as Id,

      fname                  as Fname,
      lname                  as Lname,
      dob                    as Dob,
      class                  as Class,

      @Semantics.user.createdBy: true
      created_by             as CreatedBy,

      @Semantics.systemDateTime.createdAt: true
      created_at             as CreatedAt,

      @Semantics.user.lastChangedBy: true
      lastchanged_by         as LastchangedBy,

      @Semantics.systemDateTime.lastChangedAt: true
      lastchanged_at         as LastchangedAt,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      locinst_lastchanged_at as LocinstLastchangedAt
}
