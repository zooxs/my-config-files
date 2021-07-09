import re

with open('data1.csv') as f:
    for line in f:
        result = re.findall(r'^[a-z]. ', line)
        print(result)
