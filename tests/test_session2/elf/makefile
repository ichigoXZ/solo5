target = trampoline
 
LDS := $(target).lds
CC := nasm
LD := ld

LDFLAGS := -nostdlib -z max-page-size=0x1000 -static

.PRECIOUS: %.o 
.PHONY: all clean

all: $(target) 

$(target) : $(target).o $(LDS)
	@echo "LD $@"
	$(LD) $(LDFLAGS) -T $(LDS) $< -o $@
#	$(LD) $< -o $@

$(target).o: $(target).s
	@echo "CC $@"
	nasm -w+all -f elf64 -g -o $@ $<

clean:
	rm -f $(target) $(target).o
