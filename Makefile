test: node_modules
	@echo 'test!'
	
node_modules: package-lock.json
	@echo "install node_mudules"
	npm ci
