# HDR-VDP-2.2.0

This is a copied code from hdrvdp wiki.  
Please check this [homepage](http://hdrvdp.sourceforge.net/wiki/) for more details.

Please cite paper from Rafal Mantiuk, if you use this code. (See the homepage for details)

## Usage
1. Download this MATLAB code
2. Add the folder to MATLAB Environment Path
3. See `Contents.m` for usage. A typo in that file is, letter 'O' is used but should be number '0'.

```
ppd = hdrvdp_pix_per_deg( 21, [size(O,2) size(O,1)], 1 ); # error. Not 'O' but '0'
ppd = hdrvdp_pix_per_deg( 21, [size(0,2) size(0,1)], 1 );
```

