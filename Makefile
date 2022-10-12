#!/usr/bin/env make
APP1=//src/app1:hello
APP2=//src/app2:hello

ALL:
	@echo " -- ALL --"

build: 
	bazel build //...

build_app1:
	@echo ""
	bazel build $(APP1)

build_app2:
	@echo ""
	bazel build $(APP2)

run: run_app1 run_app2

run_app1:
	@echo ""
	bazel run $(APP1)

run_app2:
	@echo ""
	bazel run $(APP2)

test:
	bazel test //...