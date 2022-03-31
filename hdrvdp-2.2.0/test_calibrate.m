clear;
clear global;
t = 1;    

fit_global = [];

if( 0 )
fitseq{t}.name = 'complex masking';
fitseq{t}.test_set = 'complexfest';
fitseq{t}.fit_params = { 'peak_sensitivity', 3 }; %3.09
fitseq{t}.extra_options = { 'do_spatial_pooling', false };
t = t + 1;
end

if( 0 )
fitseq{t}.name = 'si';
fitseq{t}.test_set = { 'rovamo' };
%fitseq{t}.subset = { 'f800' };
fitseq{t}.fit_params = { 'peak_sensitivity', 3.37822 }; %3.09
fitseq{t}.extra_options = { 'do_spatial_pooling', false, 'do_si_gauss', true, 'si_size', 1.48095 };
t = t + 1;
end

if( 0 )
fitseq{t}.name = 'si';
fitseq{t}.test_set = { 'csfla', 'rovamo' };
fitseq{t}.subset = { 'si', [] };
fitseq{t}.fit_params = { '*peak_sensitivity', [3 3], 'si_size', 1.24315 }; %3.09
fitseq{t}.extra_options = { 'do_spatial_pooling', false, 'do_si_gauss', true };
t = t + 1;
end

fitseq{t}.name = 'si';
fitseq{t}.test_set = { 'csfla' };
fitseq{t}.subset = { };
fitseq{t}.fit_params = { 'peak_sensitivity', 3 }; %3.09
fitseq{t}.extra_options = { 'do_spatial_pooling', false, 'do_si_gauss', true };
t = t + 1;

if( 0 )
fitseq{t}.name = 'si';
fitseq{t}.test_set = { 'disks' };
%fitseq{t}.subset = { 'si' };
fitseq{t}.fit_params = {  }; %3.09
fitseq{t}.extra_options = { 'peak_sensitivity', 3.2, 'do_spatial_pooling', false, 'do_si_gauss', true, 'si_size', 1.24315 };
t = t + 1;
end

calibrate_metric( @hdrvdp_test_wrapper, fitseq, fit_global );
