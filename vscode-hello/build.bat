@echo off
call "D:\work\VisualStudio\VC\Auxiliary\Build\vcvarsall.bat" x64
set compilerflags=/Od /Zi /EHsc
set linkerflags=/OUT:vscode-hello.exe
cl.exe %compilerflags% main.cpp /link %linkerflags%