import re
import uuid

with open("input/fsh/examples/bundle-epi-type3-example-wonderdrug.fsh", "r") as f:
    lines = f.readlines()

out = []
in_comp = False
for line in lines:
    if line.startswith("Instance: composition-epi-type3-example-wonderdrug"):
        in_comp = True
    elif line.startswith("Instance: ") and not line.startswith("Instance: composition-epi-type3-example-wonderdrug"):
        in_comp = False
        
    m = re.match(r'^(\*\s+section(?:\[[\w\=]+\])?(?:\.section(?:\[[\w\+\=]+\])?)*)\.title\s*=(.*)', line)
    if in_comp and m:
        base = m.group(1)
        if base.endswith('[+]'):
            id_base = base
            title_base = base[:-3] + '[=]'
            out.append(f"{id_base}.id = \"{uuid.uuid4()}\"\n")
            out.append(f"{title_base}.title ={m.group(2)}\n")
        elif base.endswith('[0]'):
            id_base = base
            title_base = base[:-3] + '[=]'
            out.append(f"{id_base}.id = \"{uuid.uuid4()}\"\n")
            out.append(f"{title_base}.title ={m.group(2)}\n")
        else:
            out.append(f"{base}.id = \"{uuid.uuid4()}\"\n")
            out.append(line)
    elif in_comp and line.startswith("* language = #en"):
        out.append(line)
        out.append("* contained[0] = binaryImage-t3\n")
    else:
        out.append(line)

# Append the binary
out.extend([
    "\nInstance: binaryImage-t3\n",
    "InstanceOf: Binary\n",
    "Usage: #inline\n",
    "* id = \"binaryImage-t3\"\n",
    "* contentType = #image/png\n",
    "* data = \"iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII=\"\n"
])

with open("input/fsh/examples/bundle-epi-type3-example-wonderdrug.fsh", "w") as f:
    f.writelines(out)
print("Done")
