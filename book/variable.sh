#!/bin/bash

function func() {
  local a=99
  echo "inside a: ${a}"
}

# 调用函数
func

echo "outside a: ${a}"
