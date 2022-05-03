CLASS zcl_test_callback DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-METHODS main
      RETURNING
        VALUE(result) TYPE string .
    CLASS-METHODS callback
      RETURNING
        VALUE(result) TYPE string .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_test_callback IMPLEMENTATION.


  METHOD callback.
    result = 'Hello'.
  ENDMETHOD.


  METHOD main.
    CALL TRANSFORMATION ztest_call_method SOURCE a = 0 RESULT XML result OPTIONS xml_header = 'no'.
    " skip UCS-2/UTF-16 BOM
    result = result+1.
  ENDMETHOD.
ENDCLASS.
