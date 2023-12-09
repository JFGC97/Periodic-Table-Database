#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

re='^[0-9]+$'
#Check if arg it's empty
if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
#If arg it's not empty
else
  #It's not a number
  if ! [[ $1 =~ $re ]]
  then
    NAME=$($PSQL "SELECT name FROM elements WHERE symbol='$1' OR name='$1'")
  #It's a number
  else
    NAME=$($PSQL "SELECT name FROM elements WHERE atomic_number=$1")
  fi
  #Check if variable NAME not exist in DB
  if [[ -z $NAME ]]
  then
    echo "I could not find that element in the database."
  #If exist
  else
    ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM elements WHERE name='$NAME'")
    
    SYMBOL=$($PSQL "SELECT SYMBOL FROM elements WHERE name='$NAME'")
    
    TYPE=$($PSQL "SELECT type FROM properties FULL JOIN types USING(type_id) WHERE atomic_number='$ATOMIC_NUMBER'")
    
    ATOMIC_MASS=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number='$ATOMIC_NUMBER'")
    
    MELTING_POINT=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number='$ATOMIC_NUMBER'")
    
    BOILING_POINT=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number='$ATOMIC_NUMBER'")
    
    #Print message
    echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
  fi
fi


