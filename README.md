# Flutter sensibility to semi-aeroelastic hinged wing parameters

The benefits of high aspect ratio wings in liftinduced drag are well known. However, this solution has welldefined limits imposed by airport regulation and increasing loads. The introduction of a hinged wingtip is a possible solution for both problems. The aim of this research is to study the influence of hinge parameters on the flutter performance of the wing.


The flutter analysis were run in NeoCASS which is a free collection of MATLAB modules. More information in https://www.neocass.org/

The folder Flutter Analysis contains the necessary files to use as NeoCASS inputs in order to run the flutter analysis. The file "MainFlutterAnalysis.m" can be used to run several flutter analysis, one for each different hinge stiffness values. 

The geometric files for different hinge positions can be found in the same folder. For example, the file "geo747-12.inc" is the geometric file with the hinge located at node 12. The hinge stiffnesses can be modified manually changing the CELAS element properties or modifying the array "stiffness_values" in "MainFlutterAnalysis.m"



![alt text](https://github.com/mid2SUPAERO/PIR_CNicolas_Juarez_AlbatrossOneFlutter/tree/master/Article/images/mode9.png)
