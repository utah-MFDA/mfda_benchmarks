import sys
width, depth = [int(i) for i in sys.argv[1:]]

print(f"""module gradient_generator_{width}_{depth} (""")
print("inout")
print(",".join([f"k_{width}_{i}" for i in range(0,width)] + [f"k_{depth}_{j}" for j in range(0,depth)]))
print(");")

for i in range(0,width):
    print(f"serpentine s_{width}_{i} (.in(k_{width}_{i}), .out(k_{width}));")

for d in range(width+1,depth):
    # wires = ",".join(["k_{d}_{j}" for j in range(0,d)])
    # print(f"wire {wires};")
    for i in range(0,d):
        print(f"serpentine s_{d}_{i} (.in(k_{d-1}), .out(k_{d}));")

for i in range(0,depth):
    print(f"serpentine s_{depth}_{i} (.in(k_{depth-1}), .out(k_{depth}_{i}));")
print("endmodule")
