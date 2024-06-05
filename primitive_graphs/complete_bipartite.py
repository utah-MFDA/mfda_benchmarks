def generate(width, depth):
    yield(f"""module complete_bipartite_{width}_{depth} (""")
    yield(",".join([f"inout input_{i}" for i in range(0,width)] + [f"inout output_{j}" for j in range(0,depth)]))
    yield(");")

    for i in range(0, width):
       for j in range(0, depth):
            yield(f"assign output_{j} = input_{i};")
    yield("endmodule")

if __name__ == "__main__":
    import sys
    width, depth = [int(i) for i in sys.argv[1:]]
    for line in generate(width,depth):
        print(line)
