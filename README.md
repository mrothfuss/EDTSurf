# EDTSurf: Quick and accurate construction of macromolecular surfaces 

## Introduction

EDTSurf is a open source program to construct triangulated surfaces for macromolecules. It generates three major macromolecular surfaces: van der Waals surface, solvent-accessible surface and molecular surface (solvent-excluded surface). EDTSurf also identifies cavities which are inside of macromolecules. Recently, EDTSurf has been extended to calculate atom depth and residue depth to solvent-accessible surface.

Project homepage: https://zhanggroup.org/EDTSurf

## Reference

D. Xu, Y. Zhang (2009) Generating Triangulated Macromolecular Surfaces by Euclidean Distance Transform. PLoS ONE 4(12): e8140. ([download the PDF file](https://zhanggroup.org/EDTSurf/EDTSurf.pdf)). 

D. Xu, H. Li, Y. Zhang (2013) Protein Depth Calculation and the Use for Improving Accuracy of Protein Fold Recognition. Journal of Computational Biology 20(10):805-816. ([download the PDF file](https://zhanggroup.org/EDTSurf/depth-jcb.pdf)). 

## Disclaimer

Permission to use, copy, modify, and distribute this program for any purpose, with or without fee, is hereby granted, provided that this copyright notice and the reference information appear in all copies or substantial portions of the Software. It is provided "as is" without express or implied warranty. 

## Usage

    EDTSurf -i inputfile ...
    Specific options:
        -o prefix of output files (default is the prefix of inputfile)
        -t triangulation type, 1-MC 2-VCMC (default is 2)
        -s surface type, 1-VWS 2-SAS 3-MS 0-DEPTH (default is 3)
        -c color mode, 1-pure 2-atom 3-chain (default is 2)
        -p probe radius, float point in [0,2.0] (default is 1.4)
        -h inner or outer surface for output, 1-inner and outer 2-outer 3-inner (default is 1)
        -f scale factor, float point in (0,20.0] (default is 4.0)
           Molecule is scaled by this factor to fit in a bounding box. Scale factor is the larger the better, but will increase the memory use. Our strategy is first enlarging the molecule to check if it exceeds the maximum bounding box. If yes, then reset a proper scale factor to fit the molecule in the maximum bounding box.
