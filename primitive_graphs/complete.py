import sys
width, = [int(i) for i in sys.argv[1:]]
gate = "mixer"
prefix = "mix"
print(f"""module complete_{width} (""")
print(",".join([f"inout io_{j}" for j in range(0,width)]))
print(");")
for j in range(0, width):
    for i in range(j, width):
        print(f"assign io_{j} = input_{i};")
print("endmodule")
