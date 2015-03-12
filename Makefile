TEST_SERVER=130.241.16.49
#DEMO_SERVER=130.241.16.49
DEMO_SERVER=11111111111111
DEPHOST=`hostname`
DEPLOYSCRIPT=deploy.sh

all:
	@echo -n "run like this:"
	@echo    "'make deploy-test'"
	@echo -n "           or:"
	@echo    "'make deploy-drift'"



gup-items-test:
	$(eval DEPDIR := "/data/test/gup-items")
	@echo "ssh -X rails@${TEST_SERVER} ${DEPDIR}/${DEPLOYSCRIPT} ${ACTION} ${USER}:${DEPHOST} test ${DEPDIR}"

gup-people-test:
	$(eval DEPDIR := "/data/test/gup-people")
	@echo "ssh -X rails@${TEST_SERVER} ${DEPDIR}/${DEPLOYSCRIPT} ${ACTION} ${USER}:${DEPHOST} test ${DEPDIR}"
	
gup-items-demo:
	$(eval DEPDIR := "/data/demo/gup-items")
	@echo "ssh -X rails@${DEMO_SERVER} ${DEPDIR}/${DEPLOYSCRIPT} ${ACTION} ${USER}:${DEPHOST} test ${DEPDIR}"


guppi-test:

GUP-test:

