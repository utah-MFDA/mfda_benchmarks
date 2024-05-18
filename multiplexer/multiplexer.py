import sys
depth, = [int(i) for i in sys.argv[1:]]

print(f"""module multiplexer_{depth} (""")
print(",".join([f"output k_0_0"] + [f"input k_{depth-1}_{j}" for j in range(0,2**depth)] + ["c_{j}_0, c_{j}_1" for j in range(0,depth)]
print(");")

for d in range(1,depth):
    wires = ",".join(["k_{d}_{j}" for j in range(0,2**(d-1))])
    print(f"wire {wires};")
    for i in range(0,d):
        print(f"valve v_{d}_{i} (.fluid_in(k_{d+1}), ), .fluid_out({right}), .air_in(c_{d}_{i%2}));")
print("endmodule")
