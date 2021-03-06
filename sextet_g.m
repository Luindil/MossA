function output = sixtet_g( cs, fwhm, intensity, qs,a12, bhf,a13, x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%define central shifts of individual peaks

cs1=cs-bhf*0.1613+qs/2;
cs2=cs-bhf*0.0934-qs/2;
cs3=cs-bhf*0.0255-qs/2;
cs4=cs+bhf*0.0255-qs/2;
cs5=cs+bhf*0.0934-qs/2;
cs6=cs+bhf*0.1613+qs/2;


a21=a12^-1;
a31=a13^-1;
max1=intensity*(3/(6+6*(a21+a31)));
max6=max1;
max2=max1*a21;
max5=max2;
max3=max1*a31;
max4=max3;

output=gauss_curve(cs1,fwhm,max1,x)+gauss_curve(cs2,fwhm,max2,x)...
    +gauss_curve(cs3,fwhm,max3,x)+gauss_curve(cs4,fwhm,max4,x)...
    +gauss_curve(cs5,fwhm,max5,x)+gauss_curve(cs6,fwhm,max6,x);
end

