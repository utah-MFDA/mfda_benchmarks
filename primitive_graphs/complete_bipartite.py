import sys
width, depth = [int(i) for i in sys.argv[1:]]
gate = "mixer"
prefix = "mix"
print(f"""module complete_bipartite_{width}_{depth} (""")
print(",".join([f"inout input_{i}" for i in range(0,width)] + [f"inout output_{j}" for j in range(0,depth)]))
print(");")

for i in range(0, width):
   for j in range(0, depth):
        print(f"assign output_{j} = input_{i};")
print("endmodule")
