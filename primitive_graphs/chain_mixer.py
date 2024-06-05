def generate(length):
    yield(f"""module chain_mixer_{length} (""")
    yield(",".join([f"output j{length}", "input j0"] + [f"input k{length}" for j in range(0,length)]))
    yield(");")

    yield(f"mixer m0(.a(in), .b(k0), .y(j1));")

    for d in range(1,length):
        yield(f"wire j{d};")

    for d in range(0,length):
        yield(f"mixer m{d}(.a(j{d}), .b(k{d}), .y(j{d+1}));")
    yield("endmodule")

if __name__ == "__main__":
    import sys
    length = int(sys.argv[1])
    for line in generate(length):
        print(line)
