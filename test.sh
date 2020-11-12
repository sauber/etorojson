#!/bin/bash

# Immediate termination upon failure
#
set -e

# Verify output from Discover People
#
trap "echo discover failed; exit 1" ERR
buf=$(./discover "dailyddmin=-25&gainmin=0&hasavatar=true&maxmonthlyriskscoremax=6&maxmonthlyriskscoremin=1&pagesize=20&popularinvestor=true&sort=-copiers")
jq -e '.Items' <(printf $buf) >/dev/null
echo discover OK

# Verify output from portfolio
#
trap "echo portfolio failed; exit 1" ERR
buf=$(./portfolio jeppekirkbonde 2988943)
jq -e '.AggregatedPositions' <(printf $buf) >/dev/null
echo portfolio OK

# Verify output from Stats
#
trap "echo stats failed; exit 1" ERR
buf=$(./stats jeppekirkbonde 2988943)
jq -e '.Data' <(printf $buf) >/dev/null
echo stats OK

# Verify output from Chart
#
trap "echo charts failed; exit 1" ERR
buf=$(./chart jeppekirkbonde 2988943)
jq -e '.simulation' <(printf $buf) >/dev/null
echo chart OK

# Testing completed successfully
#
echo All tests passed
