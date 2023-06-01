java:
	javac *.java && java App
setup:
	# ONLY RUN ONCE. Example: make setup N="iwandejong"
	git init && gh repo create $(N) --source=. --remote=upstream --private
commit:
	# Example commit: make commit M="Added a new feature"
	git add . && git commit -m "$(M)" && git push upstream master
sync:
	# Syncs the local repo with the remote repo
	git fetch upstream && git merge upstream/main