# Convert from the Summary.md file to yaml, for writing the course config file
# requires pyyaml: pip install pyyaml

import yaml
import re

UNIT = re.compile(r'^- \[(?P<name>[^\]]+)\]\((?P<path>[^\)]+)\)')
LESSON = re.compile(r'^\s+- \[(?P<name>[^\]]+)\]\((?P<path>[^\)]+)\)')

units = []
unit = None
with open("src/SUMMARY.md") as file:
    summary = file.readlines()
    for line in summary:
        u = UNIT.match(line)
        if u:
            if unit:
                units.append(unit)
            unit = {}
            unit['name'] = u.group('name')
            unit['activities'] = []
            unit['activities'].append({ 
                     "name": "Introduction",
                     "path": 'src/' + u.group('path'),
                })
            continue
        l = LESSON.match(line)
        if l and unit:
            unit['activities'].append({
                "name": l.group('name'),
                "path": 'src/' + l.group('path'),
            })
    units.append(unit) 

# pyyaml needs lots of help to print yaml the normal way
class MyDumper(yaml.Dumper):
    def increase_indent(self, flow=False, indentless=False):
        return super(MyDumper, self).increase_indent(flow, False)

print(yaml.dump({ "name": "Try Kibo: Web Foundations", "units": units }, sort_keys=False, Dumper=MyDumper))
