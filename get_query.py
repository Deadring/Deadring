import json
import re
from pathlib import Path

PATH = Path(__file__).parent

def get_query(data=None):
    result = ''

    for tabel in data.keys():
        into = f"INSERT INTO {tabel} VALUES('"
        result += into + f"'),\n{' '*(len(into)-2)}('".join("', '".join(map(lambda x: re.sub(r'\.0+', '', str(x)), list(data[tabel][row].values())[1:] if any(x.startswith('id') for x in data[tabel][row]) else data[tabel][row].values())) for row in data[tabel]) + "')\n\n"

    return result

if __name__ == '__main__':
    with open(PATH / 'data.json') as json_file:
        data = json.load(json_file)
        
    with open(PATH / 'query_insert.txt', 'w+') as file:
        file.write(get_query(data))