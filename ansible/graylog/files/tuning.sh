#!/bin/bash


sysctl -w vm.max_map_count=1048576
ulimit -u unlimited