clear;
clear global;
t = 1;    

fit_global = [];

fitseq{t}.name = 'csf testing';
fitseq{t}.test_set = { 'csfla' };
fitseq{t}.subset = { 'quick'};
fitseq{t}.test_subset = { };
fitseq{t}.fit_params = { 'peak_sensitivity', 2.4062 };
fitseq{t}.extra_options = { 'do_cie_glare', true, 'do_aesl', true, 'do_slum', true, 'do_spatial_pooling', true };
t = t+1;

calibrate_metric( @hdrvdp_test_wrapper, fitseq, fit_global );
