from pymint.mintdevice import MINTDevice
import sys

dev = MINTDevice.from_mint_file(sys.argv[1]).device

print(f"module {dev.name} (")
print("inout", ", ".join([component.name for component in dev.components if component.entity == "PORT"]))
print(");")

valve_nets = [dev.get_valve_connection(v).name for v in dev.valves]

for connection in dev.connections:
    if connection.name in valve_nets:
        print(f"wire {connection.name}_out")
    print(f"wire {connection.name};")

for component in dev.components:
    connections = dev.get_connections_for_component(component)
    if component.entity == "PORT":
        continue

    ports = [f".port{c.source.port or 0}({c.name})" for c in connections if c.source.component == component.ID]
    ports += [f".port{s.port or 0}({c.name})" for c in connections for s in c.sinks if s.component == component.ID and c.name not in valve_nets]
    ports += [f".port{s.port or 0}({c.name}_out)" for c in connections for s in c.sinks if s.component == component.ID and c.name in valve_nets]

    if component.entity == "VALVE":
        ports += [".out(" + dev.get_valve_connection(component).name + "_out)",
                  ".in(" + dev.get_valve_connection(component).name + ")"]
    ports = ",".join(ports)
    print(f"{component.entity} {component.name}({ports});")
print("endmodule")
