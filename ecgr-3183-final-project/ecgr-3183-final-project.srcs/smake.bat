@ECHO off
::ghdl -a --std=08 sources_1\new\Fadd.vhd
::ghdl -e --std=08 Fadd
::ghdl -r --std=08 Fadd

cmd /c ghdl -a --std=08 %1 
cmd /c ghdl -e --std=08 %2
::cmd /c ghdl -r --std=08 %2

::pause