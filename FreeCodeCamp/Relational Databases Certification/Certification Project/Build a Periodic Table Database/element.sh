#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
  exit 0
fi

INPUT=$1

if [[ $INPUT =~ ^[0-9]+$ ]]
then
  RESULT=$($PSQL "
    SELECT e.atomic_number, e.name, e.symbol, t.type,
           p.atomic_mass, p.melting_point_celsius, p.boiling_point_celsius
    FROM elements e
    JOIN properties p USING(atomic_number)
    JOIN types t USING(type_id)
    WHERE e.atomic_number = $INPUT;
  ")
else
  RESULT=$($PSQL "
    SELECT e.atomic_number, e.name, e.symbol, t.type,
           p.atomic_mass, p.melting_point_celsius, p.boiling_point_celsius
    FROM elements e
    JOIN properties p USING(atomic_number)
    JOIN types t USING(type_id)
    WHERE e.symbol ILIKE '$INPUT' OR e.name ILIKE '$INPUT';
  ")
fi

if [[ -z $RESULT ]]
then
  echo "I could not find that element in the database."
  exit 0
fi

IFS='|' read ATOMIC_NUMBER NAME SYMBOL TYPE ATOMIC_MASS MELTING_POINT BOILING_POINT <<< "$RESULT"

echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."

# End of script
