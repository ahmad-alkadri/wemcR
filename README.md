# wemcR

[![Build Status](https://travis-ci.org/ahmad-alkadri/wemcR.svg?branch=master)](https://travis-ci.org/ahmad-alkadri/wemcR)

## Overview

The **wemcR** (read as "whimsy-R") is an R package 
designed to calculate the equilibrium moisture content (EMC)
of wood given certain variables and parameters. 
Current version only support the Hailwood-Horrobin methods
(please refer to this [Wikipedia page](https://en.wikipedia.org/wiki/Equilibrium_moisture_content) for more info regarding this model)
but future versions will also include other models, 
particularly those that support:

+ hysteresis condition
+ cyclic output

## Installation

```
# Install from Github
# install.packages("devtools")
devtools::install_github("ahmad-alkadri/wemcR")
```
