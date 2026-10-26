JAVACC = javacc
JAVAC = javac
JAVA = java
PARSER = Parser.jj
MAIN_CLASS = REXXCompiler

all: compile

compile: $(PARSER)
	$(JAVACC) $(PARSER)
	$(JAVAC) *.java

clean:
	rm -f *.class
	rm -f REXXCompiler.java REXXCompilerTokenManager.java REXXCompilerConstants.java
	rm -f SimpleCharStream.java Token.java TokenMgrError.java ParseException.java
	rm -f *~

test: compile
	@echo "Probando ejecucion de programa vacio..."
	echo "" | $(JAVA) $(MAIN_CLASS)
