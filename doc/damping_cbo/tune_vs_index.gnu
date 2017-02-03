!rm tune_vs_index.ps
set term postscript color enhanced
set output 'tune_vs_index.ps'
set xlabel 'V/(m^2-eV)'
set ylabel 'Tune'
f(x) = a+b*x
set grid
set size 1.,1.
set origin 0.,0.
a=1.00241
b=-11.6631 #=dQh/dIndex
set label at 0.01,0.95  'dQ_h = -11.7 V/(m^2-eV)'
Egradperindex = 2*20177.8/0.141/0.045**2/3.094e9
plot "-" u ($1*Egradperindex):2 w lp t 'Qx' lc 1 lw 2,"-" u ($1*Egradperindex):3 w l lc 3 lw 2 t 'Qy', f(x)
0.101 0.94843 0.31896
0.121 0.93797 0.34931
0.141 0.92742 0.37729
0.161 0.91677 0.40339
0.181 0.90597 0.42808
0.201 0.89517 0.45124
0.251 0.86758 0.50500
0.301 0.83924 0.55386
0.401 0.77999 0.64129
e
refresh
fit f(x) "-" u 1:2 via a,b
0.101 0.94843 0.31896
0.121 0.93797 0.34931
0.141 0.92742 0.37729
0.161 0.91677 0.40339
0.181 0.90597 0.42808
0.201 0.89517 0.45124
0.251 0.86758 0.50500
0.301 0.83924 0.55386
0.401 0.77999 0.64129
e
