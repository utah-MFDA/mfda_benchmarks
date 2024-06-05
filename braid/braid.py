def generate(gate, prefix, width, depth):
    print(f"""module fanout2_braid_{width}_{depth} (""")
    print(",".join([f"output output_{i}" for i in range(0,width)] + [f"input input_{j}" for j in range(0,width)]))
    print(");")
    for j in range(0, depth):
        for i in range(0, width):
            left = f"output_{i+1}_{j}"
            right = f"output_{i+1}_{(j+1)%width}"
            output = f"output_{i}_{j}"
            print(f"wire {left}, {right}, {output};")
            print(f"{gate} gate_{output}(.a({left}), .b({right}), .y({output}));")

    for i in range(0, width):
        print(f"assign output_{i} = output_{i}_0;")
        print(f"wire output_{i}_{depth};")
        print(f"assign output_{i}_{depth} = input_{i};")
    print("endmodule")

if __name__ == "__main__":
    import sys
    gate = "mixer"
    prefix = "mix"

    width, depth = [int(i) for i in sys.argv[1:]]
    generate(gate, prefix, width, depth)
