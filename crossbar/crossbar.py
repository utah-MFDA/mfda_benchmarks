import sys
width, height = [int(i) for i in sys.argv[1:]]

print(f"""module crossbar_{width}_{height} (""")
print("inout", ",".join([f"x_{i}" for i in range(0,width)]), end=",\n")
print("inout", ",".join([f"y_{j}" for j in range(0,height)]), end=",\n")
print("input", ",".join([f"c_{i}_{j}" for i in range(0,width) for j in range(0,height)]))
print(");")



for x in range(0,width):
    for y in range(0,height):
        print(f"valve v_{x}_{y} (.fluid_in(x_{x}), .fluid_out(y_{y}), .air_in(c_{x}_{y}));")

print("endmodule")
