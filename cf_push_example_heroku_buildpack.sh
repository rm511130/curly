# rmeira@pivotal.io is already using chess.cfapps.io, so you have to pick another namei/URL for the chess app when you push it
# and make sure ./culy is stressing your URL and not the one shown in this example

cf push curly --no-route -b https://github.com/atris/heroku-buildpack-C.git -c "./curly http://chess.cfapps.io 2 2000" --health-check-type 'none' -i 1 -m 30MB
