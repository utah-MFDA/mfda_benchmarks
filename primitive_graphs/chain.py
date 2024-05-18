import sys
width, = [int(i) for i in sys.argv[1:]]
print(f"""module chain_{width}} (""")
print(f"""inout k0, k{width}""")
print(");")

wires = ",".join([f"k{i}" for i in range(1,width)])
print("wire {wires};")
for j in range(0, width):
    print(f"chamber ch{j} (.in(k{j}), .out(k{j+1})")
print("endmodule")
