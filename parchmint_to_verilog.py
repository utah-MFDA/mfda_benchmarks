import json
import sys


p = json.load(sys.stdin)
name = p["name"]
print(f"module {name}(")
inputs = [f"input " + c["name"] for c in p["components"] if c["entity"] == "Input"]
outputs = [f"output " + c["name"] for c in p["components"] if c["entity"] == "Output"]
print(",\n".join(inputs + outputs))
print(");")

components = {c["id"]:{"entity":c["entity"], "name": c["name"], "ports": {t["label"]:None for t  in c["ports"]}}
              for c in p["components"]}
for net in p["connections"]:
    wire = net["name"]
    print(f"wire {wire};")
    source = net["source"]["component"]
    source_port = net["source"]["port"]
    components[source]["ports"][source_port] = wire
    for sink in net["sinks"]:
        sink_target = sink["component"]
        port = sink["port"]
        components[sink_target]["ports"][port] = wire
for component in components.values():
    entity = component["entity"]
    name = component["name"]
    ports = component["ports"]
    if entity == "Input":
        for k,v in ports.items():
            print(f"assign {v} = {name};")
    elif entity == "Output":
        for k,v in ports.items():
            print(f"assign {name} = {v};")
    else:
        connect = ",".join([f".{k}({v})" for k,v in ports.items()])
        print(f"{entity} {name}({connect});")
print("endmodule")
