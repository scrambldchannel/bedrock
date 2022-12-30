from pathlib import Path
from tm1filetools import TM1FileTool
from tm1filetools.files import TM1ProcessFile


path = Path("main")

ft = TM1FileTool(path=path)

# ft._find_procs()
main_procs = ft.get_procs(control=True)


failures = []

for p in main_procs:

    try:
        json_out = p._to_json()
        with open(f"json/{p.stem}.json", "w") as outfile:
            outfile.write(json_out)
    except:
        pass
    finally:
        failures.append(p.name)

with open(f"failure_log", "w") as outfile:

    for fail in failures:
        outfile.write(f"{fail}\n")





