VAR := Value1 Value2 Value1 Value3 Value2

unique_var := $(shell echo $(VAR) | tr ' ' '\n' | sort -u)

print_unique_var:
	@echo $(unique_var)
