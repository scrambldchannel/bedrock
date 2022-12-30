from pathlib import Path
import pytest
import json
from TM1py.Objects import Process


proc_path = Path("main")
proc_files = [j for j in proc_path.glob("*.pro")]

json_path = Path("json")
json_files = [j for j in json_path.glob("*.json")]


@pytest.mark.parametrize("proc", [p.stem for p in proc_files])
def test_files_created(proc):

    assert proc in [j.stem for j in json_files]


@pytest.mark.parametrize("json_out", json_files)
def test_valid_json(json_out):

    with open(json_out, "r") as f:

        j = json.load(f)

    assert j
    assert "Name" in j.keys()


@pytest.mark.parametrize("json_out", json_files)
def test_valid_proc(json_out):

    with open(json_out, "r") as f:

        j = json.load(f)

    tm1py_proc = Process.from_dict(j)

    assert tm1py_proc