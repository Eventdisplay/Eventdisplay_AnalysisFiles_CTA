eventdisplay reconstruction parameter file
===========================================

Prod5

NN cleaning

Note: all line without '*' in the beginning are ignored

The following file describes the reconstruction parameters for eventdisplay:

i) trace integration and image cleaning parameter

ii) quality cuts applied before the array analysis 
(reconstruction of shower core and direction).

Note that these values override parameters given at the command line
---------------------------------------------------------------------------------------------------

CTA Telescope types:
(note that short version of teltype IDs does not work correctly for prod3)

# prod5
138704810:  LST (short version: -387 )
10408618:   FlashCam MST
10608418:   NectarCam MST
201409917:  SST

trace integration and image cleaning parameter
--------------------------------------------------

 trace integration <integration method (0=off/1=default/2=sliding window)> <digital filter on> <upsample parameter> <pole zero>
 (digital filter is by default off)
* -387      FADCANALYSIS 2
FlashCam digitial filtering analysis 
(pole zero value derived from pulse_FlashCam_raw2.dat)
* 10408618  FADCANALYSIS 2 1 4 0.75
* 10608418  FADCANALYSIS 2
* 201409917 FADCANALYSIS 2

 double pass method 
    Par1: <doublepass (on=1, off=0)>
    Par2: <integration window length for pass 1>  
    Par3: <integration method for pass 1 (1/2)>
    Par4: <double pass error option (0/1)>
    Par5: <time difference between LG and HG T0 (default -5 samples)>
* -387      FADCDOUBLEPASS 0 4 2 0
* 10408618  FADCDOUBLEPASS 0 2 2 0
* 10608418  FADCDOUBLEPASS 0 6 2 0
* 201409917 FADCDOUBLEPASS 0 6 2 0

 trace integration window <window 1> <window 2>
* -387      FADCSUMMATIONWINDOW 2 2
* 10408618  FADCSUMMATIONWINDOW 4 4
* 10608418  FADCSUMMATIONWINDOW 4 4
* 201409917 FADCSUMMATIONWINDOW 6 6

 trace integration start 
 (for window 1 for integration method 1)
    Par1: <sample # of window start> 
    Par2: <shift of window start for double pass>
    Par3: <timing method used for calculation of window start (FIXED/TZERO/TAVERAGE)>
    Par4: <max difference between T0 and trace integration start>
    Par5: <max trace sample for sliding window search (default: nsamples)>
    Par6: <reverse search for low gain (default: 1)>
* -387      FADCSUMMATIONSTART 1 0 TAVERAGE -4 -1 0
* 10408618  FADCSUMMATIONSTART 10 0 TAVERAGE -4 95 0
* 10608418  FADCSUMMATIONSTART 0  0 TAVERAGE -4 -1 0
* 201409917 FADCSUMMATIONSTART 0  0 TAVERAGE -4 -1 0

General image cleaning parameters for TIMENEXTNEIGHBOUR
---------------------------------------------------------------------------------------------------
* -1 CreateIPRdatabase FALSE
* -1 IPRdatabaseFile EVNDISP_ANALYSIS_DIRECTORY
* -1 ReadIPRfromDST TRUE
* -1 ReadIPRfromDatabase FALSE
* -1 IPRdatabase EVNDISP_ANALYSIS_DIRECTORY
* -1 WriteGraphsToFile FALSE
* -1 GraphsFile EVNDISP_ANALYSIS_DIRECTORY

image cleaning <method=TWOLEVELCLEANING/TIMECLUSTERCLEANING/TIMETWOLEVEL/CLUSTERCLEANING> <FIXED/VARIABLE>
LSTs
* -387 IMAGECLEANINGMETHOD TIMENEXTNEIGHBOUR FIXED
 probability to get fake image from NSB for THIS readout window 
 smaller values -> stronger tail cuts
* -387 IMAGECLEANING_FAKEPROBABILITY 0.5E-3
* -387 IMAGECLEANING_ACTIVEMULTIPLICITIES 4NN 2NNp1 3NN 2NN
* -387 IMAGECLEANING_NRINGS 3
* -387 IMAGECLEANING_COINCWINLIMIT 8.0
* -387 IMAGECLEANING_NNOPTNOTIMEING FALSE
* -387 IMAGECLEANING_SETEXPLICITSAMPLETIMESLICE FALSE
* -387 IMAGECLEANING_SAMPLETIMESLICE 1
* -387 IMAGECLEANING_NBINSADC 50

