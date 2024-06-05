import sys
depth, = [int(i) for i in sys.argv[1:]]

print(f"""module multiplexer_{depth} (""")
print("inout", end=" ")
print(",".join([f"k_0_0"] + [f"k_{depth}_{j}" for j in range(0,2**depth)] + [f"\ninput c_{j}_0, c_{j}_1" for j in range(0,depth+1)]))
print(");")

for d in range(1,depth):
    wires = ",".join([f"k_{d}_{j}" for j in range(0,2**d)])
    print(f"wire {wires};")
for d in range(1,depth+1):

    for i in range(0,2**d):
        print(f"valve v_{d}_{i} (.fluid_in(k_{d}_{i}), .fluid_out(k_{d-1}_{i//2}), .air_in(c_{d}_{i%2}));")


        # print(f"valve v_{d}_{i} (.fluid_in(k_{d+1}_{i}), ), .fluid_out(k_{d}_{i//2}), .air_in(c_{d}_{i%2}));")
print("endmodule")
