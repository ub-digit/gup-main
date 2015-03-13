	cd  ../gup-people
	rvm use 2.1.5
	git pull
	@echo "INPUT: are you sure you've edited config files? (Y/N)"
	bundle install
	rake db:migrate
	@echo "check ports (and kill?)"
	if [[ -n "`ps -ef | grep 'rails s -p 4011 -P /tmp/gup-people.pid' | grep -v grep`" ]]; then 
	  kill `cat /tmp/gup-people.pid`
	fi
	rails s -p 4011 -P /tmp/gup-people.pid
	@echo "kolla att det funkar"
	cd ../gup-main

