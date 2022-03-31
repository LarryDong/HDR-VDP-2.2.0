function res = hdrvdp_test_ldr( test, reference, options )

col_channels = size( test, 3 );

if( col_channels == 1 )
    color_encoding = 'luma-display';
elseif( col_channels == 3 )
    color_encoding = 'sRGB-display';
end

res = hdrvdp( test, reference, color_encoding, [], options );

end