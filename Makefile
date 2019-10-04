#比如同一目录下有libxxx.a文件和libxxx.so文件,gcc默认会链接so,改变这一默认行为的方法就是:将"-lxxx"改为"-l:libxxx.a"
GCC = gcc -fconstant-string-class=NSConstantString -std=c99
LIB = -LC:/GNUstep/GNUstep/System/Library/Libraries
INC = -IC:/GNUstep/GNUstep/System/Library/Headers -I./include

objects = main.o LinkNode.o FirstWindow.o Calc.o
libs = -l:libobjc.dll.a -l:libgnustep-base.dll.a -l:libGorm.dll.a -l:libGormCore.dll.a -l:libgnustep-gui.dll.a \
	   -l:libgnustep-base.dll.a
out = proc.exe

proc : $(objects)
	$(GCC) -o $(out) $(objects) $(LIB) $(libs)

main.o : ./src/main.m ./include/main.h
	$(GCC) $(INC) -c ./src/main.m
LinkNode.o : ./src/LinkNode.m ./include/LinkNode.h
	$(GCC) $(INC) -c ./src/LinkNode.m
FirstWindow.o : ./src/FirstWindow.m ./include/FirstWindow.h
	$(GCC) $(INC) -c ./src/FirstWindow.m
Calc.o : ./src/Calc.m ./include/Calc.h
	$(GCC) $(INC) -c ./src/Calc.m

clean :
	rm $(out) $(objects)

