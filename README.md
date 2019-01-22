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

- The models corresponding to the tests made in the paper are within `PaperRepository.Systems`. 

## Models used in the paper

As it was described, the models used in the paper are in the package `Systems`, within `PaperRepository`. There are seven models in the package `Systems`, but only six are used in the paper. Below, there is a summary of the correspondence simulations performed in the paper and their


The remaining system corresponds to the original IEEE 14-bus case.

## Examples

### Simulation I
![SimulationI](./Figures/B02_Extended.png 'Bus 02 voltage on simulation I.')

### Simulation IV
![SimulationIV](./Figures/B02_Extended.png 'Bus 11 voltage on simulation IV.')
