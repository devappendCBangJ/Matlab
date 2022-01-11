function z = Change0_15(a, b)
z=ones(1, 10)
for k = 1:2
z([a(k):b(k)])= 0
end