# rmeira@pivotal.io is already using chess.cfapps.io, so you have to pick another name/URL for the chess app when you cf push it
# and make sure ./culy is stressing your URL and not the one shown in this example
# When using this command be aware that ./curly (binary) will be copied from your local directory into PCF and no compilation of curly.c will take place

cf push curly --no-route -b https://github.com/atris/heroku-buildpack-C.git -c "./curly http://rfm-sticky-session.cfapps.io 2 2000" --health-check-type 'none' -i 1  -m 30MB
