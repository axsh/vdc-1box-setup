#!/bin/bash
#
# requires:
#   bash
#

## include files

. $(cd ${BASH_SOURCE[0]%/*} && pwd)/helper_shunit2.sh

## variables

## functions

function setUp() {
  mkdir ${target_dir}
  function git() { echo git $*; }
}

function tearDown() {
  rm -rf ${target_dir}
}

function test_vdc_1box_setup_git_no_opts() {
  (vdc_1box_setup_git >/dev/null)
  assertNotEquals 0 $?
}

function test_vdc_1box_setup_git_opts() {
  (vdc_1box_setup_git ${target_dir} >/dev/null)
  assertEquals 0 $?
}

## shunit2

. ${shunit2_file}
