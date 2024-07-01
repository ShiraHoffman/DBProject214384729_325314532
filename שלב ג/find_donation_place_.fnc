create or replace function find_donation_place(d_city in Varchar2) return integer is
v_least_used_place integer;
BEGIN
  -- Query to find places in the given city and their corresponding counts in blood_unit
  SELECT placecode
    INTO v_least_used_place
    FROM (
      SELECT p.placecode, COUNT(bu.placecode) AS unit_count
        FROM lab p
        LEFT JOIN blood_unit bu ON p.placecode = bu.placecode
       WHERE p.city = d_city
       GROUP BY p.placecode
       ORDER BY COUNT(bu.placecode) ASC
    )
   WHERE ROWNUM = 1; -- Get the place with the least count

  RETURN v_least_used_place;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN NULL; -- Handle case where no places are found in the city
  WHEN OTHERS THEN
    RAISE; -- Raise the exception for other errors
END;
/
