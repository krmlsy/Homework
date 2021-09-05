
def jsonData(filename, jsonPath):
    import json
    with open(filename) as json_file:
        data = json.load(json_file)
        list = jsonPath.split(sep=".")
        for i in list:
            data=data[i]
    return data
