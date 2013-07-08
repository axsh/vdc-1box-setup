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
  function ln() { echo ln $*; }
  mkdir -p ${target_dir}/vmapp-vdc-1box
}

function tearDown() {
  rm -rf ${target_dir}
}

function test_vdc_1box_make_symlink() {
  (vdc_1box_make_symlink ${target_dir})
  assertEquals $? 0
}

## shunit2

. ${shunit2_file}
