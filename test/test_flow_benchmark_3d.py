import porepy as pp
import pytest
import porepy_mesh_factory as pmf


@pytest.mark.parametrize("refinement", [0, 1, 2])
def test_geiger_3d(refinement):
    case = "flow_benchmark_3d_case_2"

    pmf.main.generate(case, refinement=refinement)
