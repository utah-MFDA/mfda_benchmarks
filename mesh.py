import sys
width, depth = [int(i) for i in sys.argv[1:]]
gate = "diffmix_25px_0"
prefix = "mix"
print(f"""module binary_tree_{width}_{depth} (""")
print(",".join([f"output out_{i}" for i in range(0,width)] + [f"input_{j}" for j in range(0,width)]))
print(");")
for j in range(0, depth):
    for i in range(0, width):
        left = f"output_{i+1}_{j}"
        right = f"output_{i+1}_{(j+1)%width}"
        output = f"output_{i}_{j}"
        print(f"{gate} gate_{output}(.a_fluid({left}), .b_fluid({right}), .out_fluid({output}));")

for i in range(0, width):
    print(f"assign output_{i} = output_{i}_0;")
    print(f"assign input_{i} = output_{i}_{depth-1};")
print("endmodule")
