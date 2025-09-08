all:
	make -C core

rebuild:
	make -C core rebuild

update-dist:
	make -C core update-dist

preview-server:
	make -C core preview-server

copy-neo:
	make -C core
	jq '."rules"[0]' public/json/neo_layouts_based_on_abc_extended_layout.json | pbcopy
	@echo "Copied to clipboard"
