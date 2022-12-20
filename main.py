"""
"""
import porepy as pp

from porepy_mesh_factory.flow_benchmark_3d import _flow_3d
from porepy_mesh_factory.flow_benchmark_2d import _flow_2d

__all__ = ["generate"]


def generate(case: str, **kwargs) -> pp.MixedDimensionalGrid:
    """Main function for generating meshes of fracture networks and
    return a PorePy mixed-dimensional mesh.

    For an overview of implemented cases see Readme.md.

    """
    case = case.lower().strip()

    if case == "flow_benchmark_3d_case_1":
        return _flow_3d.case1(**kwargs)
    elif case == "flow_benchmark_3d_case_2":
        return _flow_3d.case2(**kwargs)
    elif case == "flow_benchmark_3d_case_3":
        return _flow_3d.case3(**kwargs)
    elif case == "flow_benchmark_3d_case_4":
        return _flow_3d.case4(**kwargs)
    elif case == "flow_benchmark_2d_case_2":
        return _flow_2d.case2(**kwargs)
    elif case == "flow_benchmark_2d_case_3":
        return _flow_2d.case3(**kwargs)
    elif case == "flow_benchmark_2d_case_4":
        return _flow_2d.case4(**kwargs)
    else:
        raise ValueError(f"Unknown case {case}")
