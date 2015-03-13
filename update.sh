# -------------------------------------------------- #
# quit
# -------------------------------------------------- #
function quit(){
echo "Avslutar:$1"           #    
exit
}
# -------------------------------------------------- #
# prepareAndKillAndStart
# -------------------------------------------------- #
function prepareAndKillAndStart(){
  PROJNAME=$1
  PORT=$2
  if [ "$PROJNAME" = "gup" ]
  then
		  npm install
		  bower install
		  PROG='ember'
		  CMD="nohup ember server -p ${PORT} &"
  else
		  bundle install
		  rake db:migrate
		  PROG='ruby'
		  CMD="rails s -d -p ${PORT}" 
  fi
  BILL=`netstat -l -p | grep ${PROG} | grep ${PORT}|rev | awk '{print $1;}' | rev | cut -d / -f1`
  if [[ -n "$BILL" ]]
  then
				  kill ${BILL}
  
  fi
  echo "In prepareAndKillAndStart"
  echo $CMD
  $CMD &
}
# -------------------------------------------------- #
# main
# -------------------------------------------------- #
PROJNAME=${1#update-}
PORT=${2}
cd  ../${PROJNAME}
git pull
echo "INPUT: are you sure you've edited config files? (Y/N)"
read ANS                                   #
case "$ANS" in                             #  
  "Y" | "y" | "J" | "j" )                  #  
                                           # continue
  ;;                                       #   
  "" )                                     # enter was pressed
                                           # continue
  ;;                                       #   
  *)                                       # all other answers     
  quit "avbryter"                          # quit all efforts
  ;;                                       # 
esac                                       #   
prepareAndKillAndStart ${PROJNAME} ${PORT}
echo "Here the service should be queried with arguments for results."
cd ../gup-main
pwd
