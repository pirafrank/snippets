#!/bin/bash

my_string=abc
substring=ab

if [ "${my_string/$substring}" = "$my_string" ] ; then
  echo "${substring} is not in ${my_string}"
else
  echo "${substring} was found in ${my_string}"
fi
