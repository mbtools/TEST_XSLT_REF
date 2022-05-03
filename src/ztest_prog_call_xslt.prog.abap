REPORT ztest_prog_call_xslt.

DATA result TYPE string.

CALL TRANSFORMATION ztest_call_method SOURCE a = 0 RESULT XML result OPTIONS xml_header = 'no'.
