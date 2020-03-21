#!/bin/bash
tr -dc _A-Z-a-z-0-9 < /dev/urandom | head -c${1:-32}
