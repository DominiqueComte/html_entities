CREATE OR REPLACE
PACKAGE html_entities
AS
  /*
  filename: html_entities.pks
  */
TYPE entities_t
IS
  TABLE OF VARCHAR2 (3 CHAR) INDEX BY VARCHAR2 (50 CHAR);
TYPE rev_entities_t
IS
  TABLE OF VARCHAR2 (50 CHAR) INDEX BY VARCHAR2 (3 CHAR);
  html_entities entities_t;
  rev_html_entities rev_entities_t;
  /**
  encode special characters into html entities.
  */
  FUNCTION encode_entities(
      input_string VARCHAR2 )
    RETURN VARCHAR2 DETERMINISTIC;
  /**
  decode html entities into special characters.
  */
  FUNCTION decode_entities(
      input_string VARCHAR2 )
    RETURN VARCHAR2 DETERMINISTIC;
END html_entities;
/
