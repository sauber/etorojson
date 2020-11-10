#!/bin/sh

# Verify script output

# Verify output from Discover People
./discover "copiersmin=1&dailyddmin=-4&gainmax=250&maxmonthlyriskscoremax=5&maxmonthlyriskscoremin=2&pagesize=70&profitablemonthspctmin=65&sort=-gain&weeklyddmin=-10&winratiomax=100&winratiomin=45&activeweeksmin=12&lastactivitymax=14" | jq | head -5

# Verify output from Portfolio
./portfolio jeppekirkbonde 2988943 | jq | head -7

# Verify output from Stats
./stats jeppekirkbonde 2988943 | jq | head -3

# Verify output from Chart
./chart jeppekirkbonde 2988943 | jq | head -10
