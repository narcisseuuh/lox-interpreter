JFLAGS = -g
JC = javac
JVM = java
FILE=

.SUFFIXES: .java .class

.java.class:
	$(JC) $(JFLAGS) $*.java

MAIN = Lox	  

default: classes

classes:
	$(JC) lox/*.java
	$(JC) tool/*.java

clean:
	$(RM) lox/*.class
	$(RM) tool/*.class
	
run:
	$(MAIN).class
	$(JVM)$(MAIN)$(FILE)