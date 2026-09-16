CLASS zcl_student_projects_dmcc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

    METHODS create_project
      IMPORTING
        iv_project_name        TYPE string
        iv_project_description TYPE string
      RETURNING
        VALUE(rv_project)      TYPE string.

ENDCLASS.


CLASS zcl_student_projects_dmcc IMPLEMENTATION.

  METHOD create_project.

    rv_project = |{ iv_project_name } { iv_project_description }|.

  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.

    DATA(lv_project) = create_project(
      iv_project_name        = 'Students'
      iv_project_description = 'abapGit Project'
    ).

    out->write(
      data = lv_project
      name = 'Project'
    ).

  ENDMETHOD.

ENDCLASS.
