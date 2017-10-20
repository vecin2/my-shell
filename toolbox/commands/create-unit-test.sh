#!/bin/bash

#. xml/repository.sh

current_dir=$(dirname "$(readlink -f "$0")")
object_path=$1
is_create_test_subpackage=$2
#test_path=$(unit_test_full_path $object_path $is_create_test_subpackage)

echo $current_dir

#./commands/create-test.sh $object_path $test_path

