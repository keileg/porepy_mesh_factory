""" 
"""
import porepy as pp

from porepy_mesh_factory.flow_benchmark_3d import _flow_3d

__all__ = ["generate"]


def generate(case: str, **kwargs) -> pp.GridBucket:
    """ Main function for generating meshes of fracture networks and
    return a PorePy mixed-dimensional mesh
    """
    case = case.lower().strip()

    if case == "flow_benchmark_3d_case_2":
        return _flow_3d.case2(**kwargs)

    else:
        raise ValueError(f"Unknown case {case}")