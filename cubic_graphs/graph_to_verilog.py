import sys
name = sys.argv[1]
edges = []
vertices = 0

print(f"module {name}();")
for i, line in enumerate(sys.stdin.readlines()):
    if line == "\n":
        break
    xs = line.strip().split(" ")
    vertices = len(xs)
    e = [j for j, x in enumerate(xs) if x == "1"]
    x,y,z = [(min(i,j),  max(i,j)) for j in e]
    print(f"\tmixer m_{i}(.a(e_{x[0]}_{x[1]}), .b(e_{y[0]}_{y[1]}), .y(e_{z[0]}_{z[1]}));")
    for j in e:
        if i < j:
            edges.append((i,j))
wire = ",\n\t".join([f"e_{i}_{j}" for i, j in edges])
print(f"wire {wire};")
print("endmodule")
