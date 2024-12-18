# Eventdisplay Analysis Files for CTA

[![DOI](https://zenodo.org/badge/220769681.svg)](https://zenodo.org/badge/latestdoi/220769681)
[![License](https://img.shields.io/badge/License-BSD_3--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)

Configuration and run parameter files for Eventdisplay

Required for the analysis of CTA Monte Carlo events.
Analysis requires additional IRF files (lookup tables, radial acceptances, etc)

Following directories and files are available:

ParameterFiles

- parameter files required for running most steps of Eventdisplay
- EVNDISP.global.runparameter (global parameters; not important)
- EVNDISP.reconstruction.runparameter (parameters used in eventdisplay reconstruction)
- TMVA.BDT.runparameter (parameters used for gamma/hadron BDT training)
- TMVA.BDTDisp.runparameter (parameters used for disp BDT regression analysis; direction + energy)

GammaHadronCutFiles

- parameter files for gamma/hadron separation cuts

AstroData/TeV_data

- spectra for Crab Nebula, proton and electron cosmic rays (used in sensitivity analysis)

DetectorGeometry

- array layout files (to be used to select arrays from prodX hyper arrays)

## Licence

License: BSD-3 (see LICENSE file)

## Contact

Gernot Maier
