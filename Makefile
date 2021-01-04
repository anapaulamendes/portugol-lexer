CP = /usr/local/lib/antlr-4.7.1-complete.jar:.
ANTLR = java -cp $(CP) org.antlr.v4.Tool
JAVAC = javac -cp $(CP)

generate : Lexer.class PortugolLexer.class

PortugolLexer.class : PortugolLexer.g
	$(ANTLR) $<
	$(JAVAC) PortugolLexer.java

Lexer.class : Lexer.java PortugolLexer.class
	$(JAVAC) $<

run:
	echo "code example here" | java -cp $(CP) Lexer

clean:
	rm -f *.class *.tokens *.interp PortugolLexer.java 
