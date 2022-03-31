% test metric performance

%test = pfs_read_luminance( 'threshold_stimuli/hex_patterns/stimuli/t_12.exr' );
%reference = pfs_read_luminance( 'threshold_stimuli/hex_patterns/stimuli/r_12.exr' );

test = pfs_read_luminance( 'threshold_stimuli/rovamo/stimuli/t_34.exr' );
reference = pfs_read_luminance( 'threshold_stimuli/rovamo/stimuli/r_34.exr' );

tic

options = { 'peak_sensitivity', 3.66234 }; %{ 'no_masking', 'true' };

res = hdrvdp( test, reference, 'luminance', 32, options );

toc

display( sprintf( 'P_det = %g\nQ_MOS = %g', res.P_det, res.Q_MOS) );
