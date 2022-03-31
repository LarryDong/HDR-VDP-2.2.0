function psf=psf_cie_general( R, age, p)
% psf=psf_cie99(angledeg, age, p)
%
% angledeg - angle in visual degrees
% age - age in years
% p - iris pigmentation
%  p=0   - Non caucasian
%  p=0.5 - Brown eye
%  p=1   - Green eye
%  p=1.2 - Light blue
%
% This model does not account for a pupil size (assumed that it is readly
% known).
%
% This is a glare spread function from:
% Vos, J.J. and van den Berg, T.J.T.P [CIE Research note 135/1, “Disability
% Glare”] ISBN 3 900 734 97 6 (1999).

if nargin<2
    age=0;
end

if nargin<3
    %p=0     % Non caucasian
    %p=0.5   % Brown eye
    p=1;     % Green eye
    %p=1.2   % Light blue
end

psf = 10./R.^3 + (5./R.^2 + 0.1*p./R) * (1 + (age/62.5)^4) + 2.5 * 10^-3 * p;

