# rmeira@pivotal.io is already using chess.cfapps.io, so you have to pick another namei/URL for the chess app when you push it
# and make sure ./culy is stressing your URL and not the one shown in this example
# When using this command be aware that ./curly (binary) will be copied from your local directory into PCF and no compilation of curly.c will take place

cf push curly --no-route -b https://github.com/cloudfoundry/binary-buildpack -c "./curly http://chess.cfapps.io 0 2000000" --health-check-type 'none' -i 3  -m 30MB
