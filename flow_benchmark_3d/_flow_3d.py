from pathlib import Path
import sys
if sys.version[:3] < '3.8':
    from typing_extensions import Literal
else:
    from typing import Literal

import porepy as pp


def case2(refinement: Literal[0, 1, 2]) -> pp.GridBucket:
    """ Case 2 in 3d flow benchmark.

    Parameters:
        refinement (int): Refinement level. Should be 0, 1 or 2,
            corresponding to grids with roughly 500, 4k and 32k
            3d cells, respectively.

    Returns:
        pp.GridBucket: Mixed-dimensional grid of the domain.

    """
    abs_path = Path(__file__)
    directory = abs_path.parent / Path("case2")
    if refinement == 0:
        file_name = directory / Path("mesh500.geo")
    elif refinement == 1:
        file_name = directory / Path("mesh4k.geo")
    elif refinement == 2:
        file_name = directory / Path("mesh32k.geo")
    else:
        raise ValueError(f"Expected refinement level 0, 1, or 2, got {refinement}")

    return pp.fracture_importer.dfm_from_gmsh(str(file_name), 3)


def case3(refinement: Literal[0, 1, 2, 3]) -> pp.GridBucket:
    """ Case 3 in 3d flow benchmark.

    Parameters:
        refinement (int): Refinement level. Should be 0, 1, 2 or 3.
            The first two levels (0 and 1) corresponds to roughly 30K and 140K
            3d cells as prescribed in the benchmark. The two latter refinements
            produce grids with 350K and 500K 3d cells (depending a bit on Gmsh
            version).

    Returns:
        pp.GridBucket: Mixed-dimensional grid of the domain.

    """
    abs_path = Path(__file__)
    directory = abs_path.parent / Path("case3")
    if refinement == 0:
        file_name = directory / Path("mesh30k.geo")
    elif refinement == 1:
        file_name = directory / Path("mesh140k.geo")
    elif refinement == 2:
        file_name = directory / Path("mesh350k.geo")
    elif refinement == 3:
        file_name = directory / Path("mesh500k.geo")
    else:
        raise ValueError(f"Expected refinement level 0, 1, 2 or 3, got {refinement}")

    return pp.fracture_importer.dfm_from_gmsh(str(file_name), 3)



