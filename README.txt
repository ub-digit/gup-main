För att hantera konfigurationsfiler:
Jag har skapat ett repositorium på vår egen git-server:
git.ub.gu.se:/git/ub_app_config.git

Meningen är att checka ut detta parallellt med gup-main, gup-items,
guppi och gup-people
Sedan skall deployscript och Makefiler per automatik kopiera relevanta
filer till sina avsedda ställen.

ub_app_config.git innehåller f.n. endast den tänkta katalogstrukturen
plus några få konfigurationsfiler.

