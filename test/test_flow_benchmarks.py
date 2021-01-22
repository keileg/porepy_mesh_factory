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


@pytest.mark.parametrize(
    "mesh_args", [None, {"mesh_size_frac": 800, "mesh_size_min": 50}]
)
def test_case4_2d(mesh_args):
    case = "flow_benchmark_2d_case_4"
    gb = pmf.main.generate(case, mesh_args=mesh_args)

    if mesh_args is None:
        # Obtained with gmsh 4.6; could change with later versions of gmsh
        assert gb.grids_of_dimension(2)[0].num_cells == 11582
    else:
        # No checks on the cell numbers, but some quality checks on the gb
        assert len(gb.grids_of_dimension(2)) == 1
        assert len(gb.grids_of_dimension(1)) == 63
        assert len(gb.grids_of_dimension(0)) == 85


@pytest.mark.parametrize("refinement", [0, 1, 2])
def test_case2_3d(refinement):
    case = "flow_benchmark_3d_case_2"

    gb = pmf.main.generate(case, refinement=refinement)

    assert len(gb.grids_of_dimension(3)) == 1
    assert len(gb.grids_of_dimension(2)) == 9
    assert len(gb.grids_of_dimension(1)) == 69
    assert len(gb.grids_of_dimension(0)) == 27


@pytest.mark.parametrize("refinement", [0, 1, 2, 3])
def test_case3_3d(refinement):
    case = "flow_benchmark_3d_case_3"

    gb = pmf.main.generate(case, refinement=refinement)
    assert len(gb.grids_of_dimension(3)) == 1
    assert len(gb.grids_of_dimension(2)) == 8
    assert len(gb.grids_of_dimension(1)) == 7


def test_case4_3d():
    case = "flow_benchmark_3d_case_4"
    gb = pmf.main.generate(case)
    assert len(gb.grids_of_dimension(3)) == 1
    assert len(gb.grids_of_dimension(2)) == 52
    assert len(gb.grids_of_dimension(1)) == 106
