import re
import uuid

files = [
    'input/images/examples/epi-list-showcase-1.html',
    'input/images/examples/epi-list-showcase-2.html',
    'input/images/examples/epi-list-showcase-3.html'
]

asean_uuids = [
    ("2088b90a-1158-45ad-ac19-0f47e3a96887", "Brunei"),
    ("48c2ae46-ceaa-4ea1-b998-ab885ca6eb65", "Cambodia"),
    ("c22141d8-0e86-4f40-8b09-cfad45a90710", "Indonesia"),
    ("a1b2c3d4-b4a1-4191-88fc-8f64da2f518e", "Laos"),
    ("abfa5222-3832-4977-bcbd-5509ba19cd75", "Malaysia"),
    ("7f5f90c3-fba0-4be6-8c46-1e96d7fb1178", "Myanmar"),
    ("df35b80a-5c21-432a-bc90-953bc8682827", "Philippines"),
    ("1d624a9a-efaf-4c33-87ea-25aa8cfcd9bd", "Singapore"),
    ("5d8a9ea8-2287-4d7a-b286-9ac747ef9ec2", "Thailand"),
    ("96e8ba7a-6415-46aa-bcd0-63ceaaac8149", "Vietnam")
]

for f in files:
    with open(f, 'r') as fp: c = fp.read()
    
    # 1. Remove table wrap
    c = re.sub(r'<!-- Field Table -->.*?</div>\s*</main>', '</main>', c, flags=re.S)

    # 2. Replace Bundle references with UUIDs in all files (except SC2 which we wipe out)
    def repl_uuid(m):
        return f"<code>urn:uuid:{uuid.uuid4()}</code>"
    c = re.sub(r'<code>Bundle/.*?</code>', repl_uuid, c)

    # 3. Handle Showcase 2 explicitly (ASEAN)
    if 'showcase-2' in f:
        # Generate the 10 entries string
        entries_str = ""
        for i, (uid, country) in enumerate(asean_uuids):
            num = i + 1
            entries_str += f'''
      <!-- {num} -->
      <div class="entry">
        <div class="entry-top">
          <div class="entry-num">{num}</div>
          <div class="entry-title">
            <div class="name">ActiveIngredient X 500mg Tablets ({country})</div>
            <div class="inn">INN: Generic substance · MAH: Pharma {country} Ltd.</div>
          </div>
          <div class="entry-badges">
            <span class="chip current"><span class="dot" style="background:#4ade80;width:5px;height:5px"></span>current</span>
          </div>
        </div>
        <div class="entry-body">
          <div class="ef"><label>Reference</label><div class="v"><code>urn:uuid:{uid}</code></div></div>
          <div class="ef"><label>Date Added</label><div class="v" style="color:#fff;font-weight:600;">2026-03-27</div></div>
          <div class="ef"><label>Flag</label><div class="v"><span class="chip mode" style="font-size:10px">National ({country})</span></div></div>
        </div>
      </div>'''
        
        # We need to replace the <div class="entries"> contents entirely
        c = re.sub(r'<div class="entries">.*?</main>', f'<div class="entries">\n{entries_str}\n    </div>\n\n  </main>', c, flags=re.S)
        
        # update the generic showcase 2 stats counts
        c = c.replace('<div class="val c-accent">6</div><div class="lbl">Total ePIs</div>', '<div class="val c-accent">10</div><div class="lbl">Total ePIs</div>')
        c = c.replace('<div class="val c-green">5</div><div class="lbl">Active</div>', '<div class="val c-green">10</div><div class="lbl">Active</div>')
        c = c.replace('<div class="val c-rose">1</div><div class="lbl">Deleted</div>', '<div class="val c-rose">0</div><div class="lbl">Deleted</div>')

    with open(f, 'w') as fp: fp.write(c)

print("HTML Updates completed.")
