import re
import os

files = [
    'input/images/examples/epi-list-showcase-1.html',
    'input/images/examples/epi-list-showcase-2.html',
    'input/images/examples/epi-list-showcase-3.html'
]

for f in files:
    with open(f, 'r') as fp:
        c = fp.read()
    
    # Fast remove any stray language blocks we accidentally generated
    c = re.sub(r'<div class="ef"><label>Language</label>.*?</div></div>', '', c, flags=re.S)

    # Let's iterate block by block
    # We will split by <div class="entry"> and trace
    parts = c.split('<div class="entry">')
    
    # the first part is before any entry
    new_c = parts[0]
    
    for i in range(1, len(parts)):
        part = parts[i]
        
        lang_str = "en (English)"
        
        # Look backwards in the previous part to find the latest HTML comment
        # We can find the last <!-- ... -->
        comments = re.findall(r'<!-- (.*?) -->', new_c)
        if comments:
            last_cmd = comments[-1]
            if 'FR ' in last_cmd:
                lang_str = "fr (French)"
            elif 'DE ' in last_cmd:
                lang_str = "de (German)"
            elif 'ES ' in last_cmd:
                lang_str = "es (Spanish)"
                
        # By default for SC2 / SC3, it's English.
        if 'showcase-2' in f or 'showcase-3' in f:
            lang_str = "en (English)"
            
        # find the Date Added block and insert the Language block under it
        date_block = '<div class="ef"><label>Date Added</label><div class="v" style="color:#fff;font-weight:600;">2026-03-27</div></div>'
        lang_block = f'<div class="ef"><label>Language</label><div class="v" style="color:#fff;font-weight:600;">{lang_str}</div></div>'
        
        part = part.replace(date_block, f'{date_block}\n          {lang_block}')
        
        new_c += '<div class="entry">' + part

    with open(f, 'w') as fp:
        fp.write(new_c)

print("Language blocks injected successfully.")
