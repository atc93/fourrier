#set term x11
set terminal pdf enhanced fontscale 0.75 size 6.0in, 3.5in
set output 'FastRotation.pdf'
f(x,n) = exp(-(x/n/Trev -1)**2/2/d0**2)/sqrt(2*pi)/d0/n/Trev
g(x,n) = exp(-(x/n/Trev -1)**2/2/d0**2*(1-sigt**2/((n*Trev*d0)**2+sigt**2)))/sqrt(2*pi)/sqrt((n*d0*Trev)**2 + sigt**2)
Trev=149.e-9*1.e6
sigt=20.e-9*1.e6
#sigt=0.
d0=0.0012
set xrange [0:20]
set samples 50000
set ylabel 'Intensity'
set xlabel 'Time [{/Symbol m}s]'
unset label
set label 'FastRotation.gnu' at graph 1.02,0.02 rotate left font 'Verdana,6'
delta0 = sprintf("%.4f",d0)
sigmat = sprintf("%3.1f",sigt*1.e3)
set label  '{/Symbol D}_0 = '.delta0 at graph 0.8,0.95
set label '{/Symbol s}_t = '.sigmat.' ns' at graph 0.8,0.9
plot '+' using 1:(sum [n=1:1000] g($1,n)) w l not 
