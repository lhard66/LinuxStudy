#!/bin/bash

function add() {
  return $(expr $1 + $2)
}

add 23 50
echo $?