format compact
a = [1, 2, 3]
b = [2, 4, 1]
dot(a,b)
cross(a,b)
h = [24, 10, 11
    15, 7, 9
    21, 12, 7]
means = mean(h)
stds = std(h)
errorbar(means,stds,'b*-','MarkerSize', 10, 'LineWidth',2)
