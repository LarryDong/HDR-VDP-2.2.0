% Sanity check

I1 = blur_gaussian(10.^(rand( 1024 )*3), 2);
I2 = blur_gaussian(10.^(rand( 1024 )*3), 2);


disp( 'Two identical images' );
res = hdrvdp( I1, I1, 'luminance', 30 )


disp( 'Two random images' );
res = hdrvdp( I1, I2, 'luminance', 30 )

disp( 'Color image' );
res = hdrvdp( rand(512,512,3), rand(512,512,3), 'sRGB-display', 30 )