def generate(width):
    yield(f"""module complete_{width} (""")
    yield(",".join([f"inout io_{j}" for j in range(0,width)]))
    yield(");")
    for j in range(0, width):
        for i in range(j, width):
            yield(f"assign io_{j} = input_{i};")
    yield("endmodule")

if __name__ == "__main__":
    import sys
    width = int(sys.argv[1])
    for line in generate(width):
        print(line)
