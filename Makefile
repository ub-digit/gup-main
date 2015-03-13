TEST_SERVER=130.241.16.49
#DEMO_SERVER=130.241.16.49
DEMO_SERVER=11111111111111
DEPHOST=`hostname`
DEPLOYSCRIPT=deploy.sh
GUPMAIN=gup-main


all:
	@echo -n "run like this:"
	@echo    "'make deploy-test'"
	@echo -n "           or:"
	@echo    "'make deploy-drift'"

#/* -------------------------------------------------- */

update: update-gup-people update-gup-items update-guppi update-gup
	@echo "kolla att allt funkar"


update-gup-people:
	bash --login ./doTheDeploy.sh

update-gup-items:

update-guppi:

update-gup:
