#!/bin/sh

# Verify script output

# Verify output from Discover People
./discover "dailyddmin=-25&gainmin=0&hasavatar=true&maxmonthlyriskscoremax=6&maxmonthlyriskscoremin=1&pagesize=20&popularinvestor=true&sort=-copiers" | head -5

# Verify output from Portfolio
./portfolio jeppekirkbonde 2988943 | jq | head -7

# Verify output from Stats
./stats jeppekirkbonde 2988943 | jq | head -3

# Verify output from Chart
./chart jeppekirkbonde 2988943 | jq | head -10
