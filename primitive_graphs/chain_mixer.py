import sys
depth, = [int(i) for i in sys.argv[1:]]

print(f"""module chain_mixer_{width} (""")
print(",".join([f"output j{depth}", "input j0"] + [f"input k_{depth}" for j in range(0,depth)]))
print(");")

print(f"mixer m0(.a(in), .b(k0), .y(j1));")

for d in range(1,depth):
    print(f"wire j{d};")

for d in range(0,depth):
    print(f"mixer m{d}(.a(j{i}), .b(k{i}), .y(j{d+1}));")
print("endmodule")
