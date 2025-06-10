EDTSurf : ParsePDB.o ProteinSurface.o EDTSurf.o
	c++ ParsePDB.o ProteinSurface.o EDTSurf.o -o EDTSurf
	rm *.o
ProteinSurface.o : ProteinSurface.cpp
	c++ -c ProteinSurface.cpp -o ProteinSurface.o
ParsePDB.o : ParsePDB.cpp
	c++ -c ParsePDB.cpp -o ParsePDB.o
EDTSurf.o : EDTSurf.cpp
	c++ -c EDTSurf.cpp -o EDTSurf.o
