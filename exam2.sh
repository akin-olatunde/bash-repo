#!/bin/bash

for item in "$@"; do
if [[ -f '$item' ]]; then
echo "[FILE] '$item' exists"
elseif
if [[ -d '$item' ]]; then
echo "[DIR] '$item' exists"
else
echo "[MISSING] '$item' not found."

