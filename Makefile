# ----------------------------------------------------------- #
# This makefile shall coordinate deployment and test for all  #
# targets:                                                    #
# demo                                                        #
# test                                                        #
# live                                                        #
# local                                                       #
# integration                                                 #
# ----------------------------------------------------------- #
TEST_SERVER=130.241.16.49
TEST_SERVERNAME=guppi-test.ub.gu.se
TEST_DEPDIR=/data/test/guppi
TEST_DEPLOYSCRIPT=${TEST_DEPDIR}/deploy.sh
# ----------------------------------------------------------- #
DEPHOST=`hostname`
APPENV=production
# ----------------------------------------------------------- #


all:
	@echo    "# --------------------------------------------------------------------- #"
	@echo    "# Normal behaviour (for development) is to update the app.              #"
	@echo    "# Database changes according to migrations.                             #"
	@echo    "# To update already installed app:                                      #"
	@echo    "# run like this (one of the following):                                 #"
	@echo    "                                                                        "
	@echo    "'make test-update'"
	@echo    "'make demo-update'"
	@echo    "'make live-update'"
	@echo    "'make local-update'"
	@echo    "'make integration-update'"
	@echo    "                                                                         "
	@echo    "# --------------------------------------------------------------------- #"
	

test:
	@echo "ssh -X rails@${TEST_SERVER} ${TEST_DEPLOYSCRIPT} update ${USER}:${DEPHOST} test ${TEST_DEPDIR}"
