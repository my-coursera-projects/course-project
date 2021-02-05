all:
	@touch README.md
	@echo Project Title: A simple guessing game > README.md
	@echo >> README.md
	@echo -n "Created on ">> README.md
	@date -R >> README.md
	@echo >> README.md
	@echo -n "Lines of code in guessinggame.sh: ">> README.md
	@wc -l < guessinggame.sh >> README.md
