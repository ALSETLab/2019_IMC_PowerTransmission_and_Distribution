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

- The models corresponding to the tests made in the paper are within `PaperRepository.Systems`. 
- Simulate the models and you shall obtain the results related to time-domain which are shown in the paper.

## Models used in the paper
