PORT_GUPPI=4010
PORT_GUP_PEOPLE=4011
PORT_GUP_ITEMS=4012
PORT_GUP=4013

all:
	@echo -n "run like this:"
	@echo    "'make deploy-test'"
	@echo -n "           or:"
	@echo    "'make deploy-drift'"

#/* -------------------------------------------------- */

update: update-gup-people update-gup-items update-guppi update-gup
	@echo "kolla att allt funkar"


update-gup-people:
	bash --login ./update.sh $@ ${PORT_GUP_PEOPLE}

update-gup-items:

update-guppi:

update-gup:
