#########################################################
### THIS BASH SCRIPT REQUIRES figlet, lolcat, and bc  ###
###                                                   ###
###     If you do not have figlet and or lolcat,      ###
### delete their usages on lines 5, 7, 9, 11, and 16. ###
#########################################################
!#/bin/bash
clear
echo "Clean Count" | figlet | lolcat -p 1.2
echo "By: Brandon Anderson =]"
echo -ne "What year did you get sober?\n" | lolcat -p 1.2
read year
echo -ne "What month did you get sober?\n" | lolcat -p 1.2
read month
echo -ne "What day did you get sober?\n" | lolcat -p 1.2
read day
days_in_year=365
days_sober=`echo $((($(date +%s)-$(date +%s --date "$year-$month-$day"))/(3600*24)))`

echo "Congrats!" | figlet | lolcat -p 1.2
echo "You have $days_sober days sober"
days_until=`echo "$days_in_year - $days_sober" | bc`
echo "You have $days_until days until your sober birthday!"
