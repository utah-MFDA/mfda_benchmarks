import sys
width, depth = [int(i) for i in sys.argv[1:]]

def tree(output, depth):
    left = f"{output}__{depth}_l"
    right = f"{output}__{depth}_r"
    print(f"mixer mix_{output} (.a({left}), .b({right}), .y({output}));")
    print(f"wire {left}, {right};")
    if depth == 0:
        return [left, right]
    else:
        return tree(left, depth - 1) + tree(right, depth - 1)

print(f"""module binary_tree_{width}_{depth} (""")
print(",".join([f"output out_{i}" for i in range(0,width)] + [f"input input_{j}" for j in range(0,width*2**depth)]))
print(");")

inpts = [t for i in range(0, width) for t in tree(f"input_{i}", depth-1)]
assert(len(inpts) == width*2**depth)
for i, inpt in enumerate(inpts):
    print(f"assign input_{i} = {inpt};")
print("endmodule")
