This is an minimal Fortran program that links to hec-dss (heclib) library

A default Intel project needs these adjustments below, to link to DSS.

| Change        | UI           | Command Line  |
| ------------- |:-------------:| -----:|
| Calling Convention (DSS mixes C and Fortran)   |Fortran->External Procedures: C, REFERENCE | /iface:cref  |
| Name Case interpretation   | Fortran->External Procedures: Lower Case  | (/names:lowercase) |
| Additional dependencies   | Linker->Input:Additional Dependencies: heclib_f.lib heclib_c.lib zlibstatic.lib      |    heclib_f.lib heclib_c.lib zlibstatic.lib |
| Ignoring some default libraries | Linker->Input:Ignore Specific Library: libcmt;MSVCRT;libifcoremdd       |   /NODEFAULTLIB:"libcmt" /NODEFAULTLIB:"MSVCRT" /NODEFAULTLIB:"libifcoremdd"  |


