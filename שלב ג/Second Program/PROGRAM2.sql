DECLARE
  user_input VARCHAR2(10);
  result VARCHAR2(100);
  b_donor_id INTEGER;
  d_city VARCHAR2(50);
  b_placecode INTEGER;
  b_liter INTEGER;
BEGIN
  -- Prompt user to enter a number 1 or 2
  dbms_output.put_line('Enter 1 in order to find closest donation place or 2 in order to add a new blood unit:');
  
  -- Read user input
  user_input := '&1OR2'; -- Input will be prompted
  
  -- Determine which function to call based on user input
  IF user_input = '1' THEN
    dbms_output.put_line('Enter city:');
    d_city := '&City'; -- Prompt for input
    
    IF d_city IS NULL OR d_city = '' THEN
      RAISE_APPLICATION_ERROR(-20001, 'City parameter is missing.');
    END IF;
    
    -- Call the function to find closest donation place
    result := find_donation_place(d_city => d_city);
    
  ELSIF user_input = '2' THEN
    dbms_output.put_line('Please enter blood unit details:');
     
    dbms_output.put_line('Blood Liter:');
    b_liter := TO_NUMBER('&blood_liter'); -- Prompt for input
    
    IF b_liter IS NULL THEN
      RAISE_APPLICATION_ERROR(-20011, 'Liter parameter is missing.');
    END IF;
    
    dbms_output.put_line('Donor ID:');
    b_donor_id := TO_NUMBER('&DonorID'); -- Prompt for input
    
    IF b_donor_id IS NULL THEN
      RAISE_APPLICATION_ERROR(-20002, 'Donor ID parameter is missing.');
    END IF;
    
    dbms_output.put_line('Place Code:');
    b_placecode := TO_NUMBER('&place_code'); -- Prompt for input
    
    IF b_placecode IS NULL THEN
      RAISE_APPLICATION_ERROR(-20010, 'Place code parameter is missing.');
    END IF;
    
    -- Call the function to add a new blood unit
    add_blood_unit(
      b_liter => b_liter,
      b_donor_id => b_donor_id,
      b_placecode => b_placecode
    );
    
  ELSE
    RAISE_APPLICATION_ERROR(-20012, 'Invalid input. Please enter 1 or 2.');
    RETURN; -- Exit the block if input is invalid
  END IF;
  
  -- Print the result
  DBMS_OUTPUT.PUT_LINE(result);
  
EXCEPTION
  WHEN VALUE_ERROR THEN
    DBMS_OUTPUT.PUT_LINE('Invalid input format.');
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('This person does not exist.');
  WHEN OTHERS THEN 
    DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
