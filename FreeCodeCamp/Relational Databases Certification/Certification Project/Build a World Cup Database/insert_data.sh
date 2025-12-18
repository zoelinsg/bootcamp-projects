#!/bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# Reset tables to avoid duplicate inserts when re-running the script
$PSQL "TRUNCATE TABLE games, teams RESTART IDENTITY CASCADE;"

# Read CSV (skip header). Use process substitution to avoid subshell issues.
while IFS=',' read -r YEAR ROUND WINNER OPPONENT WGOALS OGOALS
do
  # Strip potential Windows CRLF characters
  YEAR=${YEAR//$'\r'/}
  ROUND=${ROUND//$'\r'/}
  WINNER=${WINNER//$'\r'/}
  OPPONENT=${OPPONENT//$'\r'/}
  WGOALS=${WGOALS//$'\r'/}
  OGOALS=${OGOALS//$'\r'/}

  # Insert teams (ignore duplicates)
  $PSQL "INSERT INTO teams(name) VALUES('$WINNER') ON CONFLICT (name) DO NOTHING;"
  $PSQL "INSERT INTO teams(name) VALUES('$OPPONENT') ON CONFLICT (name) DO NOTHING;"

  # Get team IDs
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")

  # Insert game row
  $PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals)
         VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WGOALS, $OGOALS);"
done < <(tail -n +2 games.csv)
