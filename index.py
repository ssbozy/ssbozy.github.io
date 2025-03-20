import frontmatter
import glob
from pathlib import Path
from datetime import datetime

postdata = []

for each in glob.glob("posts/*.md"):
    post = frontmatter.load(each)
    postdata.append((post['date'], post['title'], f'{Path(each).stem}.html'))

postdata.sort(key=lambda a: a[0], reverse=True)


with open("index.md","a") as f:
    
    for each in postdata:
        f.write(f"- [{each[1]}]({each[2]}) - {each[0].strftime('%Y-%m-%d')}\n")
