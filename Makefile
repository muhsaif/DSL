CC = gcc
LEX = flex
YACC = bison

# Lex and Yacc files
LEXFILE = ui.l
YACCFILE = ui.y
OUTPUT = ui

# Generate .c files from lex and yacc
all: $(OUTPUT)

# Rule to generate the parser .c and .h files from Yacc
$(OUTPUT).tab.c $(OUTPUT).tab.h: $(YACCFILE)
	$(YACC) -d $(YACCFILE)

# Rule to generate the lexer .c file from Lex
$(OUTPUT).lex.c: $(LEXFILE)
	$(LEX) -o $(OUTPUT).lex.c $(LEXFILE)

# Compile and link
$(OUTPUT): $(OUTPUT).tab.c $(OUTPUT).lex.c
	$(CC) -o $(OUTPUT) $(OUTPUT).tab.c $(OUTPUT).lex.c -lfl

clean:
	rm -f $(OUTPUT) $(OUTPUT).tab.c $(OUTPUT).tab.h $(OUTPUT).lex.c

.PHONY: all clean
