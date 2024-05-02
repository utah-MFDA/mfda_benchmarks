from pymint.mintdevice import MINTDevice
import sys

dev = MINTDevice.from_mint_file(sys.argv[1]).device

print(f"module {dev.name} (")
print("inout", ", ".join([component.name for component in dev.components if component.entity == "PORT"]))
print(");")

for connection in dev.connections:
    print(f"wire {connection.name};")

for component in dev.components:
    if component.entity == "PORT":
        continue
    connections = dev.get_connections_for_component(component)
    ports = [f".port{c.source.port or 0}({c.name})" for c in connections if c.source.component == component.ID] + \
        [f".port{s.port or 0}({c.name})" for c in connections for s in c.sinks if s.component == component.ID]
    ports = ",".join(ports)
    print(f"{component.entity} {component.name}({ports});")
print("endmodule")
