#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

MAIN_MENU() {
  # Display the service list (the tests check this exact format)
  echo -e "\nWelcome to My Salon, how can I help you?"
  SERVICES=$($PSQL "SELECT service_id, name FROM services ORDER BY service_id;")
  echo "$SERVICES" | while read SERVICE_ID BAR SERVICE_NAME
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done

  # Read the selected service_id
  read SERVICE_ID_SELECTED

  # Check if the selected service exists
  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED;")
  SERVICE_NAME=$(echo "$SERVICE_NAME" | sed -E 's/^ *| *$//g')

  if [[ -z $SERVICE_NAME ]]
  then
    # If not found -> show the same service list again
    MAIN_MENU
  else
    # If found -> proceed to appointment flow
    APPOINTMENT_FLOW
  fi
}

APPOINTMENT_FLOW() {
  # Ask for customer's phone number
  echo -e "\nWhat's your phone number?"
  read CUSTOMER_PHONE

  # Look up customer name by phone number
  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE';")
  CUSTOMER_NAME=$(echo "$CUSTOMER_NAME" | sed -E 's/^ *| *$//g')

  # If customer doesn't exist -> create a new customer record
  if [[ -z $CUSTOMER_NAME ]]
  then
    echo -e "\nI don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME

    $PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME');"
  fi

  # Get customer_id
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE';")
  CUSTOMER_ID=$(echo "$CUSTOMER_ID" | sed -E 's/^ *| *$//g')

  # Ask for appointment time
  echo -e "\nWhat time would you like your $SERVICE_NAME, $CUSTOMER_NAME?"
  read SERVICE_TIME

  # Insert appointment record
  $PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME');"

  # Final confirmation message (the tests compare this output)
  echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
}

MAIN_MENU
