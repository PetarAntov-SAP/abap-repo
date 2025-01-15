CLASS z_pan_class_1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.

  types tt_t001 type STANDARD TABLE OF i_plant with empty key.
  methods get_plant RETURNING VALUE(rt_t001) type tt_t001.

ENDCLASS.

CLASS z_pan_class_1 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
out->write( get_plant(  ) ).
  ENDMETHOD.


  METHOD get_plant.

  select * from i_plant into table @rt_t001.

  ENDMETHOD.

ENDCLASS.
