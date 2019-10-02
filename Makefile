#比如同一目录下有libxxx.a文件和libxxx.so文件,gcc默认会链接so,改变这一默认行为的方法就是:将"-lxxx"改为"-l:libxxx.a"
GCC = gcc -fconstant-string-class=NSConstantString -std=c99
LIB = -L C:/GNUstep/GNUstep/System/Library/Libraries
INC = -I C:/GNUstep/GNUstep/System/Library/Headers

objects = main.o
libs = -l:libobjc.dll.a -l:libgnustep-base.dll.a
out = proc.exe

proc : $(objects)
	$(GCC) -o $(out) $(objects) $(LIB) $(libs)

main.o : main.m main.h
	$(GCC) $(INC) -c main.m

clean :
	rm $(out) $(objects)

