def generate(length):
    yield(f"""module chain_{length} (""")
    yield(f"""inout k0, k{length}""")
    yield(");")

    wires = ",".join([f"k{i}" for i in range(1,length)])
    yield("wire {wires};")
    for j in range(0, length):
        yield(f"chamber ch{j} (.in(k{j}), .out(k{j+1})")
    yield("endmodule")

if __name__ == "__main__":
    import sys
    length = int(sys.argv[1])
    for line in generate(length):
        print(line)
