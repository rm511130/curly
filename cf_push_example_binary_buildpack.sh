# cf push curly --no-route -b binary_buildpack -c "./curly http://rfm-sticky-session.cfapps.io 10000000" --health-check-type 'none' -i 1  -m 30MB
cf push curly --no-route -b https://github.com/atris/heroku-buildpack-C.git -c "./curly http://rfm-sticky-session.cfapps.io 10000000" --health-check-type 'none' -i 1  -m 30MB
