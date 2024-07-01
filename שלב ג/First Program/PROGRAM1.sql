DECLARE
  user_input VARCHAR2(10);
  result VARCHAR2(100);
  r_id INTEGER;
  r_city VARCHAR2(50);
  r_street VARCHAR2(50);
  r_h_number INTEGER;
  r_f_name VARCHAR2(50);
  r_l_name VARCHAR2(50);
  r_b_date DATE;
  r_m_number VARCHAR2(10);
  r_p_number VARCHAR2(9);
  r_b_type VARCHAR2(3);
BEGIN
  -- Prompt user to enter a number 1 or 2
  dbms_output.put_line('Enter 1 in order to find matching donors or 2 in order to create a new recipient:');
  
  -- Read user input
  user_input := '&1OR2'; -- Input will be prompted
  
  -- Determine which function to call based on user input
  IF user_input = '1' THEN
    dbms_output.put_line('Enter your ID:');
    r_id := TO_NUMBER('&ID');
    IF r_id IS NULL THEN
      RAISE_APPLICATION_ERROR(-20001, 'ID parameter is missing.');
    END IF;
    result := show_and_count_donors(r_id => r_id);
    
  ELSIF user_input = '2' THEN
    dbms_output.put_line('Please enter recipient details:');
    
    dbms_output.put_line('Recipient ID:');
    r_id := TO_NUMBER('&ID'); -- Example input for recipient ID
    IF r_id IS NULL THEN
      RAISE_APPLICATION_ERROR(-20002, 'Recipient ID parameter is missing.');
    END IF;
    
    dbms_output.put_line('City:');
    r_city := '&city'; -- Example input for city
    IF r_city IS NULL OR r_city = '' THEN
      RAISE_APPLICATION_ERROR(-20003, 'City parameter is missing.');
    END IF;
    
    dbms_output.put_line('Street:');
    r_street := '&street'; -- Example input for street
    IF r_street IS NULL OR r_street = '' THEN
      RAISE_APPLICATION_ERROR(-20004, 'Street parameter is missing.');
    END IF;
    
    dbms_output.put_line('House Number:');
    r_h_number := TO_NUMBER('&house_num'); -- Example input for house number
    IF r_h_number IS NULL THEN
      RAISE_APPLICATION_ERROR(-20005, 'House Number parameter is missing.');
    END IF;
    
    dbms_output.put_line('First Name:');
    r_f_name := '&first_name'; -- Example input for first name
    IF r_f_name IS NULL OR r_f_name = '' THEN
      RAISE_APPLICATION_ERROR(-20006, 'First Name parameter is missing.');
    END IF;
    
    dbms_output.put_line('Last Name:');
    r_l_name := '&last_name'; -- Example input for last name
    IF r_l_name IS NULL OR r_l_name = '' THEN
      RAISE_APPLICATION_ERROR(-20007, 'Last Name parameter is missing.');
    END IF;
    
    dbms_output.put_line('Birth Date (DD/MM/YYYY):');
    r_b_date := TO_DATE('&birth_date', 'DD/MM/YYYY'); -- Example input for birth date
    IF r_b_date IS NULL THEN
      RAISE_APPLICATION_ERROR(-20008, 'Birth Date parameter is missing or invalid format.');
    END IF;
    
    dbms_output.put_line('Mobile Number:');
    r_m_number := '&mobile_number'; -- Example input for mobile number
    IF r_m_number IS NULL OR r_m_number = '' THEN
      RAISE_APPLICATION_ERROR(-20009, 'Mobile Number parameter is missing.');
    END IF;
    
    dbms_output.put_line('Phone Number:');
    r_p_number := '&phone_number'; -- Example input for phone number
    IF r_p_number IS NULL OR r_p_number = '' THEN
      RAISE_APPLICATION_ERROR(-20010, 'Phone Number parameter is missing.');
    END IF;
    
    dbms_output.put_line('Blood Type:');
    r_b_type := '&blood_type';
    IF r_b_type IS NULL OR r_b_type = '' THEN
      RAISE_APPLICATION_ERROR(-20011, 'Blood Type parameter is missing.');
    END IF;
    
    -- Call the function to create a new recipient
    create_new_recipient(
      r_id => r_id,
      r_city => r_city,
      r_street => r_street,
      r_h_number => r_h_number,
      r_f_name => r_f_name,
      r_l_name => r_l_name,
      r_b_date => r_b_date,
      r_m_number => r_m_number,
      r_p_number => r_p_number,
      r_b_type => r_b_type
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
    DBMS_OUTPUT.PUT_LINE('This person dose not exist.');
  WHEN OTHERS THEN 
    DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
