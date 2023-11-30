JFLAGS = -g
JC = javac
JVM = javac

.SUFFIXES: .java .class

.java.class:
	$(JC) $(JFLAGS) $*.java


CLASSES = \
		  src/Lox.java \
		  src/Scanner.java \
		  src/TokenType.java \
		  src/Return.java \
		  src/Resolver.java \
		  src/Parser.java \
		  src/LoxInstance.java \
		  src/LoxFunction.java \
		  src/LoxClass.java \
		  src/LoxCallable.java \
		  src/Interpreter.java \
		  src/Environment.java \
		  src/AstPrinter.java \
		  lib/GenerateAst.java

MAIN = Lox	  

default: classes

classes: $(CLASSES:.java=.class)

clean:
	$(RM) *.class
	
run:
	$(MAIN).class
	$(JVM)$(MAIN)