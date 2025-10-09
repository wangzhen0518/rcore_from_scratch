run: user os

user:
	cd user; \
	make
# 	cd ..

os:
	cd os; \
	make run
# 	cd ..

clean: clean_user clean_os

clean_user:
	cd user; \
	make clean
# 	cd ..

clean_os:
	cd os; \
	make clean
# 	cd ..

.PHONY: run clean user os clean_user clean_os