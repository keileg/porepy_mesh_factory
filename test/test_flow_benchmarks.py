import pytest
import porepy_mesh_factory as pmf


@pytest.mark.parametrize(
    "mesh_args", [None, {"mesh_size_frac": 0.5, "mesh_size_bound": 0.5}]
)
def test_case3_2d(mesh_args):
    case = "flow_benchmark_2d_case_3"
    gb = pmf.main.generate(case, mesh_args=mesh_args)

    if mesh_args is None:
        # Obtained with gmsh 4.6; could change with later versions of gmsh
        assert gb.grids_of_dimension(2)[0].num_cells == 1499
    else:
        # No checks on the cell numbers, but some quality checks on the gb
        assert len(gb.grids_of_dimension(2)) == 1
        assert len(gb.grids_of_dimension(1)) == 10
        assert len(gb.grids_of_dimension(0)) == 6


@pytest.mark.parametrize("refinement", [0, 1, 2])
def test_case2_3d(refinement):
    case = "flow_benchmark_3d_case_2"

    gb = pmf.main.generate(case, refinement=refinement)
