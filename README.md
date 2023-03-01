# DeltaModulationApp
Simple Matlab App that calculates and displays the Delta Modulation.

Delta modulation, also referred to as Δ-modulation or Δ-M, is used for pulse frequency modulation (PFM) and pulse density modulation (PDM) and is a variant of differential pulse code modulation (DPCM) in which the pulse-coded signal at the transmission channel can assume only two logic levels.

## Idea:
I wanted to build a handy application that demonstrates the functionality of the Delta Modulation (DPCM, first order).
<a href="url"><img src="https://user-images.githubusercontent.com/55065075/221441425-c1017f52-6145-499d-8342-19eb14d04fb2.png" height="auto" width="650" ></a>

## Concept:
The application (highligthed in the red box in the image above) should take a sampled sequence x<sub>a</sub>(n) of varoius length and the step height of the quantizer Δ as input and returns the reconstructed sequence y(n). Furthermore, result should be ploted in an extra figure. <br>
 
## Result: 
The GUI takes the sampling sequence x<sub>a</sub>(n) and the step height of the quantizer Δ as input. By clicking the "rekonstruiertes Signal y(n)"-button the signal before the quantization and the reconstructed signal at the end of the channel is displayed in a new figure. 
<a href="url"><img src="https://user-images.githubusercontent.com/55065075/222240178-02e274d8-8def-4d70-b5fa-23e1cc334c6c.png" height="auto" width="750" ></a>
## Project Status: 
Done.

## Built with:
Matlab - Required: App Designer

## Author:
Kian David Warias
