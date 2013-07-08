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
  function vdc_1box_deploy() { echo vdc_1box_deploy $*; }
  function vdc_1box_setup_git() { echo vdc_1box_setup_git $*; }
  function vdc_1box_make_symlink() { echo vdc_1box_make_symlink $*; }
}

function tearDown() {
  :
}

function test_vdc_1box_cli_no_opts() {
  vdc_1box_cli
  assertEquals $? 0
}

function test_vdc_1box_cli_opts() {
  vdc_1box_cli ${target_dir}
  assertEquals $? 0
}

## shunit2

. ${shunit2_file}
