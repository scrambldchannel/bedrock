from pathlib import Path
from tm1filetools import TM1FileTool
from tm1filetools.files import TM1ProcessFile


path = Path("main")

ft = TM1FileTool(path=path)

# ft._find_procs()
main_procs = ft.get_procs(control=True)


# files = [f for f in ft._path.glob(pattern="*.pro")]

for p in main_procs:

    failures = []
    try:
        json_out = p._to_json()
        with open(f"json/{p.stem}.json", "w") as outfile:
            outfile.write(json_out)
    except:
        pass





