cf push curly --no-route -b https://github.com/atris/heroku-buildpack-C.git -c "./curly http://chess1.cfapps.io 2 2000" --health-check-type 'none' -i 1 -m 30MB
