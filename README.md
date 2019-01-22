# Modelica models for the paper "A Fundamental Time-Domain and Linearized Eigenvalue Analysis..."
This repository contains the electrical power systems models used in the following paper (to be) presented in the [International Modelica Conference 2019](https://modelica.org/events/modelica2019):

> Marcelo de Castro Fernandes, Luigi Vanfretti, Janaína Gonçalves de Oliveira, Maxime Baudette "A Fundamental Time-Domain and Linearized Eigenvalue Analysis of Coalesced Power Transmission and Unbalanced Distribution Grids using Modelica and the OpenIPSL," Proceedings of the 13th International Modelica Conference, Regensburg, Germany, March 4–6, 2019.

Please see the full paper on the scope of usage for the models. You can download the full paper from the [conference website](https://modelica.org/events/modelica2019) when it becomes available. 

## How to Simulate it?

Follow the steps below:
- Load the OpenIPSL library distributed with this repository under `./Models/` by uncompressing the .zip file `OpenIPSL-master.zip`, in your local drive.
- In your Modelica compliant software, load the library `./OpenIpSL-master/OpenIPSL/package.mo`
- Again, in your Modelica compliant software, load the library `./OpenIpSL-master/OpenIPSL/Application_Examples/ThreePhase/package.mo`
- Again, in your Modelica compliant software, load the library `./PaperRepository/package.mo`. The package browser should look like this:

![PackageOrder](./Figures/PackageOrdering.png 'Paper package ordering.')


## Models used in the paper

The models corresponding to the tests made in the paper are within `PaperRepository.Systems`. There are seven models in `Systems`, but only six are used in the paper. Below, there is a summary of the correspondence between the simulations performed in the paper and their names in the folder `Systems`:

- Simulation I: `IEEE14_SinglePh_B02`. 
- Simulation II: `IEEE14_ThreePh_Bal_B02`. 
- Simulation III: `IEEE14_ThreePh_UnBal_B02`. 
- Simulation IV: `IEEE14_SinglePh_B11`. 
- Simulation V: `IEEE14_ThreePh_Bal_B11`.
- Simulation VI: `IEEE14_ThreePh_UnBal_B11`. 


The remaining model within `Systems` is `IEEE14_BaseCase` ant it corresponds to the original IEEE 14-bus case. This system was used to validate the IEEE 14-bus implementation in Modelica. 

## Examples

### Simulation I
When performing simulation I (`IEEE14_SinglePh_B02`), one should be able to have the result presented below by selecting the variable `B02.V`.  
![SimulationI](./Figures/B02_Extended.png 'Bus 02 voltage on simulation I.')

### Simulation IV
When performing simulation IV (`IEEE14_SinglePh_B11`), one should be able to have the result presented below by selecting the variable `B11.V`. 
![SimulationIV](./Figures/B02_Extended.png 'Bus 11 voltage on simulation IV.')

## Additional Information

The following information may be also be useful:
- The original final version for the paper is available in `./Paper/` in the portable document format (.pdf).
- The simulation parameter is already stored in each model annotation. Hence, there's no need to configure the simulation setup to the parameters presented in the paper. Just hit the Simulate button.
- If the user try to simulate the models in OpenModelica a problem may appear considering initialization. Do not dispair, this problem is related to OpenModelica solvers, but it is easily corrected. To correct the wrong initialization problem it is necessary to check the initialization box in some variables in the generators within `GenGroups`. On the other hand, there is no need to do such thing when using Dymola.
