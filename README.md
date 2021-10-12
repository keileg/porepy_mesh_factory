# PorePy Mesh Factory
This repository is intended as a collection of tools for generation of computational meshes in fractured domains. The fracture networks and meshes can be accessed in (up to) three ways:
* In terms of the fracture network geometry, typically as a csv file
* As a gmsh .geo file, where the mesh can be generated, mesh sizes controlled etc.
* By import into [PorePy](https://github.com/pmgbergen/porepy), for use in simulations in fractured porous media.

While the latter is the main use case for this repository, the gmsh files generated during mesh construction can also be imported into other software.


## How to use
The networks can be imported to PorePy by the commands

```python
import porepy_mesh_factory as pmf
pmf.main.generate(case=case_name)
```

where case_name is specified below. Additional arguments may be needed to import specific cases; see the files doing specific imports for more.

## Available networks
* Case 3 from 'Benchmarks for single-phase flow in fractured porous media' by Flemisch et al, Advances in Water Resources, 2018. case_name = 'flow_benchmark_2d_case_3'
* Case 4 from 'Benchmarks for single-phase flow in fractured porous media' by Flemisch et al, Advances in Water Resources, 2018. case_name = 'flow_benchmark_2d_case_4'
* Case 2 from 'Verification benchmarks for single-phase flow in three-dimensional fractured porous media' by Berre et al, Advances in Water Resources, 2021. case_name = 'flow_benchmark_3d_case_2'
* Case 3 from 'Verification benchmarks for single-phase flow in three-dimensional fractured porous media' by Berre et al, Advances in Water Resources, 2021. case_name = 'flow_benchmark_3d_case_3'
* Case 4 from 'Verification benchmarks for single-phase flow in three-dimensional fractured porous media' by Berre et al, Advances in Water Resources, 2021. case_name = 'flow_benchmark_3d_case_4'


## Missing a network?
Networks are added on an on-demand basis, although the intention for this repository is to provide cases that will be of interest in multiple scenarios. If you would like to see a network added to the list, post and issue, and we will consider it.