MSTs
* 10408618 IMAGECLEANINGMETHOD TIMENEXTNEIGHBOUR FIXED
* 10408618 IMAGECLEANING_FAKEPROBABILITY 0.5E-3
* 10408618 IMAGECLEANING_ACTIVEMULTIPLICITIES 4NN 2NNp1 3NN 2NN
* 10408618 IMAGECLEANING_NRINGS 3
* 10408618 IMAGECLEANING_COINCWINLIMIT 8.0
* 10408618 IMAGECLEANING_NNOPTNOTIMEING FALSE
* 10408618 IMAGECLEANING_SETEXPLICITSAMPLETIMESLICE FALSE
* 10408618 IMAGECLEANING_SAMPLETIMESLICE 1
* 10408618 IMAGECLEANING_NBINSADC 50

* 10608418 IMAGECLEANINGMETHOD TIMENEXTNEIGHBOUR FIXED
* 10608418 IMAGECLEANING_FAKEPROBABILITY 0.5E-3
* 10608418 IMAGECLEANING_ACTIVEMULTIPLICITIES 4NN 2NNp1 3NN 2NN
* 10608418 IMAGECLEANING_NRINGS 3
* 10608418 IMAGECLEANING_COINCWINLIMIT 8.0
* 10608418 IMAGECLEANING_NNOPTNOTIMEING FALSE
* 10608418 IMAGECLEANING_SETEXPLICITSAMPLETIMESLICE FALSE
* 10608418 IMAGECLEANING_SAMPLETIMESLICE 1
* 10608418 IMAGECLEANING_NBINSADC 50

SST
* 201409917 IMAGECLEANINGMETHOD TIMENEXTNEIGHBOUR FIXED
* 201409917 IMAGECLEANING_FAKEPROBABILITY 0.5E-3
* 201409917 IMAGECLEANING_ACTIVEMULTIPLICITIES 4NN 2NNp1 3NN 2NN
* 201409917 IMAGECLEANING_NRINGS 3
* 201409917 IMAGECLEANING_COINCWINLIMIT 8.0
* 201409917 IMAGECLEANING_NNOPTNOTIMEING FALSE
* 201409917 IMAGECLEANING_SETEXPLICITSAMPLETIMESLICE FALSE
* 201409917 IMAGECLEANING_SAMPLETIMESLICE 1
* 201409917 IMAGECLEANING_NBINSADC 50


pixel shape definition (important for edge pixel finder)
* -387      SQUAREPIXELS FALSE
* 10408618  SQUAREPIXELS FALSE
* 10608418  SQUAREPIXELS FALSE
* 201409917 SQUAREPIXELS TRUE

 image calculation at the edge of the camera
  <start fit for image with at least this loss> <min number of tubes>
* -387      LLEDGEFIT -1.0 5
* 10408618  LLEDGEFIT -1.0 5
* 10608418  LLEDGEFIT -1.0 5
* 201409917 LLEDGEFIT -1.0 5

 change the default neighbour search by increasing the search area by this factor
* -387       NEIGHBOURDISTANCEFACTOR 1.
* 10408618   NEIGHBOURDISTANCEFACTOR 1.
* 10608418   NEIGHBOURDISTANCEFACTOR 1.
* 201409917  NEIGHBOURDISTANCEFACTOR 1.
---------------------------------------------------------------------------------------------------
Quality cuts applied before stereo reconstruction
---------------------------------------------------------------------------------------------------
!! note that any changes here must be propagated below into the subarrays !!

* -1 RECMETHOD 4
* -1 MINANGLE 0.

LST settings
* -387 NTUBES    4    10000
* -387 LOSS1      -1.  0.4  0  10
* -387 LOSS2      -1.  0.4  10 10000
* -387 SIZE      0  1.e30
 
MST settings
* 10408618 NTUBES    4    10000
* 10408618 LOSS1      -1.  0.40  0  10
* 10408618 LOSS2      -1.  0.40  10 10000
* 10408618 SIZE      0  1.e30

* 10608418 NTUBES    4    10000
* 10608418 LOSS1      -1.  0.40  0  10
* 10608418 LOSS2      -1.  0.40  10 10000
* 10608418 SIZE      0  1.e30

SST settings
* 201409917 NTUBES    5    10000
* 201409917 LOSS1      -1.  0.4  0  10
* 201409917 LOSS2      -1.  0.4  10 10000

