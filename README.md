This repository contains several examples for creating simple analyses and histograms from the open data released by the CMS experiment at the LHC (see http://opendata.cern.ch). The data in the examples are in csv format and describe events containing two muons:

```
Run,Event,Type1,E1,px1 ,py1,pz1,pt1,eta1,phi1,Q1,Type2,E2,px2,py2,pz2,pt2,eta2,phi2,Q2,M
146436,90830792,G,19.1712,3.81713,9.04323,-16.4673,9.81583,-1.28942,1.17139,1,T,5.43984,-0.362592,2.62699,-4.74849,2.65189,-1.34587,1.70796,1,2.73205
146436,90862225,G,12.9435,5.12579,-3.98369,-11.1973,6.4918,-1.31335,-0.660674,-1,G,11.8636,4.78984,-6.26222,-8.86434,7.88403,-0.966622,-0.917841,1,3.10256
146436,90644850,G,12.3999,-0.849742,9.4011,8.04015,9.43943,0.77258,1.66094,1,G,8.55532,-4.85155,6.97696,-0.983229,8.49797,-0.115445,2.17841,-1,9.41149
146436,90678594,G,17.8132,-1.95959,2.80531,17.4811,3.42195,2.3335,2.18053,1,G,9.42174,4.36523,0.168017,8.34713,4.36846,1.403,0.0384708,1,7.74702
```

The examples here use two JavaScript libraries, Flot (http://www.flotcharts.org) and d3 (http://d3js.org) and the R language (http://www.r-project.org). To use the first two: in a terminal, in the opendata-histograms directory, run a simple HTTP server by typing the command

```
python -m SimpleHTTPServer
```

Then in a browser go to http://localhost:8000

To try the R example type each command at the R console prompt.
