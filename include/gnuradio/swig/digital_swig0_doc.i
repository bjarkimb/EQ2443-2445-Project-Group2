
/*
 * This file was automatically generated using swig_doc.py.
 *
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") gr::digital::additive_scrambler_bb "Scramble an input stream using an LFSR.

This block scrambles up to 8 bits per byte of the input data stream, starting at the LSB.

The scrambler works by XORing the incoming bit stream by the output of the LFSR. Optionally, after  bits have been processed, the shift register is reset to the  value. This allows processing fixed length vectors of samples.

Alternatively, the LFSR can be reset using a reset tag to scramble variable length vectors. However, it cannot be reset between bytes.

For details on configuring the LFSR, see gr::digital::lfsr.

Constructor Specific Documentation:

Create additive scrambler.

Args:
    mask : Polynomial mask for LFSR
    seed : Initial shift register contents
    len : Shift register length
    count : Number of bytes after which shift register is reset, 0=never
    bits_per_byte : Number of bits per byte
    reset_tag_key : When a tag with this key is detected, the shift register is reset (when this is set, count is ignored!)"











%feature("docstring") gr::digital::additive_scrambler_bb::make "Scramble an input stream using an LFSR.

This block scrambles up to 8 bits per byte of the input data stream, starting at the LSB.

The scrambler works by XORing the incoming bit stream by the output of the LFSR. Optionally, after  bits have been processed, the shift register is reset to the  value. This allows processing fixed length vectors of samples.

Alternatively, the LFSR can be reset using a reset tag to scramble variable length vectors. However, it cannot be reset between bytes.

For details on configuring the LFSR, see gr::digital::lfsr.

Constructor Specific Documentation:

Create additive scrambler.

Args:
    mask : Polynomial mask for LFSR
    seed : Initial shift register contents
    len : Shift register length
    count : Number of bytes after which shift register is reset, 0=never
    bits_per_byte : Number of bits per byte
    reset_tag_key : When a tag with this key is detected, the shift register is reset (when this is set, count is ignored!)"

%feature("docstring") gr::digital::binary_slicer_fb "Slice float binary symbol producing 1 bit output.

Constructor Specific Documentation:

Make binary symbol slicer block."

%feature("docstring") gr::digital::binary_slicer_fb::make "Slice float binary symbol producing 1 bit output.

Constructor Specific Documentation:

Make binary symbol slicer block."

%feature("docstring") gr::digital::burst_shaper_cc "Burst shaper block for applying burst padding and ramping.

This block applies a configurable amount of zero padding before and/or after a burst indicated by tagged stream length tags.

If phasing symbols are used, an alternating pattern of +1/-1 symbols of length ceil(N/2) will be inserted before and after each burst, where N is the length of the taps vector. The ramp- up/ramp-down shape will be applied to these phasing symbols.

If phasing symbols are not used, the taper will be applied directly to the head and tail of each burst.

Length tags will be updated to include the length of any added zero padding or phasing symbols and will be placed at the beginning of the modified tagged stream. Any other tags found at the same offset as a length tag will also be placed at the beginning of the modified tagged stream, since these tags are assumed to be associated with the burst rather than a specific sample. For example, if \"tx_time\" tags are used to control bursts, their offsets should be consistent with their associated burst's length tags. Tags at other offsets will be placed with the samples on which they were found.

Constructor Specific Documentation:

Make a burst shaper block.

Args:
    taps : vector of window taper taps; the first ceil(N/2) items are the up flank and the last ceil(N/2) items are the down flank. If taps.size() is odd, the middle tap will be used as the last item of the up flank and first item of the down flank.
    pre_padding : number of zero samples to insert before the burst.
    post_padding : number of zero samples to append after the burst.
    insert_phasing : if true, insert alternating +1/-1 pattern of length ceil(N/2) before and after the burst and apply ramp up and ramp down taps, respectively, to the inserted patterns instead of the head and tail items of the burst.
    length_tag_name : the name of the tagged stream length tag key."

%feature("docstring") gr::digital::burst_shaper_cc::pre_padding "Returns the amount of zero padding inserted before each burst."

%feature("docstring") gr::digital::burst_shaper_cc::post_padding "Returns the amount of zero padding inserted after each burst."

%feature("docstring") gr::digital::burst_shaper_cc::prefix_length "Returns the total amount of zero padding and phasing symbols inserted before each burst."

%feature("docstring") gr::digital::burst_shaper_cc::suffix_length "Returns the total amount of zero padding and phasing symbols inserted after each burst."

%feature("docstring") gr::digital::burst_shaper_cc::make "Burst shaper block for applying burst padding and ramping.

This block applies a configurable amount of zero padding before and/or after a burst indicated by tagged stream length tags.

If phasing symbols are used, an alternating pattern of +1/-1 symbols of length ceil(N/2) will be inserted before and after each burst, where N is the length of the taps vector. The ramp- up/ramp-down shape will be applied to these phasing symbols.

If phasing symbols are not used, the taper will be applied directly to the head and tail of each burst.

Length tags will be updated to include the length of any added zero padding or phasing symbols and will be placed at the beginning of the modified tagged stream. Any other tags found at the same offset as a length tag will also be placed at the beginning of the modified tagged stream, since these tags are assumed to be associated with the burst rather than a specific sample. For example, if \"tx_time\" tags are used to control bursts, their offsets should be consistent with their associated burst's length tags. Tags at other offsets will be placed with the samples on which they were found.

Constructor Specific Documentation:

Make a burst shaper block.

Args:
    taps : vector of window taper taps; the first ceil(N/2) items are the up flank and the last ceil(N/2) items are the down flank. If taps.size() is odd, the middle tap will be used as the last item of the up flank and first item of the down flank.
    pre_padding : number of zero samples to insert before the burst.
    post_padding : number of zero samples to append after the burst.
    insert_phasing : if true, insert alternating +1/-1 pattern of length ceil(N/2) before and after the burst and apply ramp up and ramp down taps, respectively, to the inserted patterns instead of the head and tail items of the burst.
    length_tag_name : the name of the tagged stream length tag key."

%feature("docstring") gr::digital::burst_shaper_ff "Burst shaper block for applying burst padding and ramping.

This block applies a configurable amount of zero padding before and/or after a burst indicated by tagged stream length tags.

If phasing symbols are used, an alternating pattern of +1/-1 symbols of length ceil(N/2) will be inserted before and after each burst, where N is the length of the taps vector. The ramp- up/ramp-down shape will be applied to these phasing symbols.

If phasing symbols are not used, the taper will be applied directly to the head and tail of each burst.

Length tags will be updated to include the length of any added zero padding or phasing symbols and will be placed at the beginning of the modified tagged stream. Any other tags found at the same offset as a length tag will also be placed at the beginning of the modified tagged stream, since these tags are assumed to be associated with the burst rather than a specific sample. For example, if \"tx_time\" tags are used to control bursts, their offsets should be consistent with their associated burst's length tags. Tags at other offsets will be placed with the samples on which they were found.

Constructor Specific Documentation:

Make a burst shaper block.

Args:
    taps : vector of window taper taps; the first ceil(N/2) items are the up flank and the last ceil(N/2) items are the down flank. If taps.size() is odd, the middle tap will be used as the last item of the up flank and first item of the down flank.
    pre_padding : number of zero samples to insert before the burst.
    post_padding : number of zero samples to append after the burst.
    insert_phasing : if true, insert alternating +1/-1 pattern of length ceil(N/2) before and after the burst and apply ramp up and ramp down taps, respectively, to the inserted patterns instead of the head and tail items of the burst.
    length_tag_name : the name of the tagged stream length tag key."

%feature("docstring") gr::digital::burst_shaper_ff::pre_padding "Returns the amount of zero padding inserted before each burst."

%feature("docstring") gr::digital::burst_shaper_ff::post_padding "Returns the amount of zero padding inserted after each burst."

%feature("docstring") gr::digital::burst_shaper_ff::prefix_length "Returns the total amount of zero padding and phasing symbols inserted before each burst."

%feature("docstring") gr::digital::burst_shaper_ff::suffix_length "Returns the total amount of zero padding and phasing symbols inserted after each burst."

%feature("docstring") gr::digital::burst_shaper_ff::make "Burst shaper block for applying burst padding and ramping.

This block applies a configurable amount of zero padding before and/or after a burst indicated by tagged stream length tags.

If phasing symbols are used, an alternating pattern of +1/-1 symbols of length ceil(N/2) will be inserted before and after each burst, where N is the length of the taps vector. The ramp- up/ramp-down shape will be applied to these phasing symbols.

If phasing symbols are not used, the taper will be applied directly to the head and tail of each burst.

Length tags will be updated to include the length of any added zero padding or phasing symbols and will be placed at the beginning of the modified tagged stream. Any other tags found at the same offset as a length tag will also be placed at the beginning of the modified tagged stream, since these tags are assumed to be associated with the burst rather than a specific sample. For example, if \"tx_time\" tags are used to control bursts, their offsets should be consistent with their associated burst's length tags. Tags at other offsets will be placed with the samples on which they were found.

Constructor Specific Documentation:

Make a burst shaper block.

Args:
    taps : vector of window taper taps; the first ceil(N/2) items are the up flank and the last ceil(N/2) items are the down flank. If taps.size() is odd, the middle tap will be used as the last item of the up flank and first item of the down flank.
    pre_padding : number of zero samples to insert before the burst.
    post_padding : number of zero samples to append after the burst.
    insert_phasing : if true, insert alternating +1/-1 pattern of length ceil(N/2) before and after the burst and apply ramp up and ramp down taps, respectively, to the inserted patterns instead of the head and tail items of the burst.
    length_tag_name : the name of the tagged stream length tag key."

%feature("docstring") gr::digital::chunks_to_symbols_bc "Map a stream of unpacked symbol indexes to stream of float or complex constellation points in D dimensions (D = 1 by default)

The combination of gr::blocks::packed_to_unpacked_XX followed by gr::digital::chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols.

Constructor Specific Documentation:

Make a chunks-to-symbols block.

Args:
    symbol_table : list that maps chunks to symbols.
    D : dimension of table."







%feature("docstring") gr::digital::chunks_to_symbols_bc::make "Map a stream of unpacked symbol indexes to stream of float or complex constellation points in D dimensions (D = 1 by default)

The combination of gr::blocks::packed_to_unpacked_XX followed by gr::digital::chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols.

Constructor Specific Documentation:

Make a chunks-to-symbols block.

Args:
    symbol_table : list that maps chunks to symbols.
    D : dimension of table."

%feature("docstring") gr::digital::chunks_to_symbols_bf "Map a stream of unpacked symbol indexes to stream of float or complex constellation points in D dimensions (D = 1 by default)

The combination of gr::blocks::packed_to_unpacked_XX followed by gr::digital::chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols.

Constructor Specific Documentation:

Make a chunks-to-symbols block.

Args:
    symbol_table : list that maps chunks to symbols.
    D : dimension of table."







%feature("docstring") gr::digital::chunks_to_symbols_bf::make "Map a stream of unpacked symbol indexes to stream of float or complex constellation points in D dimensions (D = 1 by default)

The combination of gr::blocks::packed_to_unpacked_XX followed by gr::digital::chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols.

Constructor Specific Documentation:

Make a chunks-to-symbols block.

Args:
    symbol_table : list that maps chunks to symbols.
    D : dimension of table."

%feature("docstring") gr::digital::chunks_to_symbols_ic "Map a stream of unpacked symbol indexes to stream of float or complex constellation points in D dimensions (D = 1 by default)

The combination of gr::blocks::packed_to_unpacked_XX followed by gr::digital::chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols.

Constructor Specific Documentation:

Make a chunks-to-symbols block.

Args:
    symbol_table : list that maps chunks to symbols.
    D : dimension of table."







%feature("docstring") gr::digital::chunks_to_symbols_ic::make "Map a stream of unpacked symbol indexes to stream of float or complex constellation points in D dimensions (D = 1 by default)

The combination of gr::blocks::packed_to_unpacked_XX followed by gr::digital::chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols.

Constructor Specific Documentation:

Make a chunks-to-symbols block.

Args:
    symbol_table : list that maps chunks to symbols.
    D : dimension of table."

%feature("docstring") gr::digital::chunks_to_symbols_if "Map a stream of unpacked symbol indexes to stream of float or complex constellation points in D dimensions (D = 1 by default)

The combination of gr::blocks::packed_to_unpacked_XX followed by gr::digital::chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols.

Constructor Specific Documentation:

Make a chunks-to-symbols block.

Args:
    symbol_table : list that maps chunks to symbols.
    D : dimension of table."







%feature("docstring") gr::digital::chunks_to_symbols_if::make "Map a stream of unpacked symbol indexes to stream of float or complex constellation points in D dimensions (D = 1 by default)

The combination of gr::blocks::packed_to_unpacked_XX followed by gr::digital::chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols.

Constructor Specific Documentation:

Make a chunks-to-symbols block.

Args:
    symbol_table : list that maps chunks to symbols.
    D : dimension of table."

%feature("docstring") gr::digital::chunks_to_symbols_sc "Map a stream of unpacked symbol indexes to stream of float or complex constellation points in D dimensions (D = 1 by default)

The combination of gr::blocks::packed_to_unpacked_XX followed by gr::digital::chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols.

Constructor Specific Documentation:

Make a chunks-to-symbols block.

Args:
    symbol_table : list that maps chunks to symbols.
    D : dimension of table."







%feature("docstring") gr::digital::chunks_to_symbols_sc::make "Map a stream of unpacked symbol indexes to stream of float or complex constellation points in D dimensions (D = 1 by default)

The combination of gr::blocks::packed_to_unpacked_XX followed by gr::digital::chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols.

Constructor Specific Documentation:

Make a chunks-to-symbols block.

Args:
    symbol_table : list that maps chunks to symbols.
    D : dimension of table."

%feature("docstring") gr::digital::chunks_to_symbols_sf "Map a stream of unpacked symbol indexes to stream of float or complex constellation points in D dimensions (D = 1 by default)

The combination of gr::blocks::packed_to_unpacked_XX followed by gr::digital::chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols.

Constructor Specific Documentation:

Make a chunks-to-symbols block.

Args:
    symbol_table : list that maps chunks to symbols.
    D : dimension of table."







%feature("docstring") gr::digital::chunks_to_symbols_sf::make "Map a stream of unpacked symbol indexes to stream of float or complex constellation points in D dimensions (D = 1 by default)

The combination of gr::blocks::packed_to_unpacked_XX followed by gr::digital::chunks_to_symbols_XY handles the general case of mapping from a stream of bytes or shorts into arbitrary float or complex symbols.

Constructor Specific Documentation:

Make a chunks-to-symbols block.

Args:
    symbol_table : list that maps chunks to symbols.
    D : dimension of table."

%feature("docstring") gr::digital::clock_recovery_mm_cc "Mueller and M?ller (M&M) based clock recovery block with complex input, complex output.

This implements the Mueller and M?ller (M&M) discrete-time error-tracking synchronizer.

The peak to peak input signal amplitude must be symmetrical about zero, as the M&M timing error detector (TED) is a decision directed TED, and this block uses a symbol decision slicer referenced at zero.

The input signal peak amplitude should be controlled to a consistent level (e.g. +/- 1.0) before this block to achieve consistent results for given gain settings; as the TED's output error signal is directly affected by the input amplitude.

The input signal must have peaks in order for the TED to output a correct error signal. If the input signal pulses do not have peaks (e.g. rectangular pulses) the input signal should be conditioned with a matched pulse filter or other appropriate filter to peak the input pulses. For a rectangular base pulse that is N samples wide, the matched filter taps would be [1.0/float(N)]*N, or in other words a moving average over N samples.

This block will output samples at a rate of one sample per recovered symbol, and is thus not outputting at a constant rate.

Output symbols are not a subset of input, but may be interpolated.

The complex version here is based on: Modified Mueller and Muller clock recovery circuit:

G. R. Danesfahani, T.G. Jeans, \"Optimisation of modified Mueller
   and Muller algorithm,\" Electronics Letters, Vol. 31, no. 13, 22 June 1995, pp. 1032 - 1033.

Constructor Specific Documentation:

Make a M&M clock recovery block.

Args:
    omega : Initial estimate of samples per symbol
    gain_omega : Gain setting for omega update loop
    mu : Initial estimate of phase of sample
    gain_mu : Gain setting for mu update loop
    omega_relative_limit : limit on omega"



















%feature("docstring") gr::digital::clock_recovery_mm_cc::make "Mueller and M?ller (M&M) based clock recovery block with complex input, complex output.

This implements the Mueller and M?ller (M&M) discrete-time error-tracking synchronizer.

The peak to peak input signal amplitude must be symmetrical about zero, as the M&M timing error detector (TED) is a decision directed TED, and this block uses a symbol decision slicer referenced at zero.

The input signal peak amplitude should be controlled to a consistent level (e.g. +/- 1.0) before this block to achieve consistent results for given gain settings; as the TED's output error signal is directly affected by the input amplitude.

The input signal must have peaks in order for the TED to output a correct error signal. If the input signal pulses do not have peaks (e.g. rectangular pulses) the input signal should be conditioned with a matched pulse filter or other appropriate filter to peak the input pulses. For a rectangular base pulse that is N samples wide, the matched filter taps would be [1.0/float(N)]*N, or in other words a moving average over N samples.

This block will output samples at a rate of one sample per recovered symbol, and is thus not outputting at a constant rate.

Output symbols are not a subset of input, but may be interpolated.

The complex version here is based on: Modified Mueller and Muller clock recovery circuit:

G. R. Danesfahani, T.G. Jeans, \"Optimisation of modified Mueller
   and Muller algorithm,\" Electronics Letters, Vol. 31, no. 13, 22 June 1995, pp. 1032 - 1033.

Constructor Specific Documentation:

Make a M&M clock recovery block.

Args:
    omega : Initial estimate of samples per symbol
    gain_omega : Gain setting for omega update loop
    mu : Initial estimate of phase of sample
    gain_mu : Gain setting for mu update loop
    omega_relative_limit : limit on omega"

%feature("docstring") gr::digital::clock_recovery_mm_ff "Mueller and M?ller (M&M) based clock recovery block with float input, float output.

This implements the Mueller and M?ller (M&M) discrete-time error-tracking synchronizer.

The peak to peak input signal amplitude must be symmetrical about zero, as the M&M timing error detector (TED) is a decision directed TED, and this block uses a symbol decision slicer referenced at zero.

The input signal peak amplitude should be controlled to a consistent level (e.g. +/- 1.0) before this block to achieve consistent results for given gain settings; as the TED's output error signal is directly affected by the input amplitude.

The input signal must have peaks in order for the TED to output a correct error signal. If the input signal pulses do not have peaks (e.g. rectangular pulses) the input signal should be conditioned with a matched pulse filter or other appropriate filter to peak the input pulses. For a rectangular base pulse that is N samples wide, the matched filter taps would be [1.0/float(N)]*N, or in other words a moving average over N samples.

This block will output samples at a rate of one sample per recovered symbol, and is thus not outputting at a constant rate.

Output symbols are not a subset of input, but may be interpolated.

See \"Digital Communication Receivers: Synchronization, Channel
Estimation and Signal Processing\" by Heinrich Meyr, Marc Moeneclaey, & Stefan Fechtel. ISBN 0-471-50275-8.

Constructor Specific Documentation:

Make a M&M clock recovery block.

Args:
    omega : Initial estimate of samples per symbol
    gain_omega : Gain setting for omega update loop
    mu : Initial estimate of phase of sample
    gain_mu : Gain setting for mu update loop
    omega_relative_limit : maximum relative deviation from omega"



















%feature("docstring") gr::digital::clock_recovery_mm_ff::make "Mueller and M?ller (M&M) based clock recovery block with float input, float output.

This implements the Mueller and M?ller (M&M) discrete-time error-tracking synchronizer.

The peak to peak input signal amplitude must be symmetrical about zero, as the M&M timing error detector (TED) is a decision directed TED, and this block uses a symbol decision slicer referenced at zero.

The input signal peak amplitude should be controlled to a consistent level (e.g. +/- 1.0) before this block to achieve consistent results for given gain settings; as the TED's output error signal is directly affected by the input amplitude.

The input signal must have peaks in order for the TED to output a correct error signal. If the input signal pulses do not have peaks (e.g. rectangular pulses) the input signal should be conditioned with a matched pulse filter or other appropriate filter to peak the input pulses. For a rectangular base pulse that is N samples wide, the matched filter taps would be [1.0/float(N)]*N, or in other words a moving average over N samples.

This block will output samples at a rate of one sample per recovered symbol, and is thus not outputting at a constant rate.

Output symbols are not a subset of input, but may be interpolated.

See \"Digital Communication Receivers: Synchronization, Channel
Estimation and Signal Processing\" by Heinrich Meyr, Marc Moeneclaey, & Stefan Fechtel. ISBN 0-471-50275-8.

Constructor Specific Documentation:

Make a M&M clock recovery block.

Args:
    omega : Initial estimate of samples per symbol
    gain_omega : Gain setting for omega update loop
    mu : Initial estimate of phase of sample
    gain_mu : Gain setting for mu update loop
    omega_relative_limit : maximum relative deviation from omega"

%feature("docstring") gr::digital::cma_equalizer_cc "Implements constant modulus adaptive filter on complex stream.

The error value and tap update equations (for p=2) can be found in:

D. Godard, \"Self-Recovering Equalization and Carrier Tracking
in Two-Dimensional Data Communication Systems,\" IEEE Transactions on Communications, Vol. 28, No. 11, pp. 1867 - 1875, 1980.

Constructor Specific Documentation:

Make a CMA Equalizer block

Args:
    num_taps : Numer of taps in the equalizer (channel size)
    modulus : Modulus of the modulated signals
    mu : Gain of the update loop
    sps : Number of samples per symbol of the input signal"

















%feature("docstring") gr::digital::cma_equalizer_cc::make "Implements constant modulus adaptive filter on complex stream.

The error value and tap update equations (for p=2) can be found in:

D. Godard, \"Self-Recovering Equalization and Carrier Tracking
in Two-Dimensional Data Communication Systems,\" IEEE Transactions on Communications, Vol. 28, No. 11, pp. 1867 - 1875, 1980.

Constructor Specific Documentation:

Make a CMA Equalizer block

Args:
    num_taps : Numer of taps in the equalizer (channel size)
    modulus : Modulus of the modulated signals
    mu : Gain of the update loop
    sps : Number of samples per symbol of the input signal"

%feature("docstring") gr::digital::constellation_16qam "Digital constellation for 16qam.

Constructor Specific Documentation:

"



%feature("docstring") gr::digital::constellation_16qam::decision_maker "Returns the constellation point that matches best."



%feature("docstring") gr::digital::constellation_16qam::make "Digital constellation for 16qam.

Constructor Specific Documentation:

"

%feature("docstring") gr::digital::constellation_8psk "Digital constellation for 8PSK.

Constructor Specific Documentation:

"



%feature("docstring") gr::digital::constellation_8psk::decision_maker "Returns the constellation point that matches best."



%feature("docstring") gr::digital::constellation_8psk::make "Digital constellation for 8PSK.

Constructor Specific Documentation:

"

%feature("docstring") gr::digital::constellation_8psk_natural "Digital constellation for natually mapped 8PSK.

Constructor Specific Documentation:

"



%feature("docstring") gr::digital::constellation_8psk_natural::decision_maker "Returns the constellation point that matches best."



%feature("docstring") gr::digital::constellation_8psk_natural::make "Digital constellation for natually mapped 8PSK.

Constructor Specific Documentation:

"

%feature("docstring") gr::digital::constellation_bpsk "Digital constellation for BPSK .

Constructor Specific Documentation:

"



%feature("docstring") gr::digital::constellation_bpsk::decision_maker "Returns the constellation point that matches best."



%feature("docstring") gr::digital::constellation_bpsk::make "Digital constellation for BPSK .

Constructor Specific Documentation:

"

%feature("docstring") gr::digital::constellation_calcdist "Calculate Euclidian distance for any constellation.

Constellation which calculates the distance to each point in the constellation for decision making. Inefficient for large constellations.

Constructor Specific Documentation:

Make a general constellation object that calculates the Euclidean distance for hard decisions.

Args:
    constell : List of constellation points (order of list matches pre_diff_code)
    pre_diff_code : List of alphabet symbols (before applying any differential coding) (order of list matches constell)
    rotational_symmetry : Number of rotations around unit circle that have the same representation.
    dimensionality : Number of dimensions to the constellation."

%feature("docstring") gr::digital::constellation_calcdist::decision_maker "Returns the constellation point that matches best."



%feature("docstring") gr::digital::constellation_calcdist::make "Calculate Euclidian distance for any constellation.

Constellation which calculates the distance to each point in the constellation for decision making. Inefficient for large constellations.

Constructor Specific Documentation:

Make a general constellation object that calculates the Euclidean distance for hard decisions.

Args:
    constell : List of constellation points (order of list matches pre_diff_code)
    pre_diff_code : List of alphabet symbols (before applying any differential coding) (order of list matches constell)
    rotational_symmetry : Number of rotations around unit circle that have the same representation.
    dimensionality : Number of dimensions to the constellation."

%feature("docstring") gr::digital::constellation_decoder_cb "Constellation Decoder.

Decode a constellation's points from a complex space to (unpacked) bits based on the map of the  object.

Constructor Specific Documentation:

Make constellation decoder block.

Args:
    constellation : A constellation derived from class 'constellation'. Use base() method to get a shared pointer to this base class type."

%feature("docstring") gr::digital::constellation_decoder_cb::make "Constellation Decoder.

Decode a constellation's points from a complex space to (unpacked) bits based on the map of the  object.

Constructor Specific Documentation:

Make constellation decoder block.

Args:
    constellation : A constellation derived from class 'constellation'. Use base() method to get a shared pointer to this base class type."

%feature("docstring") gr::digital::constellation_dqpsk "Digital constellation for DQPSK.

Constructor Specific Documentation:

"



%feature("docstring") gr::digital::constellation_dqpsk::decision_maker "Returns the constellation point that matches best."



%feature("docstring") gr::digital::constellation_dqpsk::make "Digital constellation for DQPSK.

Constructor Specific Documentation:

"

%feature("docstring") gr::digital::constellation_expl_rect "Rectangular digital constellation.

Only implemented for 1-(complex)dimensional constellation.

Constellation space is divided into rectangular sectors. Each sector is associated with the nearest constellation point.

This class is different from constellation_rect in that the mapping from sector to constellation point is explicitly passed into the constructor as sector_values. Usually we do not need this, since we want each sector to be automatically mapped to the closest constellation point, however sometimes it's nice to have the flexibility.

Constructor Specific Documentation:



Args:
    constellation : 
    pre_diff_code : 
    rotational_symmetry : 
    real_sectors : 
    imag_sectors : 
    width_real_sectors : 
    width_imag_sectors : 
    sector_values : "







%feature("docstring") gr::digital::constellation_expl_rect::make "Rectangular digital constellation.

Only implemented for 1-(complex)dimensional constellation.

Constellation space is divided into rectangular sectors. Each sector is associated with the nearest constellation point.

This class is different from constellation_rect in that the mapping from sector to constellation point is explicitly passed into the constructor as sector_values. Usually we do not need this, since we want each sector to be automatically mapped to the closest constellation point, however sometimes it's nice to have the flexibility.

Constructor Specific Documentation:



Args:
    constellation : 
    pre_diff_code : 
    rotational_symmetry : 
    real_sectors : 
    imag_sectors : 
    width_real_sectors : 
    width_imag_sectors : 
    sector_values : "

%feature("docstring") gr::digital::constellation_psk "constellation_psk

Constellation space is divided into pie slices sectors.

Each slice is associated with the nearest constellation point.

Works well for PSK but nothing else.

Assumes that there is a constellation point at 1.x

Constructor Specific Documentation:



Args:
    constell : 
    pre_diff_code : 
    n_sectors : "









%feature("docstring") gr::digital::constellation_psk::make "constellation_psk

Constellation space is divided into pie slices sectors.

Each slice is associated with the nearest constellation point.

Works well for PSK but nothing else.

Assumes that there is a constellation point at 1.x

Constructor Specific Documentation:



Args:
    constell : 
    pre_diff_code : 
    n_sectors : "

%feature("docstring") gr::digital::constellation_qpsk "Digital constellation for QPSK.

Constellation diagram assumes little endian format e.g. top, left means 2 not 1.

Constructor Specific Documentation:

"



%feature("docstring") gr::digital::constellation_qpsk::decision_maker "Returns the constellation point that matches best."



%feature("docstring") gr::digital::constellation_qpsk::make "Digital constellation for QPSK.

Constellation diagram assumes little endian format e.g. top, left means 2 not 1.

Constructor Specific Documentation:

"

%feature("docstring") gr::digital::constellation_receiver_cb "This block makes hard decisions about the received symbols (using a constellation object) and also fine tunes phase synchronization.

The phase and frequency synchronization are based on a Costas loop that finds the error of the incoming signal point compared to its nearest constellation point. The frequency and phase of the NCO are updated according to this error.

Message Ports:

set_constellation (input): Receives a PMT any containing a new gr::digital::constellation object. The PMT is cast back to a gr::digital::constellation_sptr and passes this to set_constellation.

rotate_phase (input): Receives a PMT double to update the phase. The phase value passed in the message is added to the current phase of the receiver.

Constructor Specific Documentation:

Constructs a constellation receiver that (phase/fine freq) synchronizes and decodes constellation points specified by a constellation object.

Args:
    constellation : constellation of points for generic modulation
    loop_bw : Loop bandwidth of the Costas Loop (~ 2pi/100)
    fmin : minimum normalized frequency value the loop can achieve
    fmax : maximum normalized frequency value the loop can achieve"



%feature("docstring") gr::digital::constellation_receiver_cb::make "This block makes hard decisions about the received symbols (using a constellation object) and also fine tunes phase synchronization.

The phase and frequency synchronization are based on a Costas loop that finds the error of the incoming signal point compared to its nearest constellation point. The frequency and phase of the NCO are updated according to this error.

Message Ports:

set_constellation (input): Receives a PMT any containing a new gr::digital::constellation object. The PMT is cast back to a gr::digital::constellation_sptr and passes this to set_constellation.

rotate_phase (input): Receives a PMT double to update the phase. The phase value passed in the message is added to the current phase of the receiver.

Constructor Specific Documentation:

Constructs a constellation receiver that (phase/fine freq) synchronizes and decodes constellation points specified by a constellation object.

Args:
    constellation : constellation of points for generic modulation
    loop_bw : Loop bandwidth of the Costas Loop (~ 2pi/100)
    fmin : minimum normalized frequency value the loop can achieve
    fmax : maximum normalized frequency value the loop can achieve"

%feature("docstring") gr::digital::constellation_rect "Rectangular digital constellation

Only implemented for 1-(complex)dimensional constellation.

Constellation space is divided into rectangular sectors. Each sector is associated with the nearest constellation point.

Works well for square QAM.

Works for any generic constellation provided sectors are not too large.

Constructor Specific Documentation:

Make a rectangular constellation object.

Args:
    constell : List of constellation points (order of list matches pre_diff_code)
    pre_diff_code : List of alphabet symbols (before applying any differential coding) (order of list matches constell)
    rotational_symmetry : Number of rotations around unit circle that have the same representation.
    real_sectors : Number of sectors the real axis is split in to.
    imag_sectors : Number of sectors the imag axis is split in to.
    width_real_sectors : width of each real sector to calculate decision boundaries.
    width_imag_sectors : width of each imag sector to calculate decision boundaries."











%feature("docstring") gr::digital::constellation_rect::make "Rectangular digital constellation

Only implemented for 1-(complex)dimensional constellation.

Constellation space is divided into rectangular sectors. Each sector is associated with the nearest constellation point.

Works well for square QAM.

Works for any generic constellation provided sectors are not too large.

Constructor Specific Documentation:

Make a rectangular constellation object.

Args:
    constell : List of constellation points (order of list matches pre_diff_code)
    pre_diff_code : List of alphabet symbols (before applying any differential coding) (order of list matches constell)
    rotational_symmetry : Number of rotations around unit circle that have the same representation.
    real_sectors : Number of sectors the real axis is split in to.
    imag_sectors : Number of sectors the imag axis is split in to.
    width_real_sectors : width of each real sector to calculate decision boundaries.
    width_imag_sectors : width of each imag sector to calculate decision boundaries."

%feature("docstring") gr::digital::constellation_soft_decoder_cf "Constellation Decoder.

Decode a constellation's points from a complex space to soft bits based on the map and soft decision LUT of the  object.

Constructor Specific Documentation:

Make constellation decoder block.

Args:
    constellation : A constellation derived from class 'constellation'. Use base() method to get a shared pointer to this base class type."

%feature("docstring") gr::digital::constellation_soft_decoder_cf::make "Constellation Decoder.

Decode a constellation's points from a complex space to soft bits based on the map and soft decision LUT of the  object.

Constructor Specific Documentation:

Make constellation decoder block.

Args:
    constellation : A constellation derived from class 'constellation'. Use base() method to get a shared pointer to this base class type."

%feature("docstring") gr::digital::corr_est_cc "Correlate stream with a pre-defined sequence and estimate peak.

Input: 
Output: 

This block is designed to search for a sync word by correlation and uses the results of the correlation to get a time and phase offset estimate. These estimates are passed downstream as stream tags for use by follow-on synchronization blocks.

The sync word is provided as a set of symbols after being filtered by a baseband matched filter.

The phase_est tag can be used by downstream blocks to adjust their phase estimator/correction loops, and is currently implemented by the gr::digital::costas_loop_cc block.

The time_est tag can be used to adjust the sampling timing estimate of any downstream synchronization blocks and is currently implemented by the gr::digital::pfb_clock_sync_ccf block.

The caller must provide a \"time_est\" and \"phase_est\" tag marking delay from the start of the correlated signal segment, in order to mark the proper point in the sync word for downstream synchronization blocks. Generally this block cannot know where the actual sync word symbols are located relative to \"corr_start\", given that some modulations have pulses with intentional ISI. The user should manually examine the primary output and the \"corr_start\" tag postition to determine the required tag delay settings for the particular modulation, sync word, and downstream blocks used.

For a discussion of the properties of complex correlations, with respect to signal processing, see: Marple, Jr., S. L., \"Estimating Group Delay and Phase Delay via Discrete-Time 'Analytic' Cross-Correlation,  , Volume 47, No. 9, September 1999

Constructor Specific Documentation:

Make a block that correlates against the  vector and outputs a phase and symbol timing estimate.

Args:
    symbols : Set of symbols to correlate against (e.g., a sync word).
    sps : Samples per symbol
    mark_delay : tag marking delay in samples after the corr_start tag
    threshold : Threshold of correlator, relative to a 100% correlation (1.0). Default is 0.9."













%feature("docstring") gr::digital::corr_est_cc::make "Correlate stream with a pre-defined sequence and estimate peak.

Input: 
Output: 

This block is designed to search for a sync word by correlation and uses the results of the correlation to get a time and phase offset estimate. These estimates are passed downstream as stream tags for use by follow-on synchronization blocks.

The sync word is provided as a set of symbols after being filtered by a baseband matched filter.

The phase_est tag can be used by downstream blocks to adjust their phase estimator/correction loops, and is currently implemented by the gr::digital::costas_loop_cc block.

The time_est tag can be used to adjust the sampling timing estimate of any downstream synchronization blocks and is currently implemented by the gr::digital::pfb_clock_sync_ccf block.

The caller must provide a \"time_est\" and \"phase_est\" tag marking delay from the start of the correlated signal segment, in order to mark the proper point in the sync word for downstream synchronization blocks. Generally this block cannot know where the actual sync word symbols are located relative to \"corr_start\", given that some modulations have pulses with intentional ISI. The user should manually examine the primary output and the \"corr_start\" tag postition to determine the required tag delay settings for the particular modulation, sync word, and downstream blocks used.

For a discussion of the properties of complex correlations, with respect to signal processing, see: Marple, Jr., S. L., \"Estimating Group Delay and Phase Delay via Discrete-Time 'Analytic' Cross-Correlation,  , Volume 47, No. 9, September 1999

Constructor Specific Documentation:

Make a block that correlates against the  vector and outputs a phase and symbol timing estimate.

Args:
    symbols : Set of symbols to correlate against (e.g., a sync word).
    sps : Samples per symbol
    mark_delay : tag marking delay in samples after the corr_start tag
    threshold : Threshold of correlator, relative to a 100% correlation (1.0). Default is 0.9."

%feature("docstring") gr::digital::correlate_access_code_bb "Examine input for specified access code, one bit at a time.

input: stream of bits, 1 bit per input byte (data in LSB) output: stream of bits, 2 bits per output byte (data in LSB, flag in next higher bit)

Each output byte contains two valid bits, the data bit, and the flag bit. The LSB (bit 0) is the data bit, and is the original input data, delayed 64 bits. Bit 1 is the flag bit and is 1 if the corresponding data bit is the first data bit following the access code. Otherwise the flag bit is 0.

Constructor Specific Documentation:

Make a correlate_access_code block.

Args:
    access_code : is represented with 1 byte per bit, e.g., \"010101010111000100\"
    threshold : maximum number of bits that may be wrong"

%feature("docstring") gr::digital::correlate_access_code_bb::set_access_code "Set a new access code."

%feature("docstring") gr::digital::correlate_access_code_bb::make "Examine input for specified access code, one bit at a time.

input: stream of bits, 1 bit per input byte (data in LSB) output: stream of bits, 2 bits per output byte (data in LSB, flag in next higher bit)

Each output byte contains two valid bits, the data bit, and the flag bit. The LSB (bit 0) is the data bit, and is the original input data, delayed 64 bits. Bit 1 is the flag bit and is 1 if the corresponding data bit is the first data bit following the access code. Otherwise the flag bit is 0.

Constructor Specific Documentation:

Make a correlate_access_code block.

Args:
    access_code : is represented with 1 byte per bit, e.g., \"010101010111000100\"
    threshold : maximum number of bits that may be wrong"

%feature("docstring") gr::digital::correlate_access_code_bb_ts "Examine input for specified access code, one bit at a time.

input: stream of bits (unpacked bytes) output: a tagged stream set of bits from the payload following the access code and header.

This block searches for the given access code by reading in the input bits. Once found, it expects the following 32 samples to contain a header that includes the frame length (16 bits for the length, repeated). It decodes the header to get the frame length in order to set up the the tagged stream key information.

The output of this block is appropriate for use with tagged stream blocks.

Constructor Specific Documentation:



Args:
    access_code : is represented with 1 byte per bit, e.g., \"010101010111000100\"
    threshold : maximum number of bits that may be wrong
    tag_name : key of the tag inserted into the tag stream"





%feature("docstring") gr::digital::correlate_access_code_bb_ts::make "Examine input for specified access code, one bit at a time.

input: stream of bits (unpacked bytes) output: a tagged stream set of bits from the payload following the access code and header.

This block searches for the given access code by reading in the input bits. Once found, it expects the following 32 samples to contain a header that includes the frame length (16 bits for the length, repeated). It decodes the header to get the frame length in order to set up the the tagged stream key information.

The output of this block is appropriate for use with tagged stream blocks.

Constructor Specific Documentation:



Args:
    access_code : is represented with 1 byte per bit, e.g., \"010101010111000100\"
    threshold : maximum number of bits that may be wrong
    tag_name : key of the tag inserted into the tag stream"

%feature("docstring") gr::digital::correlate_access_code_ff_ts "Examine input for specified access code, one bit at a time.

input: stream of floats (generally, soft decisions) output: a tagged stream set of samples from the payload following the access code and header.

This block searches for the given access code by slicing the soft decision symbol inputs. Once found, it expects the following 32 samples to contain a header that includes the frame length (16 bits for the length, repeated). It decodes the header to get the frame length in order to set up the the tagged stream key information.

The output of this block is appropriate for use with tagged stream blocks.

Constructor Specific Documentation:



Args:
    access_code : is represented with 1 byte per bit, e.g., \"010101010111000100\"
    threshold : maximum number of bits that may be wrong
    tag_name : key of the tag inserted into the tag stream"





%feature("docstring") gr::digital::correlate_access_code_ff_ts::make "Examine input for specified access code, one bit at a time.

input: stream of floats (generally, soft decisions) output: a tagged stream set of samples from the payload following the access code and header.

This block searches for the given access code by slicing the soft decision symbol inputs. Once found, it expects the following 32 samples to contain a header that includes the frame length (16 bits for the length, repeated). It decodes the header to get the frame length in order to set up the the tagged stream key information.

The output of this block is appropriate for use with tagged stream blocks.

Constructor Specific Documentation:



Args:
    access_code : is represented with 1 byte per bit, e.g., \"010101010111000100\"
    threshold : maximum number of bits that may be wrong
    tag_name : key of the tag inserted into the tag stream"

%feature("docstring") gr::digital::correlate_access_code_tag_bb "Examine input for specified access code, one bit at a time.

input: stream of bits, 1 bit per input byte (data in LSB) output: unaltered stream of bits (plus tags)

This block annotates the input stream with tags. The tags have key name [tag_name], specified in the constructor. Used for searching an input data stream for preambles, etc.

Constructor Specific Documentation:



Args:
    access_code : is represented with 1 byte per bit, e.g., \"010101010111000100\"
    threshold : maximum number of bits that may be wrong
    tag_name : key of the tag inserted into the tag stream"







%feature("docstring") gr::digital::correlate_access_code_tag_bb::make "Examine input for specified access code, one bit at a time.

input: stream of bits, 1 bit per input byte (data in LSB) output: unaltered stream of bits (plus tags)

This block annotates the input stream with tags. The tags have key name [tag_name], specified in the constructor. Used for searching an input data stream for preambles, etc.

Constructor Specific Documentation:



Args:
    access_code : is represented with 1 byte per bit, e.g., \"010101010111000100\"
    threshold : maximum number of bits that may be wrong
    tag_name : key of the tag inserted into the tag stream"

%feature("docstring") gr::digital::correlate_access_code_tag_ff "Examine input for specified access code, one bit at a time.

input: stream of floats (generally, soft decisions) output: unaltered stream of bits (plus tags)

This block annotates the input stream with tags. The tags have key name [tag_name], specified in the constructor. Used for searching an input data stream for preambles, etc., by slicing the soft decision symbol inputs.

Constructor Specific Documentation:



Args:
    access_code : is represented with 1 byte per bit, e.g., \"010101010111000100\"
    threshold : maximum number of bits that may be wrong
    tag_name : key of the tag inserted into the tag stream"







%feature("docstring") gr::digital::correlate_access_code_tag_ff::make "Examine input for specified access code, one bit at a time.

input: stream of floats (generally, soft decisions) output: unaltered stream of bits (plus tags)

This block annotates the input stream with tags. The tags have key name [tag_name], specified in the constructor. Used for searching an input data stream for preambles, etc., by slicing the soft decision symbol inputs.

Constructor Specific Documentation:



Args:
    access_code : is represented with 1 byte per bit, e.g., \"010101010111000100\"
    threshold : maximum number of bits that may be wrong
    tag_name : key of the tag inserted into the tag stream"

%feature("docstring") gr::digital::correlate_and_sync_cc "Correlate to a preamble and send time/phase sync info.

Input: 
Output: 
This block is designed to search for a preamble by correlation and uses the results of the correlation to get a time and phase offset estimate. These estimates are passed downstream as stream tags for use by follow-on synchronization blocks.

The preamble is provided as a set of symbols along with a baseband matched filter which we use to create the filtered and upsampled symbol that we will receive over-the-air.

The phase_est tag is used to adjust the phase estimation of any downstream synchronization blocks and is currently used by the gr::digital::costas_loop_cc block.

The time_est tag is used to adjust the sampling timing estimation of any downstream synchronization blocks and is currently used by the gr::digital::pfb_clock_sync_ccf block.

Constructor Specific Documentation:

Make a block that correlates against the  vector and outputs a phase and symbol timing estimate.

Args:
    symbols : Set of symbols to correlate against (e.g., a preamble).
    filter : Baseband matched filter (e.g., RRC)
    sps : Samples per symbol
    nfilts : Number of filters in the internal PFB"





%feature("docstring") gr::digital::correlate_and_sync_cc::make "Correlate to a preamble and send time/phase sync info.

Input: 
Output: 
This block is designed to search for a preamble by correlation and uses the results of the correlation to get a time and phase offset estimate. These estimates are passed downstream as stream tags for use by follow-on synchronization blocks.

The preamble is provided as a set of symbols along with a baseband matched filter which we use to create the filtered and upsampled symbol that we will receive over-the-air.

The phase_est tag is used to adjust the phase estimation of any downstream synchronization blocks and is currently used by the gr::digital::costas_loop_cc block.

The time_est tag is used to adjust the sampling timing estimation of any downstream synchronization blocks and is currently used by the gr::digital::pfb_clock_sync_ccf block.

Constructor Specific Documentation:

Make a block that correlates against the  vector and outputs a phase and symbol timing estimate.

Args:
    symbols : Set of symbols to correlate against (e.g., a preamble).
    filter : Baseband matched filter (e.g., RRC)
    sps : Samples per symbol
    nfilts : Number of filters in the internal PFB"

%feature("docstring") gr::digital::costas_loop_cc "A Costas loop carrier recovery module.

The Costas loop locks to the center frequency of a signal and downconverts it to baseband.




More details can be found online:

J. Feigin, \"Practical Costas loop design: Designing a simple
and inexpensive BPSK Costas loop carrier recovery circuit,\" RF signal processing, pp. 20-36, 2002.



The Costas loop can have two output streams: 
There is a single optional message input:

Constructor Specific Documentation:

Make a Costas loop carrier recovery block.

Args:
    loop_bw : internal 2nd order loop bandwidth (~ 2pi/100)
    order : the loop order, either 2, 4, or 8
    use_snr : Use or ignore SNR estimates (from noise message port) in measurements; also uses tanh instead of slicing."

%feature("docstring") gr::digital::costas_loop_cc::error "Returns the current value of the loop error."

%feature("docstring") gr::digital::costas_loop_cc::make "A Costas loop carrier recovery module.

The Costas loop locks to the center frequency of a signal and downconverts it to baseband.




More details can be found online:

J. Feigin, \"Practical Costas loop design: Designing a simple
and inexpensive BPSK Costas loop carrier recovery circuit,\" RF signal processing, pp. 20-36, 2002.



The Costas loop can have two output streams: 
There is a single optional message input:

Constructor Specific Documentation:

Make a Costas loop carrier recovery block.

Args:
    loop_bw : internal 2nd order loop bandwidth (~ 2pi/100)
    order : the loop order, either 2, 4, or 8
    use_snr : Use or ignore SNR estimates (from noise message port) in measurements; also uses tanh instead of slicing."

%feature("docstring") gr::digital::cpmmod_bc "Generic CPM modulator.

Examples:


The input of this block are symbols from an M-ary alphabet +/-1, +/-3, ..., +/-(M-1). Usually, M = 2 and therefore, the valid inputs are +/-1. The modulator will silently accept any other inputs, though. The output is the phase-modulated signal.

Constructor Specific Documentation:

Make CPM modulator block.

Args:
    type : The modulation type. Can be one of LREC, LRC, LSRC, TFM or GAUSSIAN. See gr_cpm::phase_response() for a detailed description.
    h : The modulation index.  is the maximum phase change that can occur between two symbols, i.e., if you only send ones, the phase will increase by  every  samples. Set this to 0.5 for Minimum Shift Keying variants.
    samples_per_sym : Samples per symbol.
    L : The length of the phase duration in symbols. For L=1, this yields full- response CPM symbols, for L > 1, partial-response.
    beta : For LSRC, this is the rolloff factor. For Gaussian pulses, this is the 3 dB time-bandwidth product."

%feature("docstring") gr::digital::cpmmod_bc::make_gmskmod_bc "Make GMSK modulator block.

The type is GAUSSIAN and the modulation index for GMSK is 0.5. This are populated automatically by this factory function."

%feature("docstring") gr::digital::cpmmod_bc::taps "Return the phase response FIR taps."

%feature("docstring") gr::digital::cpmmod_bc::type "Return the type of CPM modulator."

%feature("docstring") gr::digital::cpmmod_bc::index "Return the modulation index of the modulator."

%feature("docstring") gr::digital::cpmmod_bc::samples_per_sym "Return the number of samples per symbol."

%feature("docstring") gr::digital::cpmmod_bc::length "Return the length of the phase duration (in symbols)"

%feature("docstring") gr::digital::cpmmod_bc::beta "Return the value of beta for the modulator."

%feature("docstring") gr::digital::cpmmod_bc::make "Generic CPM modulator.

Examples:


The input of this block are symbols from an M-ary alphabet +/-1, +/-3, ..., +/-(M-1). Usually, M = 2 and therefore, the valid inputs are +/-1. The modulator will silently accept any other inputs, though. The output is the phase-modulated signal.

Constructor Specific Documentation:

Make CPM modulator block.

Args:
    type : The modulation type. Can be one of LREC, LRC, LSRC, TFM or GAUSSIAN. See gr_cpm::phase_response() for a detailed description.
    h : The modulation index.  is the maximum phase change that can occur between two symbols, i.e., if you only send ones, the phase will increase by  every  samples. Set this to 0.5 for Minimum Shift Keying variants.
    samples_per_sym : Samples per symbol.
    L : The length of the phase duration in symbols. For L=1, this yields full- response CPM symbols, for L > 1, partial-response.
    beta : For LSRC, this is the rolloff factor. For Gaussian pulses, this is the 3 dB time-bandwidth product."

%feature("docstring") gr::digital::crc32_async_bb "Byte-stream CRC block for async messages.

Processes packets (as async PDU messages) for CRC32. The  parameter determines if the block acts to check and strip the CRC or to calculate and append the CRC32.

The input PDU is expected to be a message of packet bytes.

When using check mode, if the CRC passes, the output is a payload of the message with the CRC stripped, so the output will be 4 bytes smaller than the input.

When using calculate mode (check == false), then the CRC is calculated on the PDU and appended to it. The output is then 4 bytes longer than the input.

This block implements the CRC32 using the Boost crc_optimal class for 32-bit CRCs with the standard generator 0x04C11DB7.

Constructor Specific Documentation:



Args:
    check : Set to true if you want to check CRC, false to create CRC."

%feature("docstring") gr::digital::crc32_async_bb::make "Byte-stream CRC block for async messages.

Processes packets (as async PDU messages) for CRC32. The  parameter determines if the block acts to check and strip the CRC or to calculate and append the CRC32.

The input PDU is expected to be a message of packet bytes.

When using check mode, if the CRC passes, the output is a payload of the message with the CRC stripped, so the output will be 4 bytes smaller than the input.

When using calculate mode (check == false), then the CRC is calculated on the PDU and appended to it. The output is then 4 bytes longer than the input.

This block implements the CRC32 using the Boost crc_optimal class for 32-bit CRCs with the standard generator 0x04C11DB7.

Constructor Specific Documentation:



Args:
    check : Set to true if you want to check CRC, false to create CRC."

%feature("docstring") gr::digital::crc32_bb "Byte-stream CRC block.

Input: stream of bytes, which form a packet. The first byte of the packet has a tag with key \"length\" and the value being the number of bytes in the packet.

Output: The same bytes as incoming, but trailing a CRC32 of the packet. The tag is re-set to the new length.

Constructor Specific Documentation:



Args:
    check : Set to true if you want to check CRC, false to create CRC.
    lengthtagname : Length tag key for the tagged stream.
    packed : If the data is packed or unpacked bits (default=true)."

%feature("docstring") gr::digital::crc32_bb::make "Byte-stream CRC block.

Input: stream of bytes, which form a packet. The first byte of the packet has a tag with key \"length\" and the value being the number of bytes in the packet.

Output: The same bytes as incoming, but trailing a CRC32 of the packet. The tag is re-set to the new length.

Constructor Specific Documentation:



Args:
    check : Set to true if you want to check CRC, false to create CRC.
    lengthtagname : Length tag key for the tagged stream.
    packed : If the data is packed or unpacked bits (default=true)."

%feature("docstring") gr::digital::descrambler_bb "Descramber an input stream using an LFSR.

Descramble an input stream using an LFSR. This block works on the LSB only of the input data stream, i.e., on an \"unpacked
binary\" stream, and produces the same format on its output.

Constructor Specific Documentation:

Make a descrambler block.

Args:
    mask : Polynomial mask for LFSR
    seed : Initial shift register contents
    len : Shift register length"

%feature("docstring") gr::digital::descrambler_bb::make "Descramber an input stream using an LFSR.

Descramble an input stream using an LFSR. This block works on the LSB only of the input data stream, i.e., on an \"unpacked
binary\" stream, and produces the same format on its output.

Constructor Specific Documentation:

Make a descrambler block.

Args:
    mask : Polynomial mask for LFSR
    seed : Initial shift register contents
    len : Shift register length"

%feature("docstring") gr::digital::diff_decoder_bb "Differential encoder: y[0] = (x[0] - x[-1]) % M.

Uses current and previous symbols and the alphabet modulus to perform differential decoding.

Constructor Specific Documentation:

Make a differntial decoder block.

Args:
    modulus : Modulus of code's alphabet"

%feature("docstring") gr::digital::diff_decoder_bb::make "Differential encoder: y[0] = (x[0] - x[-1]) % M.

Uses current and previous symbols and the alphabet modulus to perform differential decoding.

Constructor Specific Documentation:

Make a differntial decoder block.

Args:
    modulus : Modulus of code's alphabet"

%feature("docstring") gr::digital::diff_encoder_bb "Differential decoder: y[0] = (x[0] + y[-1]) % M.

Uses current and previous symbols and the alphabet modulus to perform differential encoding.

Constructor Specific Documentation:

Make a differntial encoder block.

Args:
    modulus : Modulus of code's alphabet"

%feature("docstring") gr::digital::diff_encoder_bb::make "Differential decoder: y[0] = (x[0] + y[-1]) % M.

Uses current and previous symbols and the alphabet modulus to perform differential encoding.

Constructor Specific Documentation:

Make a differntial encoder block.

Args:
    modulus : Modulus of code's alphabet"

%feature("docstring") gr::digital::diff_phasor_cc "Differential decoding based on phase change.

Uses the phase difference between two symbols to determine the output symbol:

Constructor Specific Documentation:

Make a differential phasor decoding block."

%feature("docstring") gr::digital::diff_phasor_cc::make "Differential decoding based on phase change.

Uses the phase difference between two symbols to determine the output symbol:

Constructor Specific Documentation:

Make a differential phasor decoding block."

%feature("docstring") gr::digital::fll_band_edge_cc "Frequency Lock Loop using band-edge filters.

The frequency lock loop derives a band-edge filter that covers the upper and lower bandwidths of a digitally-modulated signal. The bandwidth range is determined by the excess bandwidth (e.g., rolloff factor) of the modulated signal. The placement in frequency of the band-edges is determined by the oversampling ratio (number of samples per symbol) and the excess bandwidth. The size of the filters should be fairly large so as to average over a number of symbols.

The FLL works by filtering the upper and lower band edges into x_u(t) and x_l(t), respectively. These are combined to form cc(t) = x_u(t) + x_l(t) and ss(t) = x_u(t) - x_l(t). Combining these to form the signal e(t) = Re{cc(t) \times ss(t)^*} (where ^* is the complex conjugate) provides an error signal at the DC term that is directly proportional to the carrier frequency. We then make a second-order loop using the error signal that is the running average of e(t).

In practice, the above equation can be simplified by just comparing the absolute value squared of the output of both filters: abs(x_l(t))^2 - abs(x_u(t))^2 = norm(x_l(t)) - norm(x_u(t)).

In theory, the band-edge filter is the derivative of the matched filter in frequency, (H_be(f) = frac{H(f)}{df}). In practice, this comes down to a quarter sine wave at the point of the matched filter's rolloff (if it's a raised-cosine, the derivative of a cosine is a sine). Extend this sine by another quarter wave to make a half wave around the band-edges is equivalent in time to the sum of two sinc functions. The baseband filter fot the band edges is therefore derived from this sum of sincs. The band edge filters are then just the baseband signal modulated to the correct place in frequency. All of these calculations are done in the 'design_filter' function.

Note: We use FIR filters here because the filters have to have a flat phase response over the entire frequency range to allow their comparisons to be valid.

It is very important that the band edge filters be the derivatives of the pulse shaping filter, and that they be linear phase. Otherwise, the variance of the error will be very large.

Constructor Specific Documentation:

Make an FLL block.

Args:
    samps_per_sym : (float) number of samples per symbol
    rolloff : (float) Rolloff (excess bandwidth) of signal filter
    filter_size : (int) number of filter taps to generate
    bandwidth : (float) Loop bandwidth"

%feature("docstring") gr::digital::fll_band_edge_cc::set_samples_per_symbol "Set the number of samples per symbol.

Set's the number of samples per symbol the system should use. This value is used to calculate the filter taps and will force a recalculation."

%feature("docstring") gr::digital::fll_band_edge_cc::set_rolloff "Set the rolloff factor of the shaping filter.

This sets the rolloff factor that is used in the pulse shaping filter and is used to calculate the filter taps. Changing this will force a recalculation of the filter taps.

This should be the same value that is used in the transmitter's pulse shaping filter. It must be between 0 and 1 and is usually between 0.2 and 0.5 (where 0.22 and 0.35 are commonly used values)."

%feature("docstring") gr::digital::fll_band_edge_cc::set_filter_size "Set the number of taps in the filter.

This sets the number of taps in the band-edge filters. Setting this will force a recalculation of the filter taps.

This should be about the same number of taps used in the transmitter's shaping filter and also not very large. A large number of taps will result in a large delay between input and frequency estimation, and so will not be as accurate. Between 30 and 70 taps is usual."

%feature("docstring") gr::digital::fll_band_edge_cc::samples_per_symbol "Returns the number of sampler per symbol used for the filter."

%feature("docstring") gr::digital::fll_band_edge_cc::rolloff "Returns the rolloff factor used for the filter."

%feature("docstring") gr::digital::fll_band_edge_cc::filter_size "Returns the number of taps of the filter."

%feature("docstring") gr::digital::fll_band_edge_cc::print_taps "Print the taps to screen."

%feature("docstring") gr::digital::fll_band_edge_cc::make "Frequency Lock Loop using band-edge filters.

The frequency lock loop derives a band-edge filter that covers the upper and lower bandwidths of a digitally-modulated signal. The bandwidth range is determined by the excess bandwidth (e.g., rolloff factor) of the modulated signal. The placement in frequency of the band-edges is determined by the oversampling ratio (number of samples per symbol) and the excess bandwidth. The size of the filters should be fairly large so as to average over a number of symbols.

The FLL works by filtering the upper and lower band edges into x_u(t) and x_l(t), respectively. These are combined to form cc(t) = x_u(t) + x_l(t) and ss(t) = x_u(t) - x_l(t). Combining these to form the signal e(t) = Re{cc(t) \times ss(t)^*} (where ^* is the complex conjugate) provides an error signal at the DC term that is directly proportional to the carrier frequency. We then make a second-order loop using the error signal that is the running average of e(t).

In practice, the above equation can be simplified by just comparing the absolute value squared of the output of both filters: abs(x_l(t))^2 - abs(x_u(t))^2 = norm(x_l(t)) - norm(x_u(t)).

In theory, the band-edge filter is the derivative of the matched filter in frequency, (H_be(f) = frac{H(f)}{df}). In practice, this comes down to a quarter sine wave at the point of the matched filter's rolloff (if it's a raised-cosine, the derivative of a cosine is a sine). Extend this sine by another quarter wave to make a half wave around the band-edges is equivalent in time to the sum of two sinc functions. The baseband filter fot the band edges is therefore derived from this sum of sincs. The band edge filters are then just the baseband signal modulated to the correct place in frequency. All of these calculations are done in the 'design_filter' function.

Note: We use FIR filters here because the filters have to have a flat phase response over the entire frequency range to allow their comparisons to be valid.

It is very important that the band edge filters be the derivatives of the pulse shaping filter, and that they be linear phase. Otherwise, the variance of the error will be very large.

Constructor Specific Documentation:

Make an FLL block.

Args:
    samps_per_sym : (float) number of samples per symbol
    rolloff : (float) Rolloff (excess bandwidth) of signal filter
    filter_size : (int) number of filter taps to generate
    bandwidth : (float) Loop bandwidth"

%feature("docstring") gr::digital::framer_sink_1 "Given a stream of bits and access_code flags, assemble packets.

input: stream of bytes from digital_correlate_access_code_bb output: none. Pushes assembled packet into target queue

The framer expects a fixed length header of 2 16-bit shorts containing the payload length, followed by the payload. If the 2 16-bit shorts are not identical, this packet is ignored. Better algs are welcome.

The input data consists of bytes that have two bits used. Bit 0, the LSB, contains the data bit. Bit 1 if set, indicates that the corresponding bit is the the first bit of the packet. That is, this bit is the first one after the access code.

Constructor Specific Documentation:

Make a framer_sink_1 block.

Args:
    target_queue : The message queue where frames go."

%feature("docstring") gr::digital::framer_sink_1::make "Given a stream of bits and access_code flags, assemble packets.

input: stream of bytes from digital_correlate_access_code_bb output: none. Pushes assembled packet into target queue

The framer expects a fixed length header of 2 16-bit shorts containing the payload length, followed by the payload. If the 2 16-bit shorts are not identical, this packet is ignored. Better algs are welcome.

The input data consists of bytes that have two bits used. Bit 0, the LSB, contains the data bit. Bit 1 if set, indicates that the corresponding bit is the the first bit of the packet. That is, this bit is the first one after the access code.

Constructor Specific Documentation:

Make a framer_sink_1 block.

Args:
    target_queue : The message queue where frames go."

%feature("docstring") gr::digital::glfsr_source_b "Galois LFSR pseudo-random source.

Constructor Specific Documentation:

Make a Galois LFSR pseudo-random source block.

Args:
    degree : Degree of shift register must be in [1, 32]. If mask is 0, the degree determines a default mask (see digital_impl_glfsr.cc for the mapping).
    repeat : Set to repeat sequence.
    mask : Allows a user-defined bit mask for indexes of the shift register to feed back.
    seed : Initial setting for values in shift register."





%feature("docstring") gr::digital::glfsr_source_b::make "Galois LFSR pseudo-random source.

Constructor Specific Documentation:

Make a Galois LFSR pseudo-random source block.

Args:
    degree : Degree of shift register must be in [1, 32]. If mask is 0, the degree determines a default mask (see digital_impl_glfsr.cc for the mapping).
    repeat : Set to repeat sequence.
    mask : Allows a user-defined bit mask for indexes of the shift register to feed back.
    seed : Initial setting for values in shift register."

%feature("docstring") gr::digital::glfsr_source_f "Galois LFSR pseudo-random source generating float outputs -1.0 - 1.0.

Constructor Specific Documentation:

Make a Galois LFSR pseudo-random source block.

Args:
    degree : Degree of shift register must be in [1, 32]. If mask is 0, the degree determines a default mask (see digital_impl_glfsr.cc for the mapping).
    repeat : Set to repeat sequence.
    mask : Allows a user-defined bit mask for indexes of the shift register to feed back.
    seed : Initial setting for values in shift register."





%feature("docstring") gr::digital::glfsr_source_f::make "Galois LFSR pseudo-random source generating float outputs -1.0 - 1.0.

Constructor Specific Documentation:

Make a Galois LFSR pseudo-random source block.

Args:
    degree : Degree of shift register must be in [1, 32]. If mask is 0, the degree determines a default mask (see digital_impl_glfsr.cc for the mapping).
    repeat : Set to repeat sequence.
    mask : Allows a user-defined bit mask for indexes of the shift register to feed back.
    seed : Initial setting for values in shift register."

%feature("docstring") gr::digital::hdlc_deframer_bp "HDLC deframer which takes in unpacked bits, and outputs PDU binary blobs. Frames which do not pass CRC are rejected.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of digital::hdlc_deframer.

Args:
    length_min : Minimum frame size (default: 32)
    length_max : Maximum frame size (default: 500)"

%feature("docstring") gr::digital::hdlc_deframer_bp::make "HDLC deframer which takes in unpacked bits, and outputs PDU binary blobs. Frames which do not pass CRC are rejected.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of digital::hdlc_deframer.

Args:
    length_min : Minimum frame size (default: 32)
    length_max : Maximum frame size (default: 500)"

%feature("docstring") gr::digital::hdlc_framer_pb "HDLC framer which takes in PMT binary blobs and outputs HDLC frames as unpacked bits, with CRC and bit stuffing added. The first sample of the frame is tagged with the tag frame_tag_name and includes a length field for tagged_stream use.

This block outputs one whole frame at a time; if there is not enough output buffer space to fit a frame, it is pushed onto a queue. As a result flowgraphs which only run for a finite number of samples may not receive all frames in the queue, due to the scheduler's granularity. For flowgraphs that stream continuously (anything using a USRP) this should not be an issue.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of digital::hdlc_framer.

Args:
    frame_tag_name : The tag to add to the first sample of each frame."

%feature("docstring") gr::digital::hdlc_framer_pb::make "HDLC framer which takes in PMT binary blobs and outputs HDLC frames as unpacked bits, with CRC and bit stuffing added. The first sample of the frame is tagged with the tag frame_tag_name and includes a length field for tagged_stream use.

This block outputs one whole frame at a time; if there is not enough output buffer space to fit a frame, it is pushed onto a queue. As a result flowgraphs which only run for a finite number of samples may not receive all frames in the queue, due to the scheduler's granularity. For flowgraphs that stream continuously (anything using a USRP) this should not be an issue.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of digital::hdlc_framer.

Args:
    frame_tag_name : The tag to add to the first sample of each frame."

%feature("docstring") gr::digital::header_payload_demux "Header/Payload demuxer (HPD).

This block is designed to demultiplex packets from a bursty transmission. The typical application for this block is the case when you are receiving packets with yet-to-determine length. This block will pass the header section to other blocks for demodulation. Using the information from the demodulated header, it will then output the payload. The beginning of the header needs to be identified by a trigger signal (see below).


Theory of Operation
Input 0 takes a continuous transmission of samples (items). Input 1 is an optional input for the trigger signal (mark beginning of packets). In this case, a non-zero value on input 1 identifies the beginning of a packet. Otherwise, a tag with the key specified in  is used as a trigger (its value is irrelevant).

Until a trigger signal is detected, all samples are dropped onto the floor. Once a trigger is detected, a total of  items are copied to output 0. The block then stalls until it receives a message on the message port . The message must be a PMT dictionary; all key/value pairs are copied as tags to the first item of the payload (which is assumed to be the first item after the header). The value corresponding to the key specified in  is read and taken as the payload length. The payload, together with the header data as tags, is then copied to output 1.

If the header demodulation fails, the header must send a PMT with value pmt::PMT_F. The state gets reset and the header is ignored.



Symbols, Items and Item Sizes
To generically and transparently handle different kinds of modulations, including OFDM, this block distinguises between  and .

Items are what are consumed at the input. Anything that uses complex samples will therefore use an itemsize of . Symbols are a way of grouping items. In OFDM, we usually don't care about individual samples, but we do care about full OFDM symbols, so we set  to the IFFT / FFT length of the OFDM modulator / demodulator. For single-carrier modulations, this value can be set to the number of samples per symbol, to handle data in number of symbols, or to 1 to handle data in number of samples. If specified,  items are discarded before every symbol. This is useful for demuxing bursts of OFDM signals.

On the output, we can deal with symbols directly by setting  to true. In that case, the output item size is the .

 OFDM with 48 sub-carriers, using a length-64 IFFT on the modulator, and a cyclic-prefix length of 16 samples. In this case,  is , because we're receiving complex samples. One OFDM symbol has 64 samples, hence  is set to 64, and  to 16. The header length is specified in number of OFDM symbols. Because we want to deal with full OFDM symbols, we set  to true.

 PSK-modulated signals, with 4 samples per symbol. Again,  is  because we're still dealing with complex samples.  is 4, because one item is one sample.  must be set to 0. The header length is given in number of PSK symbols.



Handling timing uncertainty on the trigger
By default, the assumption is made that the trigger arrives on  the sample that the header starts. These triggers typically come from timing synchronization algorithms which may be suboptimal, and have a known timing uncertainty (e.g., we know the trigger might be a sample too early or too late).

The demuxer has an option for this case, the . If this value is non-zero, it specifies the number of items that are prepended and appended to the header before copying it to the header output.

Example: Say our synchronization algorithm can be off by up to two samples, and the header length is 20 samples. So we set  to 20, and  to 2. Now assume a trigger arrives on sample index 100. We copy a total of 24 samples to the header port, starting at sample index 98.

The payload is  padded. Let's say the header demod reports a payload length of 100. In the previous examples, we would copy 100 samples to the payload port, starting at sample index 120 (this means the padded samples appended to the header are copied to both ports!). However, the header demodulator has the option to specify a payload offset, which cannot exceed the padding value. To do this, include a key  in the message sent back to the HPD. A negative value means the payload starts earlier than otherwise. (If you wanted to always pad the payload, you could set  to  and increase the reported length of the payload).

Because the padding is specified in number of items, and not symbols, this value can only be multiples of the number of items per symbol  either  is true, or a guard interval is specified (or both). Note that in practice, it is rare that both a guard interval is specified  a padding value is required. The difference between the padding value and a guard interval is that a guard interval is part of the signal, and comes with  symbol, whereas the header padding is added to only the header, and is not by design.



Tag Handling
Any tags on the input stream are copied to the corresponding output  they're on an item that is propagated. Note that a tag on the header items is copied to the header stream; that means the header-parsing block must handle these tags if they should go on the payload. A special case are tags on items that make up the guard interval. These are copied to the first item of the following symbol. If a tag is situated very close to the end of the payload, it might be unclear if it belongs to this packet or the following. In this case, it is possible that the tag might be propagated twice.

Tags outside of packets are generally discarded. If there are tags that carry important information that must not be list, there are two additional mechanisms to preserve the tags:

Constructor Specific Documentation:



Args:
    header_len : Number of symbols per header
    items_per_symbol : Number of items per symbol
    guard_interval : Number of items between two consecutive symbols
    length_tag_key : Key of the frame length tag
    trigger_tag_key : Key of the trigger tag
    output_symbols : Output symbols (true) or items (false)?
    itemsize : Item size (bytes per item)
    timing_tag_key : The name of the tag with timing information, usually 'rx_time' or empty (this means timing info is discarded)
    samp_rate : Sampling rate at the input. Necessary to calculate the rx time of packets.
    special_tags : A vector of strings denoting tags which shall be preserved (see Tag Handling)
    header_padding : A number of items that is appended and prepended to the header."

%feature("docstring") gr::digital::header_payload_demux::make "Header/Payload demuxer (HPD).

This block is designed to demultiplex packets from a bursty transmission. The typical application for this block is the case when you are receiving packets with yet-to-determine length. This block will pass the header section to other blocks for demodulation. Using the information from the demodulated header, it will then output the payload. The beginning of the header needs to be identified by a trigger signal (see below).


Theory of Operation
Input 0 takes a continuous transmission of samples (items). Input 1 is an optional input for the trigger signal (mark beginning of packets). In this case, a non-zero value on input 1 identifies the beginning of a packet. Otherwise, a tag with the key specified in  is used as a trigger (its value is irrelevant).

Until a trigger signal is detected, all samples are dropped onto the floor. Once a trigger is detected, a total of  items are copied to output 0. The block then stalls until it receives a message on the message port . The message must be a PMT dictionary; all key/value pairs are copied as tags to the first item of the payload (which is assumed to be the first item after the header). The value corresponding to the key specified in  is read and taken as the payload length. The payload, together with the header data as tags, is then copied to output 1.

If the header demodulation fails, the header must send a PMT with value pmt::PMT_F. The state gets reset and the header is ignored.



Symbols, Items and Item Sizes
To generically and transparently handle different kinds of modulations, including OFDM, this block distinguises between  and .

Items are what are consumed at the input. Anything that uses complex samples will therefore use an itemsize of . Symbols are a way of grouping items. In OFDM, we usually don't care about individual samples, but we do care about full OFDM symbols, so we set  to the IFFT / FFT length of the OFDM modulator / demodulator. For single-carrier modulations, this value can be set to the number of samples per symbol, to handle data in number of symbols, or to 1 to handle data in number of samples. If specified,  items are discarded before every symbol. This is useful for demuxing bursts of OFDM signals.

On the output, we can deal with symbols directly by setting  to true. In that case, the output item size is the .

 OFDM with 48 sub-carriers, using a length-64 IFFT on the modulator, and a cyclic-prefix length of 16 samples. In this case,  is , because we're receiving complex samples. One OFDM symbol has 64 samples, hence  is set to 64, and  to 16. The header length is specified in number of OFDM symbols. Because we want to deal with full OFDM symbols, we set  to true.

 PSK-modulated signals, with 4 samples per symbol. Again,  is  because we're still dealing with complex samples.  is 4, because one item is one sample.  must be set to 0. The header length is given in number of PSK symbols.



Handling timing uncertainty on the trigger
By default, the assumption is made that the trigger arrives on  the sample that the header starts. These triggers typically come from timing synchronization algorithms which may be suboptimal, and have a known timing uncertainty (e.g., we know the trigger might be a sample too early or too late).

The demuxer has an option for this case, the . If this value is non-zero, it specifies the number of items that are prepended and appended to the header before copying it to the header output.

Example: Say our synchronization algorithm can be off by up to two samples, and the header length is 20 samples. So we set  to 20, and  to 2. Now assume a trigger arrives on sample index 100. We copy a total of 24 samples to the header port, starting at sample index 98.

The payload is  padded. Let's say the header demod reports a payload length of 100. In the previous examples, we would copy 100 samples to the payload port, starting at sample index 120 (this means the padded samples appended to the header are copied to both ports!). However, the header demodulator has the option to specify a payload offset, which cannot exceed the padding value. To do this, include a key  in the message sent back to the HPD. A negative value means the payload starts earlier than otherwise. (If you wanted to always pad the payload, you could set  to  and increase the reported length of the payload).

Because the padding is specified in number of items, and not symbols, this value can only be multiples of the number of items per symbol  either  is true, or a guard interval is specified (or both). Note that in practice, it is rare that both a guard interval is specified  a padding value is required. The difference between the padding value and a guard interval is that a guard interval is part of the signal, and comes with  symbol, whereas the header padding is added to only the header, and is not by design.



Tag Handling
Any tags on the input stream are copied to the corresponding output  they're on an item that is propagated. Note that a tag on the header items is copied to the header stream; that means the header-parsing block must handle these tags if they should go on the payload. A special case are tags on items that make up the guard interval. These are copied to the first item of the following symbol. If a tag is situated very close to the end of the payload, it might be unclear if it belongs to this packet or the following. In this case, it is possible that the tag might be propagated twice.

Tags outside of packets are generally discarded. If there are tags that carry important information that must not be list, there are two additional mechanisms to preserve the tags:

Constructor Specific Documentation:



Args:
    header_len : Number of symbols per header
    items_per_symbol : Number of items per symbol
    guard_interval : Number of items between two consecutive symbols
    length_tag_key : Key of the frame length tag
    trigger_tag_key : Key of the trigger tag
    output_symbols : Output symbols (true) or items (false)?
    itemsize : Item size (bytes per item)
    timing_tag_key : The name of the tag with timing information, usually 'rx_time' or empty (this means timing info is discarded)
    samp_rate : Sampling rate at the input. Necessary to calculate the rx time of packets.
    special_tags : A vector of strings denoting tags which shall be preserved (see Tag Handling)
    header_padding : A number of items that is appended and prepended to the header."

%feature("docstring") gr::digital::kurtotic_equalizer_cc "Implements a kurtosis-based adaptive equalizer on complex stream.

Warning: This block does not yet work.

\"Y. Guo, J. Zhao, Y. Sun, \"Sign kurtosis maximization based blind equalization algorithm,\" IEEE Conf. on Control, Automation,
Robotics and Vision, Vol. 3, Dec. 2004, pp. 2052 - 2057.\"

Constructor Specific Documentation:



Args:
    num_taps : 
    mu : "









%feature("docstring") gr::digital::kurtotic_equalizer_cc::make "Implements a kurtosis-based adaptive equalizer on complex stream.

Warning: This block does not yet work.

\"Y. Guo, J. Zhao, Y. Sun, \"Sign kurtosis maximization based blind equalization algorithm,\" IEEE Conf. on Control, Automation,
Robotics and Vision, Vol. 3, Dec. 2004, pp. 2052 - 2057.\"

Constructor Specific Documentation:



Args:
    num_taps : 
    mu : "

%feature("docstring") gr::digital::lms_dd_equalizer_cc "Least-Mean-Square Decision Directed Equalizer (complex in/out)

This block implements an LMS-based decision-directed equalizer. It uses a set of weights, w, to correlate against the inputs, u, and a decisions is then made from this output. The error in the decision is used to update the weight vector.

y[n] = conj(w[n]) u[n] d[n] = decision(y[n]) e[n] = d[n] - y[n] w[n+1] = w[n] + mu u[n] conj(e[n])

Where mu is a gain value (between 0 and 1 and usually small, around 0.001 - 0.01.

This block uses the digital_constellation object for making the decision from y[n]. Create the constellation object for whatever constellation is to be used and pass in the object. In Python, you can use something like:

self.constellation = digital.constellation_qpsk()

To create a QPSK constellation (see the digital_constellation block for more details as to what constellations are available or how to create your own). You then pass the object to this block as an sptr, or using \"self.constellation.base()\".

The theory for this algorithm can be found in Chapter 9 of: S. Haykin, Adaptive Filter Theory, Upper Saddle River, NJ: Prentice Hall, 1996.

Constructor Specific Documentation:

Make an LMS decision-directed equalizer

Args:
    num_taps : Number of taps in the equalizer (channel size)
    mu : Gain of the update loop
    sps : Number of samples per symbol of the input signal
    cnst : A constellation derived from class 'constellation'. Use base() method to get a shared pointer to this base class type."













%feature("docstring") gr::digital::lms_dd_equalizer_cc::make "Least-Mean-Square Decision Directed Equalizer (complex in/out)

This block implements an LMS-based decision-directed equalizer. It uses a set of weights, w, to correlate against the inputs, u, and a decisions is then made from this output. The error in the decision is used to update the weight vector.

y[n] = conj(w[n]) u[n] d[n] = decision(y[n]) e[n] = d[n] - y[n] w[n+1] = w[n] + mu u[n] conj(e[n])

Where mu is a gain value (between 0 and 1 and usually small, around 0.001 - 0.01.

This block uses the digital_constellation object for making the decision from y[n]. Create the constellation object for whatever constellation is to be used and pass in the object. In Python, you can use something like:

self.constellation = digital.constellation_qpsk()

To create a QPSK constellation (see the digital_constellation block for more details as to what constellations are available or how to create your own). You then pass the object to this block as an sptr, or using \"self.constellation.base()\".

The theory for this algorithm can be found in Chapter 9 of: S. Haykin, Adaptive Filter Theory, Upper Saddle River, NJ: Prentice Hall, 1996.

Constructor Specific Documentation:

Make an LMS decision-directed equalizer

Args:
    num_taps : Number of taps in the equalizer (channel size)
    mu : Gain of the update loop
    sps : Number of samples per symbol of the input signal
    cnst : A constellation derived from class 'constellation'. Use base() method to get a shared pointer to this base class type."

%feature("docstring") gr::digital::map_bb "output[i] = map[input[i]]

This block maps an incoming signal to the value in the map. The block expects that the incoming signal has a maximum value of len(map)-1.

-> output[i] = map[input[i]]

Constructor Specific Documentation:

Make a map block.

Args:
    map : a vector of integers that maps x to map[x]."





%feature("docstring") gr::digital::map_bb::make "output[i] = map[input[i]]

This block maps an incoming signal to the value in the map. The block expects that the incoming signal has a maximum value of len(map)-1.

-> output[i] = map[input[i]]

Constructor Specific Documentation:

Make a map block.

Args:
    map : a vector of integers that maps x to map[x]."

%feature("docstring") gr::digital::mpsk_receiver_cc "This block takes care of receiving M-PSK modulated signals through phase, frequency, and symbol synchronization.

It performs carrier frequency and phase locking as well as symbol timing recovery. It works with (D)BPSK, (D)QPSK, and (D)8PSK as tested currently. It should also work for OQPSK and PI/4 DQPSK.

The phase and frequency synchronization are based on a Costas loop that finds the error of the incoming signal point compared to its nearest constellation point. The frequency and phase of the NCO are updated according to this error. There are optimized phase error detectors for BPSK and QPSK, but 8PSK is done using a brute-force computation of the constellation points to find the minimum.

The symbol synchronization is done using a modified Mueller and Muller circuit from the paper:

\"G. R. Danesfahani, T. G. Jeans, \"Optimisation of modified Mueller and Muller algorithm,\" Electronics Letters, Vol. 31, no. 13, 22
June 1995, pp. 1032 - 1033.\"

This circuit interpolates the downconverted sample (using the NCO developed by the Costas loop) every mu samples, then it finds the sampling error based on this and the past symbols and the decision made on the samples. Like the phase error detector, there are optimized decision algorithms for BPSK and QPKS, but 8PSK uses another brute force computation against all possible symbols. The modifications to the M&M used here reduce self-noise.

Constructor Specific Documentation:

Make a M-PSK receiver block.

The constructor also chooses which phase detector and decision maker to use in the work loop based on the value of M.

Args:
    M : modulation order of the M-PSK modulation
    theta : any constant phase rotation from the real axis of the constellation
    loop_bw : Loop bandwidth to set gains of phase/freq tracking loop
    fmin : minimum normalized frequency value the loop can achieve
    fmax : maximum normalized frequency value the loop can achieve
    mu : initial parameter for the interpolator [0,1]
    gain_mu : gain parameter of the M&M error signal to adjust mu (~0.05)
    omega : initial value for the number of symbols between samples (~number of samples/symbol)
    gain_omega : gain parameter to adjust omega based on the error (~omega^2/4)
    omega_rel : sets the maximum (omega*(1+omega_rel)) and minimum (omega*(1+omega_rel)) omega (~0.005)"

%feature("docstring") gr::digital::mpsk_receiver_cc::modulation_order "Returns the modulation order (M) currently set."

%feature("docstring") gr::digital::mpsk_receiver_cc::theta "Returns current value of theta."

%feature("docstring") gr::digital::mpsk_receiver_cc::mu "Returns current value of mu."

%feature("docstring") gr::digital::mpsk_receiver_cc::omega "Returns current value of omega."

%feature("docstring") gr::digital::mpsk_receiver_cc::gain_mu "Returns mu gain factor."

%feature("docstring") gr::digital::mpsk_receiver_cc::gain_omega "Returns omega gain factor."

%feature("docstring") gr::digital::mpsk_receiver_cc::gain_omega_rel "Returns the relative omega limit."

%feature("docstring") gr::digital::mpsk_receiver_cc::set_modulation_order "Sets the modulation order (M) currently."

%feature("docstring") gr::digital::mpsk_receiver_cc::set_theta "Sets value of theta."

%feature("docstring") gr::digital::mpsk_receiver_cc::set_mu "Sets value of mu."

%feature("docstring") gr::digital::mpsk_receiver_cc::set_omega "Sets value of omega and its min and max values."

%feature("docstring") gr::digital::mpsk_receiver_cc::set_gain_mu "Sets value for mu gain factor."

%feature("docstring") gr::digital::mpsk_receiver_cc::set_gain_omega "Sets value for omega gain factor."

%feature("docstring") gr::digital::mpsk_receiver_cc::set_gain_omega_rel "Sets the relative omega limit and resets omega min/max values."

%feature("docstring") gr::digital::mpsk_receiver_cc::make "This block takes care of receiving M-PSK modulated signals through phase, frequency, and symbol synchronization.

It performs carrier frequency and phase locking as well as symbol timing recovery. It works with (D)BPSK, (D)QPSK, and (D)8PSK as tested currently. It should also work for OQPSK and PI/4 DQPSK.

The phase and frequency synchronization are based on a Costas loop that finds the error of the incoming signal point compared to its nearest constellation point. The frequency and phase of the NCO are updated according to this error. There are optimized phase error detectors for BPSK and QPSK, but 8PSK is done using a brute-force computation of the constellation points to find the minimum.

The symbol synchronization is done using a modified Mueller and Muller circuit from the paper:

\"G. R. Danesfahani, T. G. Jeans, \"Optimisation of modified Mueller and Muller algorithm,\" Electronics Letters, Vol. 31, no. 13, 22
June 1995, pp. 1032 - 1033.\"

This circuit interpolates the downconverted sample (using the NCO developed by the Costas loop) every mu samples, then it finds the sampling error based on this and the past symbols and the decision made on the samples. Like the phase error detector, there are optimized decision algorithms for BPSK and QPKS, but 8PSK uses another brute force computation against all possible symbols. The modifications to the M&M used here reduce self-noise.

Constructor Specific Documentation:

Make a M-PSK receiver block.

The constructor also chooses which phase detector and decision maker to use in the work loop based on the value of M.

Args:
    M : modulation order of the M-PSK modulation
    theta : any constant phase rotation from the real axis of the constellation
    loop_bw : Loop bandwidth to set gains of phase/freq tracking loop
    fmin : minimum normalized frequency value the loop can achieve
    fmax : maximum normalized frequency value the loop can achieve
    mu : initial parameter for the interpolator [0,1]
    gain_mu : gain parameter of the M&M error signal to adjust mu (~0.05)
    omega : initial value for the number of symbols between samples (~number of samples/symbol)
    gain_omega : gain parameter to adjust omega based on the error (~omega^2/4)
    omega_rel : sets the maximum (omega*(1+omega_rel)) and minimum (omega*(1+omega_rel)) omega (~0.005)"

%feature("docstring") gr::digital::mpsk_snr_est_cc "A block for computing SNR of a signal.

This block can be used to monitor and retrieve estimations of the signal SNR. It is designed to work in a flowgraph and passes all incoming data along to its output.

The block is designed for use with M-PSK signals especially. The type of estimator is specified as the  parameter in the constructor. The estimators tend to trade off performance for accuracy, although experimentation should be done to figure out the right approach for a given implementation. Further, the current set of estimators are designed and proven theoretically under AWGN conditions; some amount of error should be assumed and/or estimated for real channel conditions.

Constructor Specific Documentation:

Factory function returning shared pointer of this class

Args:
    type : the type of estimator to use gr::digital::snr_est_type_t \"snr_est_type_t\" for details about the available types
    tag_nsamples : after this many samples, a tag containing the SNR (key='snr') will be sent
    alpha : the update rate of internal running average calculations"

%feature("docstring") gr::digital::mpsk_snr_est_cc::snr "Return the estimated signal-to-noise ratio in decibels."

%feature("docstring") gr::digital::mpsk_snr_est_cc::type "Return the type of estimator in use."

%feature("docstring") gr::digital::mpsk_snr_est_cc::tag_nsample "Return how many samples between SNR tags."

%feature("docstring") gr::digital::mpsk_snr_est_cc::alpha "Get the running-average coefficient."

%feature("docstring") gr::digital::mpsk_snr_est_cc::set_type "Set type of estimator to use."

%feature("docstring") gr::digital::mpsk_snr_est_cc::set_tag_nsample "Set the number of samples between SNR tags."

%feature("docstring") gr::digital::mpsk_snr_est_cc::set_alpha "Set the running-average coefficient."

%feature("docstring") gr::digital::mpsk_snr_est_cc::make "A block for computing SNR of a signal.

This block can be used to monitor and retrieve estimations of the signal SNR. It is designed to work in a flowgraph and passes all incoming data along to its output.

The block is designed for use with M-PSK signals especially. The type of estimator is specified as the  parameter in the constructor. The estimators tend to trade off performance for accuracy, although experimentation should be done to figure out the right approach for a given implementation. Further, the current set of estimators are designed and proven theoretically under AWGN conditions; some amount of error should be assumed and/or estimated for real channel conditions.

Constructor Specific Documentation:

Factory function returning shared pointer of this class

Args:
    type : the type of estimator to use gr::digital::snr_est_type_t \"snr_est_type_t\" for details about the available types
    tag_nsamples : after this many samples, a tag containing the SNR (key='snr') will be sent
    alpha : the update rate of internal running average calculations"

%feature("docstring") gr::digital::msk_timing_recovery_cc "MSK/GMSK timing recovery

This block performs timing synchronization on CPM modulations using a fourth-order nonlinearity feedback method which is non-data-aided. The block does not require prior phase synchronization but is relatively sensitive to frequency offset (keep offset to 0.1x symbol rate).

For details on the algorithm, see: A.N. D'Andrea, U. Mengali, R. Reggiannini: A digital approach to clock recovery in generalized minimum shift keying. IEEE Transactions on Vehicular Technology, Vol. 39, Issue 3.

Constructor Specific Documentation:

Make an MSK timing recovery block.

Args:
    sps : Samples per symbol
    gain : Loop gain of timing error filter (try 0.05)
    limit : Relative limit of timing error (try 0.1 for 10% error max)
    osps : Output samples per symbol"













%feature("docstring") gr::digital::msk_timing_recovery_cc::make "MSK/GMSK timing recovery

This block performs timing synchronization on CPM modulations using a fourth-order nonlinearity feedback method which is non-data-aided. The block does not require prior phase synchronization but is relatively sensitive to frequency offset (keep offset to 0.1x symbol rate).

For details on the algorithm, see: A.N. D'Andrea, U. Mengali, R. Reggiannini: A digital approach to clock recovery in generalized minimum shift keying. IEEE Transactions on Vehicular Technology, Vol. 39, Issue 3.

Constructor Specific Documentation:

Make an MSK timing recovery block.

Args:
    sps : Samples per symbol
    gain : Loop gain of timing error filter (try 0.05)
    limit : Relative limit of timing error (try 0.1 for 10% error max)
    osps : Output samples per symbol"

%feature("docstring") gr::digital::ofdm_carrier_allocator_cvc "Create frequency domain OFDM symbols from complex values, add pilots.

This block turns a stream of complex, scalar modulation symbols into vectors which are the input for an IFFT in an OFDM transmitter. It also supports the possibility of placing pilot symbols onto the carriers.

The carriers can be allocated freely, if a carrier is not allocated, it is set to zero. This allows doing OFDMA-style carrier allocations.

Input: A tagged stream of complex scalars. The first item must have a tag containing the number of complex symbols in this frame. Output: A tagged stream of complex vectors of length fft_len. This can directly be connected to an FFT block. Make sure to set this block to 'reverse' for the IFFT. If  is true, the FFT block must activate FFT shifting, otherwise, set shifting to false. If given, sync words are prepended to the output. Note that sync words are prepended verbatim, make sure they are shifted (or not).

Carrier indexes are always such that index 0 is the DC carrier (note: you should not allocate this carrier). The carriers below the DC carrier are either indexed with negative numbers, or with indexes larger than . Index -1 and index  both identify the carrier below the DC carrier.

There are some basic checks in place during initialization which check that the carrier allocation table is valid. However, it is possible to overwrite data symbols with pilot symbols, or provide a carrier allocation that has mismatching pilot symbol positions and -values.

Tags are propagated such that a tag on an incoming complex symbol is mapped to the corresponding OFDM symbol. There is one exception: If a tag is on the first OFDM symbol, it is assumed that this tag should stay there, so it is moved to the front even if a sync word is included (any other tags will never be attached to the sync word). This allows tags to control the transmit timing to pass through in the correct position.

Constructor Specific Documentation:



Args:
    fft_len : 
    occupied_carriers : 
    pilot_carriers : 
    pilot_symbols : 
    sync_words : 
    len_tag_key : 
    output_is_shifted : "







%feature("docstring") gr::digital::ofdm_carrier_allocator_cvc::make "Create frequency domain OFDM symbols from complex values, add pilots.

This block turns a stream of complex, scalar modulation symbols into vectors which are the input for an IFFT in an OFDM transmitter. It also supports the possibility of placing pilot symbols onto the carriers.

The carriers can be allocated freely, if a carrier is not allocated, it is set to zero. This allows doing OFDMA-style carrier allocations.

Input: A tagged stream of complex scalars. The first item must have a tag containing the number of complex symbols in this frame. Output: A tagged stream of complex vectors of length fft_len. This can directly be connected to an FFT block. Make sure to set this block to 'reverse' for the IFFT. If  is true, the FFT block must activate FFT shifting, otherwise, set shifting to false. If given, sync words are prepended to the output. Note that sync words are prepended verbatim, make sure they are shifted (or not).

Carrier indexes are always such that index 0 is the DC carrier (note: you should not allocate this carrier). The carriers below the DC carrier are either indexed with negative numbers, or with indexes larger than . Index -1 and index  both identify the carrier below the DC carrier.

There are some basic checks in place during initialization which check that the carrier allocation table is valid. However, it is possible to overwrite data symbols with pilot symbols, or provide a carrier allocation that has mismatching pilot symbol positions and -values.

Tags are propagated such that a tag on an incoming complex symbol is mapped to the corresponding OFDM symbol. There is one exception: If a tag is on the first OFDM symbol, it is assumed that this tag should stay there, so it is moved to the front even if a sync word is included (any other tags will never be attached to the sync word). This allows tags to control the transmit timing to pass through in the correct position.

Constructor Specific Documentation:



Args:
    fft_len : 
    occupied_carriers : 
    pilot_carriers : 
    pilot_symbols : 
    sync_words : 
    len_tag_key : 
    output_is_shifted : "

%feature("docstring") gr::digital::ofdm_chanest_vcvc "Estimate channel and coarse frequency offset for OFDM from preambles

Input: OFDM symbols (in frequency domain). The first one (or two) symbols are expected to be synchronisation symbols, which are used to estimate the coarse freq offset and the initial equalizer taps (these symbols are removed from the stream). The following  are passed through unmodified (the actual equalisation must be done elsewhere). Output: The data symbols, without the synchronisation symbols. The first data symbol passed through has two tags: 'ofdm_sync_carr_offset' (integer), the coarse frequency offset as number of carriers, and 'ofdm_sync_eq_taps' (complex vector). Any tags attached to the synchronisation symbols are attached to the first data symbol. All other tags are propagated as expected.

Note: The vector on ofdm_sync_eq_taps is already frequency-corrected, whereas the rest is not.

This block assumes the frequency offset is even (i.e. an integer multiple of 2).

[1] Schmidl, T.M. and Cox, D.C., \"Robust frequency and timing synchronization for OFDM\", Communications, IEEE Transactions on, 1997. [2] K.D. Kammeyer, \"Nachrichtenuebertragung,\" Chapter. 16.3.2.

Constructor Specific Documentation:



Args:
    sync_symbol1 : First synchronisation symbol in the frequency domain. Its length must be the FFT length. For Schmidl & Cox synchronisation, every second sub-carrier has to be zero.
    sync_symbol2 : Second synchronisation symbol in the frequency domain. Must be equal to the FFT length, or zero length if only one synchronisation symbol is used. Using this symbol is how synchronisation is described in [1]. Leaving this empty forces us to interpolate the equalizer taps. If you are using an unusual sub-carrier configuration (e.g. because of OFDMA), this sync symbol is used to identify the active sub-carriers. If you only have one synchronisation symbol, set the active sub-carriers to a non-zero value in here, and also set  parameter to true.
    n_data_symbols : The number of data symbols following each set of synchronisation symbols. Must be at least 1.
    eq_noise_red_len : If non-zero, noise reduction for the equalizer taps is done according to [2]. In this case, it is the channel influence time in number of samples. A good value is usually the length of the cyclic prefix.
    max_carr_offset : Limit the number of sub-carriers the frequency offset can maximally be. Leave this zero to try all possibilities.
    force_one_sync_symbol : See ."

%feature("docstring") gr::digital::ofdm_chanest_vcvc::make "Estimate channel and coarse frequency offset for OFDM from preambles

Input: OFDM symbols (in frequency domain). The first one (or two) symbols are expected to be synchronisation symbols, which are used to estimate the coarse freq offset and the initial equalizer taps (these symbols are removed from the stream). The following  are passed through unmodified (the actual equalisation must be done elsewhere). Output: The data symbols, without the synchronisation symbols. The first data symbol passed through has two tags: 'ofdm_sync_carr_offset' (integer), the coarse frequency offset as number of carriers, and 'ofdm_sync_eq_taps' (complex vector). Any tags attached to the synchronisation symbols are attached to the first data symbol. All other tags are propagated as expected.

Note: The vector on ofdm_sync_eq_taps is already frequency-corrected, whereas the rest is not.

This block assumes the frequency offset is even (i.e. an integer multiple of 2).

[1] Schmidl, T.M. and Cox, D.C., \"Robust frequency and timing synchronization for OFDM\", Communications, IEEE Transactions on, 1997. [2] K.D. Kammeyer, \"Nachrichtenuebertragung,\" Chapter. 16.3.2.

Constructor Specific Documentation:



Args:
    sync_symbol1 : First synchronisation symbol in the frequency domain. Its length must be the FFT length. For Schmidl & Cox synchronisation, every second sub-carrier has to be zero.
    sync_symbol2 : Second synchronisation symbol in the frequency domain. Must be equal to the FFT length, or zero length if only one synchronisation symbol is used. Using this symbol is how synchronisation is described in [1]. Leaving this empty forces us to interpolate the equalizer taps. If you are using an unusual sub-carrier configuration (e.g. because of OFDMA), this sync symbol is used to identify the active sub-carriers. If you only have one synchronisation symbol, set the active sub-carriers to a non-zero value in here, and also set  parameter to true.
    n_data_symbols : The number of data symbols following each set of synchronisation symbols. Must be at least 1.
    eq_noise_red_len : If non-zero, noise reduction for the equalizer taps is done according to [2]. In this case, it is the channel influence time in number of samples. A good value is usually the length of the cyclic prefix.
    max_carr_offset : Limit the number of sub-carriers the frequency offset can maximally be. Leave this zero to try all possibilities.
    force_one_sync_symbol : See ."

%feature("docstring") gr::digital::ofdm_cyclic_prefixer "Adds a cyclic prefix and performs pulse shaping on OFDM symbols.

Input: OFDM symbols (in the time domain, i.e. after the IFFT). Optionally, entire frames can be processed. In this case,  must be specified which holds the key of the tag that denotes how many OFDM symbols are in a frame. Output: A stream of (scalar) complex symbols, which include the cyclic prefix and the pulse shaping. Note: If complete frames are processed, and  is greater than zero, the final OFDM symbol is followed by the delay line of the pulse shaping.

The pulse shape is a raised cosine in the time domain.

Constructor Specific Documentation:



Args:
    input_size : FFT length (i.e. length of the OFDM symbols)
    output_size : FFT length + cyclic prefix length (in samples)
    rolloff_len : Length of the rolloff flank in samples
    len_tag_key : For framed processing the key of the length tag"

%feature("docstring") gr::digital::ofdm_cyclic_prefixer::make "Adds a cyclic prefix and performs pulse shaping on OFDM symbols.

Input: OFDM symbols (in the time domain, i.e. after the IFFT). Optionally, entire frames can be processed. In this case,  must be specified which holds the key of the tag that denotes how many OFDM symbols are in a frame. Output: A stream of (scalar) complex symbols, which include the cyclic prefix and the pulse shaping. Note: If complete frames are processed, and  is greater than zero, the final OFDM symbol is followed by the delay line of the pulse shaping.

The pulse shape is a raised cosine in the time domain.

Constructor Specific Documentation:



Args:
    input_size : FFT length (i.e. length of the OFDM symbols)
    output_size : FFT length + cyclic prefix length (in samples)
    rolloff_len : Length of the rolloff flank in samples
    len_tag_key : For framed processing the key of the length tag"

%feature("docstring") gr::digital::ofdm_equalizer_simpledfe "Simple decision feedback equalizer for OFDM.

Equalizes an OFDM signal symbol by symbol using knowledge of the complex modulations symbols. For every symbol, the following steps are performed:


This equalizer makes a lot of assumptions:


Note that the equalized symbols are  on the constellation. This means soft information of the modulation symbols is lost after the equalization, which is suboptimal for channel codes that use soft decision.

Constructor Specific Documentation:



Args:
    fft_len : 
    constellation : 
    occupied_carriers : 
    pilot_carriers : 
    pilot_symbols : 
    symbols_skipped : 
    alpha : 
    input_is_shifted : "





%feature("docstring") gr::digital::ofdm_equalizer_simpledfe::equalize "Run the actual equalization."

%feature("docstring") gr::digital::ofdm_equalizer_simpledfe::make "Simple decision feedback equalizer for OFDM.

Equalizes an OFDM signal symbol by symbol using knowledge of the complex modulations symbols. For every symbol, the following steps are performed:


This equalizer makes a lot of assumptions:


Note that the equalized symbols are  on the constellation. This means soft information of the modulation symbols is lost after the equalization, which is suboptimal for channel codes that use soft decision.

Constructor Specific Documentation:



Args:
    fft_len : 
    constellation : 
    occupied_carriers : 
    pilot_carriers : 
    pilot_symbols : 
    symbols_skipped : 
    alpha : 
    input_is_shifted : "

%feature("docstring") gr::digital::ofdm_equalizer_static "Very simple static equalizer for OFDM.

This is an extremely simple equalizer. It will only work for high-SNR, very, very slowly changing channels.

It simply divides the signal with the currently known channel state. Whenever a pilot symbol comes around, it updates the channel state on that particular carrier by dividing the received symbol with the known pilot symbol.

Constructor Specific Documentation:



Args:
    fft_len : 
    occupied_carriers : 
    pilot_carriers : 
    pilot_symbols : 
    symbols_skipped : 
    input_is_shifted : "





%feature("docstring") gr::digital::ofdm_equalizer_static::equalize "Divide the input signal with the current channel state.

Does the following (and nothing else):"

%feature("docstring") gr::digital::ofdm_equalizer_static::make "Very simple static equalizer for OFDM.

This is an extremely simple equalizer. It will only work for high-SNR, very, very slowly changing channels.

It simply divides the signal with the currently known channel state. Whenever a pilot symbol comes around, it updates the channel state on that particular carrier by dividing the received symbol with the known pilot symbol.

Constructor Specific Documentation:



Args:
    fft_len : 
    occupied_carriers : 
    pilot_carriers : 
    pilot_symbols : 
    symbols_skipped : 
    input_is_shifted : "

%feature("docstring") gr::digital::ofdm_frame_acquisition "take a vector of complex constellation points in from an FFT and performs a correlation and equalization.

This block takes the output of an FFT of a received OFDM symbol and finds the start of a frame based on two known symbols. It also looks at the surrounding bins in the FFT output for the correlation in case there is a large frequency shift in the data. This block assumes that the fine frequency shift has already been corrected and that the samples fall in the middle of one FFT bin.

It then uses one of those known symbols to estimate the channel response over all subcarriers and does a simple 1-tap equalization on all subcarriers. This corrects for the phase and amplitude distortion caused by the channel.

Constructor Specific Documentation:

Make an OFDM correlator and equalizer.

Args:
    occupied_carriers : The number of subcarriers with data in the received symbol
    fft_length : The size of the FFT vector (occupied_carriers + unused carriers)
    cplen : The length of the cycle prefix
    known_symbol : A vector of complex numbers representing a known symbol at the start of a frame (usually a BPSK PN sequence)
    max_fft_shift_len : Set's the maximum distance you can look between bins for correlation"

%feature("docstring") gr::digital::ofdm_frame_acquisition::snr "Return an estimate of the SNR of the channel."

%feature("docstring") gr::digital::ofdm_frame_acquisition::make "take a vector of complex constellation points in from an FFT and performs a correlation and equalization.

This block takes the output of an FFT of a received OFDM symbol and finds the start of a frame based on two known symbols. It also looks at the surrounding bins in the FFT output for the correlation in case there is a large frequency shift in the data. This block assumes that the fine frequency shift has already been corrected and that the samples fall in the middle of one FFT bin.

It then uses one of those known symbols to estimate the channel response over all subcarriers and does a simple 1-tap equalization on all subcarriers. This corrects for the phase and amplitude distortion caused by the channel.

Constructor Specific Documentation:

Make an OFDM correlator and equalizer.

Args:
    occupied_carriers : The number of subcarriers with data in the received symbol
    fft_length : The size of the FFT vector (occupied_carriers + unused carriers)
    cplen : The length of the cycle prefix
    known_symbol : A vector of complex numbers representing a known symbol at the start of a frame (usually a BPSK PN sequence)
    max_fft_shift_len : Set's the maximum distance you can look between bins for correlation"

%feature("docstring") gr::digital::ofdm_frame_equalizer_vcvc "OFDM frame equalizer.

Performs equalization in one or two dimensions on a tagged OFDM frame.

This does two things: First, it removes the coarse carrier offset. If a tag is found on the first item with the key 'ofdm_sync_carr_offset', this is interpreted as the coarse frequency offset in number of carriers. Next, it performs equalization in one or two dimensions on a tagged OFDM frame. The actual equalization is done by a ofdm_frame_equalizer object, outside of the block.

Note that the tag with the coarse carrier offset is not removed. Blocks downstream from this block must not attempt to also correct this offset.

Input: a tagged series of OFDM symbols. Output: The same as the input, but equalized and frequency-corrected.

Constructor Specific Documentation:



Args:
    equalizer : The equalizer object that will do the actual work
    cp_len : Length of the cyclic prefix in samples (required to correct the frequency offset)
    tsb_key : TSB key
    propagate_channel_state : If true, the channel state after the last symbol will be added to the first symbol as a tag
    fixed_frame_len : Set if the frame length is fixed. When this value is given, the TSB tag key can be left empty, but it is useful even when using tagged streams at the input."

%feature("docstring") gr::digital::ofdm_frame_equalizer_vcvc::make "OFDM frame equalizer.

Performs equalization in one or two dimensions on a tagged OFDM frame.

This does two things: First, it removes the coarse carrier offset. If a tag is found on the first item with the key 'ofdm_sync_carr_offset', this is interpreted as the coarse frequency offset in number of carriers. Next, it performs equalization in one or two dimensions on a tagged OFDM frame. The actual equalization is done by a ofdm_frame_equalizer object, outside of the block.

Note that the tag with the coarse carrier offset is not removed. Blocks downstream from this block must not attempt to also correct this offset.

Input: a tagged series of OFDM symbols. Output: The same as the input, but equalized and frequency-corrected.

Constructor Specific Documentation:



Args:
    equalizer : The equalizer object that will do the actual work
    cp_len : Length of the cyclic prefix in samples (required to correct the frequency offset)
    tsb_key : TSB key
    propagate_channel_state : If true, the channel state after the last symbol will be added to the first symbol as a tag
    fixed_frame_len : Set if the frame length is fixed. When this value is given, the TSB tag key can be left empty, but it is useful even when using tagged streams at the input."

%feature("docstring") gr::digital::ofdm_frame_sink "Takes an OFDM symbol in, demaps it into bits of 0's and 1's, packs them into packets, and sends to to a message queue sink.

NOTE: The mod input parameter simply chooses a pre-defined demapper/slicer. Eventually, we want to be able to pass in a reference to an object to do the demapping and slicing for a given modulation type.

Constructor Specific Documentation:

Make an OFDM frame sink block.

Args:
    sym_position : vector of OFDM carrier symbols in complex space
    sym_value_out : vector of bit mapped from the complex symbol space
    target_queue : message queue for the packets to go into
    occupied_tones : The number of subcarriers with data in the received symbol
    phase_gain : gain of the phase tracking loop
    freq_gain : gain of the frequency tracking loop"

%feature("docstring") gr::digital::ofdm_frame_sink::make "Takes an OFDM symbol in, demaps it into bits of 0's and 1's, packs them into packets, and sends to to a message queue sink.

NOTE: The mod input parameter simply chooses a pre-defined demapper/slicer. Eventually, we want to be able to pass in a reference to an object to do the demapping and slicing for a given modulation type.

Constructor Specific Documentation:

Make an OFDM frame sink block.

Args:
    sym_position : vector of OFDM carrier symbols in complex space
    sym_value_out : vector of bit mapped from the complex symbol space
    target_queue : message queue for the packets to go into
    occupied_tones : The number of subcarriers with data in the received symbol
    phase_gain : gain of the phase tracking loop
    freq_gain : gain of the frequency tracking loop"

%feature("docstring") gr::digital::ofdm_insert_preamble "insert \"pre-modulated\" preamble symbols before each payload.

Constructor Specific Documentation:

Make an OFDM preamble inserter block.

Args:
    fft_length : length of each symbol in samples.
    preamble : vector of symbols that represent the pre-modulated preamble."



%feature("docstring") gr::digital::ofdm_insert_preamble::make "insert \"pre-modulated\" preamble symbols before each payload.

Constructor Specific Documentation:

Make an OFDM preamble inserter block.

Args:
    fft_length : length of each symbol in samples.
    preamble : vector of symbols that represent the pre-modulated preamble."

%feature("docstring") gr::digital::ofdm_mapper_bcv "take a stream of bytes in and map to a vector of complex constellation points suitable for IFFT input to be used in an ofdm modulator.

Abstract class must be subclassed with specific mapping.

Constructor Specific Documentation:

Make an OFDM mapper block.

Args:
    constellation : vector of OFDM carrier symbols in complex space
    msgq_limit : limit on number of messages the queue can store
    occupied_carriers : The number of subcarriers with data in the received symbol
    fft_length : The size of the FFT vector (occupied_carriers + unused carriers)"



%feature("docstring") gr::digital::ofdm_mapper_bcv::make "take a stream of bytes in and map to a vector of complex constellation points suitable for IFFT input to be used in an ofdm modulator.

Abstract class must be subclassed with specific mapping.

Constructor Specific Documentation:

Make an OFDM mapper block.

Args:
    constellation : vector of OFDM carrier symbols in complex space
    msgq_limit : limit on number of messages the queue can store
    occupied_carriers : The number of subcarriers with data in the received symbol
    fft_length : The size of the FFT vector (occupied_carriers + unused carriers)"

%feature("docstring") gr::digital::ofdm_sampler "does the rest of the OFDM stuff

Constructor Specific Documentation:

Make an OFDM sampler block.

Args:
    fft_length : The size of the FFT vector (occupied_carriers + unused carriers)
    symbol_length : Length of the full symbol (fft_length + CP length)
    timeout : timeout in samples when we stop looking for a symbol after initial ack."

%feature("docstring") gr::digital::ofdm_sampler::make "does the rest of the OFDM stuff

Constructor Specific Documentation:

Make an OFDM sampler block.

Args:
    fft_length : The size of the FFT vector (occupied_carriers + unused carriers)
    symbol_length : Length of the full symbol (fft_length + CP length)
    timeout : timeout in samples when we stop looking for a symbol after initial ack."

%feature("docstring") gr::digital::ofdm_serializer_vcc "Serializes complex modulations symbols from OFDM sub-carriers.

This is the inverse block to the carrier_allocator_cvc. It outputs the complex data symbols as a tagged stream, discarding the pilot symbols.

If given, two different tags are parsed: The first key () specifies the number of OFDM symbols in the frame at the input. The second key () specifies the number of complex symbols that are coded into this frame. If given, this second key is then used at the output, otherwise,  is used. If both are given, the packet length specifies the maximum number of output items, and the frame length specifies the exact number of consumed input items.

It is possible to correct a carrier offset in this function by passing another tag with said offset.

Input: Complex vectors of length  Output: Complex scalars, in the same order as specified in occupied_carriers.

Constructor Specific Documentation:



Args:
    fft_len : FFT length
    occupied_carriers : See ofdm_carrier_allocator_cvc.
    len_tag_key : The key of the tag identifying the length of the input frame in OFDM symbols.
    packet_len_tag_key : The key of the tag identifying the number of complex symbols in this packet.
    symbols_skipped : If the first symbol is not allocated as in [0], set this
    carr_offset_key : When this block should correct a carrier offset, specify the tag key of the offset here (not necessary if following an ofdm_frame_equalizer_vcvc)
    input_is_shifted : If the input has the DC carrier on index 0 (i.e. it is not FFT shifted), set this to false"

%feature("docstring") gr::digital::ofdm_serializer_vcc::make "Serializes complex modulations symbols from OFDM sub-carriers.

This is the inverse block to the carrier_allocator_cvc. It outputs the complex data symbols as a tagged stream, discarding the pilot symbols.

If given, two different tags are parsed: The first key () specifies the number of OFDM symbols in the frame at the input. The second key () specifies the number of complex symbols that are coded into this frame. If given, this second key is then used at the output, otherwise,  is used. If both are given, the packet length specifies the maximum number of output items, and the frame length specifies the exact number of consumed input items.

It is possible to correct a carrier offset in this function by passing another tag with said offset.

Input: Complex vectors of length  Output: Complex scalars, in the same order as specified in occupied_carriers.

Constructor Specific Documentation:



Args:
    fft_len : FFT length
    occupied_carriers : See ofdm_carrier_allocator_cvc.
    len_tag_key : The key of the tag identifying the length of the input frame in OFDM symbols.
    packet_len_tag_key : The key of the tag identifying the number of complex symbols in this packet.
    symbols_skipped : If the first symbol is not allocated as in [0], set this
    carr_offset_key : When this block should correct a carrier offset, specify the tag key of the offset here (not necessary if following an ofdm_frame_equalizer_vcvc)
    input_is_shifted : If the input has the DC carrier on index 0 (i.e. it is not FFT shifted), set this to false"

%feature("docstring") gr::digital::ofdm_sync_sc_cfb "Schmidl & Cox synchronisation for OFDM.

Input: complex samples. Output 0: Fine frequency offset, scaled by the OFDM symbol duration. This is  in [1]. The normalized frequency offset is then 2.0*output0/fft_len. Output 1: Beginning of the first OFDM symbol after the first (doubled) OFDM symbol. The beginning is marked with a 1 (it's 0 everywhere else).

The evaluation of the coarse frequency offset is  done in this block. Also, the initial equalizer taps are not calculated here.

Note that we use a different normalization factor in the timing metric than the authors do in their original work[1]. If the timing metric (8) is  we calculate the normalization as  i.e., we estimate the energy from  half-symbols. This avoids spurious detects at the end of a burst, when the energy level suddenly drops.

[1] Schmidl, T.M. and Cox, D.C., \"Robust frequency and timing synchronization for OFDM\", Communications, IEEE Transactions on, 1997.

Constructor Specific Documentation:



Args:
    fft_len : FFT length
    cp_len : Length of the guard interval (cyclic prefix) in samples
    use_even_carriers : If true, the carriers in the sync preamble are occupied such that the even carriers are used (0, 2, 4, ...). If you use all carriers, that would include the DC carrier, so be careful.
    threshold : detection threshold. Default is 0.9."





%feature("docstring") gr::digital::ofdm_sync_sc_cfb::make "Schmidl & Cox synchronisation for OFDM.

Input: complex samples. Output 0: Fine frequency offset, scaled by the OFDM symbol duration. This is  in [1]. The normalized frequency offset is then 2.0*output0/fft_len. Output 1: Beginning of the first OFDM symbol after the first (doubled) OFDM symbol. The beginning is marked with a 1 (it's 0 everywhere else).

The evaluation of the coarse frequency offset is  done in this block. Also, the initial equalizer taps are not calculated here.

Note that we use a different normalization factor in the timing metric than the authors do in their original work[1]. If the timing metric (8) is  we calculate the normalization as  i.e., we estimate the energy from  half-symbols. This avoids spurious detects at the end of a burst, when the energy level suddenly drops.

[1] Schmidl, T.M. and Cox, D.C., \"Robust frequency and timing synchronization for OFDM\", Communications, IEEE Transactions on, 1997.

Constructor Specific Documentation:



Args:
    fft_len : FFT length
    cp_len : Length of the guard interval (cyclic prefix) in samples
    use_even_carriers : If true, the carriers in the sync preamble are occupied such that the even carriers are used (0, 2, 4, ...). If you use all carriers, that would include the DC carrier, so be careful.
    threshold : detection threshold. Default is 0.9."

%feature("docstring") gr::digital::packet_header_default "Default header formatter for digital packet transmission.

For bursty/packetized digital transmission, packets are usually prepended with a packet header, containing the number of bytes etc. This class is not a block, but a tool to create these packet header.

This is a default packet header (see header_formatter()) for a description on the header format). To create other header, derive packet header creator classes from this function.

gr::digital::packet_headergenerator_bb uses header generators derived from this class to create packet headers from data streams.

Constructor Specific Documentation:



Args:
    header_len : 
    len_tag_key : 
    num_tag_key : 
    bits_per_byte : "















%feature("docstring") gr::digital::packet_header_default::header_formatter "Encodes the header information in the given tags into bits and places them into .

Uses the following header format: Bits 0-11: The packet length (what was stored in the tag with key ) Bits 12-23: The header number (counts up everytime this function is called) Bit 24-31: 8-Bit CRC All other bits: Are set to zero

If the header length is smaller than 32, bits are simply left out. For this reason, they always start with the LSB.

However, it is recommended to stay above 32 Bits, in order to have a working CRC."

%feature("docstring") gr::digital::packet_header_default::header_parser "Inverse function to header_formatter().

Reads the bit stream in  and writes a corresponding tag into ."

%feature("docstring") gr::digital::packet_header_default::make "Default header formatter for digital packet transmission.

For bursty/packetized digital transmission, packets are usually prepended with a packet header, containing the number of bytes etc. This class is not a block, but a tool to create these packet header.

This is a default packet header (see header_formatter()) for a description on the header format). To create other header, derive packet header creator classes from this function.

gr::digital::packet_headergenerator_bb uses header generators derived from this class to create packet headers from data streams.

Constructor Specific Documentation:



Args:
    header_len : 
    len_tag_key : 
    num_tag_key : 
    bits_per_byte : "

%feature("docstring") gr::digital::packet_header_ofdm "Header utility for OFDM signals.

Constructor Specific Documentation:



Args:
    occupied_carriers : See carrier allocator
    n_syms : The number of OFDM symbols the header should be (usually 1)
    len_tag_key : The tag key used for the packet length (number of bytes)
    frame_len_tag_key : The tag key used for the frame length (number of OFDM symbols, this is the tag key required for the frame equalizer etc.)
    num_tag_key : The tag key used for packet numbering.
    bits_per_header_sym : Bits per complex symbol in the header, e.g. 1 if the header is BPSK modulated, 2 if it's QPSK modulated etc.
    bits_per_payload_sym : Bits per complex symbol in the payload. This is required to figure out how many OFDM symbols are necessary to encode the given number of bytes.
    scramble_header : Set this to true to scramble the bits. This is highly recommended, as it reduces PAPR spikes."





%feature("docstring") gr::digital::packet_header_ofdm::header_formatter "Header formatter.

Does the same as packet_header_default::header_formatter(), but optionally scrambles the bits (this is more important for OFDM to avoid PAPR spikes)."

%feature("docstring") gr::digital::packet_header_ofdm::header_parser "Inverse function to header_formatter().

Does the same as packet_header_default::header_parser(), but adds another tag that stores the number of OFDM symbols in the packet. Note that there is usually no linear connection between the number of OFDM symbols and the packet length because a packet might finish mid-OFDM-symbol."

%feature("docstring") gr::digital::packet_header_ofdm::make "Header utility for OFDM signals.

Constructor Specific Documentation:



Args:
    occupied_carriers : See carrier allocator
    n_syms : The number of OFDM symbols the header should be (usually 1)
    len_tag_key : The tag key used for the packet length (number of bytes)
    frame_len_tag_key : The tag key used for the frame length (number of OFDM symbols, this is the tag key required for the frame equalizer etc.)
    num_tag_key : The tag key used for packet numbering.
    bits_per_header_sym : Bits per complex symbol in the header, e.g. 1 if the header is BPSK modulated, 2 if it's QPSK modulated etc.
    bits_per_payload_sym : Bits per complex symbol in the payload. This is required to figure out how many OFDM symbols are necessary to encode the given number of bytes.
    scramble_header : Set this to true to scramble the bits. This is highly recommended, as it reduces PAPR spikes."

%feature("docstring") gr::digital::packet_headergenerator_bb "Generates a header for a tagged, streamed packet.

Input: A tagged stream. This is consumed entirely, it is not appended to the output stream. Output: An tagged stream containing the header. The details on the header are set in a header formatter object (of type packet_header_default or a subclass thereof). If only a number of bits is specified, a default header is generated (see packet_header_default).

Constructor Specific Documentation:



Args:
    header_formatter : 
    len_tag_key : "



%feature("docstring") gr::digital::packet_headergenerator_bb::make "Generates a header for a tagged, streamed packet.

Input: A tagged stream. This is consumed entirely, it is not appended to the output stream. Output: An tagged stream containing the header. The details on the header are set in a header formatter object (of type packet_header_default or a subclass thereof). If only a number of bits is specified, a default header is generated (see packet_header_default).

Constructor Specific Documentation:



Args:
    header_formatter : 
    len_tag_key : "

%feature("docstring") gr::digital::packet_headerparser_b "Post header metadata as a PMT.

In a sense, this is the inverse block to packet_headergenerator_bb. The difference is, the parsed header is not output as a stream, but as a PMT dictionary, which is published to message port with the id \"header_data\".

The dictionary consists of the tags created by the header formatter object. You should be able to use the exact same formatter object as used on the Tx side in the packet_headergenerator_bb.

If only a header length is given, this block uses the default header format.

Constructor Specific Documentation:



Args:
    header_formatter : Header object. This should be the same as used for packet_headergenerator_bb."

%feature("docstring") gr::digital::packet_headerparser_b::make "Post header metadata as a PMT.

In a sense, this is the inverse block to packet_headergenerator_bb. The difference is, the parsed header is not output as a stream, but as a PMT dictionary, which is published to message port with the id \"header_data\".

The dictionary consists of the tags created by the header formatter object. You should be able to use the exact same formatter object as used on the Tx side in the packet_headergenerator_bb.

If only a header length is given, this block uses the default header format.

Constructor Specific Documentation:



Args:
    header_formatter : Header object. This should be the same as used for packet_headergenerator_bb."

%feature("docstring") gr::digital::packet_sink "process received bits looking for packet sync, header, and process bits into packet

input: stream of symbols to be sliced.

output: none. Pushes assembled packet into target queue

The packet sink takes in a stream of binary symbols that are sliced around 0. The bits are then checked for the  to determine find and decode the packet. It then expects a fixed length header of 2 16-bit shorts containing the payload length, followed by the payload. If the 2 16-bit shorts are not identical, this packet is ignored. Better algs are welcome.

This block is not very useful anymore as it only works with 2-level modulations such as BPSK or GMSK. The block can generally be replaced with a correlate access code and frame sink blocks.

Constructor Specific Documentation:

Make a packet_sink block.

Args:
    sync_vector : The synchronization vector as a vector of 1's and 0's.
    target_queue : The message queue that packets are sent to.
    threshold : Number of bits that can be incorrect in the ."

%feature("docstring") gr::digital::packet_sink::carrier_sensed "return true if we detect carrier"

%feature("docstring") gr::digital::packet_sink::make "process received bits looking for packet sync, header, and process bits into packet

input: stream of symbols to be sliced.

output: none. Pushes assembled packet into target queue

The packet sink takes in a stream of binary symbols that are sliced around 0. The bits are then checked for the  to determine find and decode the packet. It then expects a fixed length header of 2 16-bit shorts containing the payload length, followed by the payload. If the 2 16-bit shorts are not identical, this packet is ignored. Better algs are welcome.

This block is not very useful anymore as it only works with 2-level modulations such as BPSK or GMSK. The block can generally be replaced with a correlate access code and frame sink blocks.

Constructor Specific Documentation:

Make a packet_sink block.

Args:
    sync_vector : The synchronization vector as a vector of 1's and 0's.
    target_queue : The message queue that packets are sent to.
    threshold : Number of bits that can be incorrect in the ."

%feature("docstring") gr::digital::pfb_clock_sync_ccf "Timing synchronizer using polyphase filterbanks.

This block performs timing synchronization for PAM signals by minimizing the derivative of the filtered signal, which in turn maximizes the SNR and minimizes ISI.

This approach works by setting up two filterbanks; one filterbank contains the signal's pulse shaping matched filter (such as a root raised cosine filter), where each branch of the filterbank contains a different phase of the filter. The second filterbank contains the derivatives of the filters in the first filterbank. Thinking of this in the time domain, the first filterbank contains filters that have a sinc shape to them. We want to align the output signal to be sampled at exactly the peak of the sinc shape. The derivative of the sinc contains a zero at the maximum point of the sinc (sinc(0) = 1, sinc(0)' = 0). Furthermore, the region around the zero point is relatively linear. We make use of this fact to generate the error signal.

If the signal out of the derivative filters is d_i[n] for the ith filter, and the output of the matched filter is x_i[n], we calculate the error as: e[n] = (Re{x_i[n]} * Re{d_i[n]} + Im{x_i[n]} * Im{d_i[n]}) / 2.0 This equation averages the error in the real and imaginary parts. There are two reasons we multiply by the signal itself. First, if the symbol could be positive or negative going, but we want the error term to always tell us to go in the same direction depending on which side of the zero point we are on. The sign of x_i[n] adjusts the error term to do this. Second, the magnitude of x_i[n] scales the error term depending on the symbol's amplitude, so larger signals give us a stronger error term because we have more confidence in that symbol's value. Using the magnitude of x_i[n] instead of just the sign is especially good for signals with low SNR.

The error signal, e[n], gives us a value proportional to how far away from the zero point we are in the derivative signal. We want to drive this value to zero, so we set up a second order loop. We have two variables for this loop; d_k is the filter number in the filterbank we are on and d_rate is the rate which we travel through the filters in the steady state. That is, due to the natural clock differences between the transmitter and receiver, d_rate represents that difference and would traverse the filter phase paths to keep the receiver locked. Thinking of this as a second-order PLL, the d_rate is the frequency and d_k is the phase. So we update d_rate and d_k using the standard loop equations based on two error signals, d_alpha and d_beta. We have these two values set based on each other for a critically damped system, so in the block constructor, we just ask for \"gain,\" which is d_alpha while d_beta is equal to (gain^2)/4.

The block's parameters are:








Reference: f. j. harris and M. Rice, \"Multirate Digital Filters for Symbol
Timing Synchronization in Software Defined Radios\", IEEE Selected Areas in Communications, Vol. 19, No. 12, Dec., 2001.

Constructor Specific Documentation:

Build the polyphase filterbank timing synchronizer.

Args:
    sps : (double) The number of samples per symbol in the incoming signal
    loop_bw : (float) The bandwidth of the control loop; set's alpha and beta.
    taps : (vector<int>) The filter taps.
    filter_size : (uint) The number of filters in the filterbank (default = 32).
    init_phase : (float) The initial phase to look at, or which filter to start with (default = 0).
    max_rate_deviation : (float) Distance from 0 d_rate can get (default = 1.5).
    osps : (int) The number of output samples per symbol (default=1)."

%feature("docstring") gr::digital::pfb_clock_sync_ccf::update_gains "update the system gains from omega and eta

This function updates the system gains based on the loop bandwidth and damping factor of the system. These two factors can be set separately through their own set functions."

%feature("docstring") gr::digital::pfb_clock_sync_ccf::update_taps "Resets the filterbank's filter taps with the new prototype filter."

%feature("docstring") gr::digital::pfb_clock_sync_ccf::set_taps "Used to set the taps of the filters in the filterbank and differential filterbank.

WARNING: this should not be used externally and will be moved to a private function in the next API."

%feature("docstring") gr::digital::pfb_clock_sync_ccf::taps "Returns all of the taps of the matched filter"

%feature("docstring") gr::digital::pfb_clock_sync_ccf::diff_taps "Returns all of the taps of the derivative filter"

%feature("docstring") gr::digital::pfb_clock_sync_ccf::channel_taps "Returns the taps of the matched filter for a particular channel"

%feature("docstring") gr::digital::pfb_clock_sync_ccf::diff_channel_taps "Returns the taps in the derivative filter for a particular channel"

%feature("docstring") gr::digital::pfb_clock_sync_ccf::taps_as_string "Return the taps as a formatted string for printing"

%feature("docstring") gr::digital::pfb_clock_sync_ccf::diff_taps_as_string "Return the derivative filter taps as a formatted string for printing"

%feature("docstring") gr::digital::pfb_clock_sync_ccf::set_loop_bandwidth "Set the loop bandwidth.

Set the loop filter's bandwidth to . This should be between 2*pi/200 and 2*pi/100 (in rads/samp). It must also be a positive number.

When a new damping factor is set, the gains, alpha and beta, of the loop are recalculated by a call to update_gains()."

%feature("docstring") gr::digital::pfb_clock_sync_ccf::set_damping_factor "Set the loop damping factor.

Set the loop filter's damping factor to . The damping factor should be sqrt(2)/2.0 for critically damped systems. Set it to anything else only if you know what you are doing. It must be a number between 0 and 1.

When a new damping factor is set, the gains, alpha and beta, of the loop are recalculated by a call to update_gains()."

%feature("docstring") gr::digital::pfb_clock_sync_ccf::set_alpha "Set the loop gain alpha.

Set's the loop filter's alpha gain parameter.

This value should really only be set by adjusting the loop bandwidth and damping factor."

%feature("docstring") gr::digital::pfb_clock_sync_ccf::set_beta "Set the loop gain beta.

Set's the loop filter's beta gain parameter.

This value should really only be set by adjusting the loop bandwidth and damping factor."

%feature("docstring") gr::digital::pfb_clock_sync_ccf::set_max_rate_deviation "Set the maximum deviation from 0 d_rate can have"

%feature("docstring") gr::digital::pfb_clock_sync_ccf::loop_bandwidth "Returns the loop bandwidth."

%feature("docstring") gr::digital::pfb_clock_sync_ccf::damping_factor "Returns the loop damping factor."

%feature("docstring") gr::digital::pfb_clock_sync_ccf::alpha "Returns the loop gain alpha."

%feature("docstring") gr::digital::pfb_clock_sync_ccf::beta "Returns the loop gain beta."

%feature("docstring") gr::digital::pfb_clock_sync_ccf::clock_rate "Returns the current clock rate."

%feature("docstring") gr::digital::pfb_clock_sync_ccf::error "Returns the current error of the control loop."

%feature("docstring") gr::digital::pfb_clock_sync_ccf::rate "Returns the current rate of the control loop."

%feature("docstring") gr::digital::pfb_clock_sync_ccf::phase "Returns the current phase arm of the control loop."

%feature("docstring") gr::digital::pfb_clock_sync_ccf::make "Timing synchronizer using polyphase filterbanks.

This block performs timing synchronization for PAM signals by minimizing the derivative of the filtered signal, which in turn maximizes the SNR and minimizes ISI.

This approach works by setting up two filterbanks; one filterbank contains the signal's pulse shaping matched filter (such as a root raised cosine filter), where each branch of the filterbank contains a different phase of the filter. The second filterbank contains the derivatives of the filters in the first filterbank. Thinking of this in the time domain, the first filterbank contains filters that have a sinc shape to them. We want to align the output signal to be sampled at exactly the peak of the sinc shape. The derivative of the sinc contains a zero at the maximum point of the sinc (sinc(0) = 1, sinc(0)' = 0). Furthermore, the region around the zero point is relatively linear. We make use of this fact to generate the error signal.

If the signal out of the derivative filters is d_i[n] for the ith filter, and the output of the matched filter is x_i[n], we calculate the error as: e[n] = (Re{x_i[n]} * Re{d_i[n]} + Im{x_i[n]} * Im{d_i[n]}) / 2.0 This equation averages the error in the real and imaginary parts. There are two reasons we multiply by the signal itself. First, if the symbol could be positive or negative going, but we want the error term to always tell us to go in the same direction depending on which side of the zero point we are on. The sign of x_i[n] adjusts the error term to do this. Second, the magnitude of x_i[n] scales the error term depending on the symbol's amplitude, so larger signals give us a stronger error term because we have more confidence in that symbol's value. Using the magnitude of x_i[n] instead of just the sign is especially good for signals with low SNR.

The error signal, e[n], gives us a value proportional to how far away from the zero point we are in the derivative signal. We want to drive this value to zero, so we set up a second order loop. We have two variables for this loop; d_k is the filter number in the filterbank we are on and d_rate is the rate which we travel through the filters in the steady state. That is, due to the natural clock differences between the transmitter and receiver, d_rate represents that difference and would traverse the filter phase paths to keep the receiver locked. Thinking of this as a second-order PLL, the d_rate is the frequency and d_k is the phase. So we update d_rate and d_k using the standard loop equations based on two error signals, d_alpha and d_beta. We have these two values set based on each other for a critically damped system, so in the block constructor, we just ask for \"gain,\" which is d_alpha while d_beta is equal to (gain^2)/4.

The block's parameters are:








Reference: f. j. harris and M. Rice, \"Multirate Digital Filters for Symbol
Timing Synchronization in Software Defined Radios\", IEEE Selected Areas in Communications, Vol. 19, No. 12, Dec., 2001.

Constructor Specific Documentation:

Build the polyphase filterbank timing synchronizer.

Args:
    sps : (double) The number of samples per symbol in the incoming signal
    loop_bw : (float) The bandwidth of the control loop; set's alpha and beta.
    taps : (vector<int>) The filter taps.
    filter_size : (uint) The number of filters in the filterbank (default = 32).
    init_phase : (float) The initial phase to look at, or which filter to start with (default = 0).
    max_rate_deviation : (float) Distance from 0 d_rate can get (default = 1.5).
    osps : (int) The number of output samples per symbol (default=1)."

%feature("docstring") gr::digital::pfb_clock_sync_fff "Timing synchronizer using polyphase filterbanks.

This block performs timing synchronization for PAM signals by minimizing the derivative of the filtered signal, which in turn maximizes the SNR and minimizes ISI.

This approach works by setting up two filterbanks; one filterbank contains the signal's pulse shaping matched filter (such as a root raised cosine filter), where each branch of the filterbank contains a different phase of the filter. The second filterbank contains the derivatives of the filters in the first filterbank. Thinking of this in the time domain, the first filterbank contains filters that have a sinc shape to them. We want to align the output signal to be sampled at exactly the peak of the sinc shape. The derivative of the sinc contains a zero at the maximum point of the sinc (sinc(0) = 1, sinc(0)' = 0). Furthermore, the region around the zero point is relatively linear. We make use of this fact to generate the error signal.

If the signal out of the derivative filters is d_i[n] for the ith filter, and the output of the matched filter is x_i[n], we calculate the error as: e[n] = (Re{x_i[n]} * Re{d_i[n]} + Im{x_i[n]} * Im{d_i[n]}) / 2.0 This equation averages the error in the real and imaginary parts. There are two reasons we multiply by the signal itself. First, if the symbol could be positive or negative going, but we want the error term to always tell us to go in the same direction depending on which side of the zero point we are on. The sign of x_i[n] adjusts the error term to do this. Second, the magnitude of x_i[n] scales the error term depending on the symbol's amplitude, so larger signals give us a stronger error term because we have more confidence in that symbol's value. Using the magnitude of x_i[n] instead of just the sign is especially good for signals with low SNR.

The error signal, e[n], gives us a value proportional to how far away from the zero point we are in the derivative signal. We want to drive this value to zero, so we set up a second order loop. We have two variables for this loop; d_k is the filter number in the filterbank we are on and d_rate is the rate which we travel through the filters in the steady state. That is, due to the natural clock differences between the transmitter and receiver, d_rate represents that difference and would traverse the filter phase paths to keep the receiver locked. Thinking of this as a second-order PLL, the d_rate is the frequency and d_k is the phase. So we update d_rate and d_k using the standard loop equations based on two error signals, d_alpha and d_beta. We have these two values set based on each other for a critically damped system, so in the block constructor, we just ask for \"gain,\" which is d_alpha while d_beta is equal to (gain^2)/4.

The block's parameters are:








Reference: f. j. harris and M. Rice, \"Multirate Digital Filters for Symbol
Timing Synchronization in Software Defined Radios\", IEEE Selected Areas in Communications, Vol. 19, No. 12, Dec., 2001.

Constructor Specific Documentation:

Build the polyphase filterbank timing synchronizer.

Args:
    sps : (double) The number of samples per second in the incoming signal
    gain : (float) The alpha gain of the control loop; beta = (gain^2)/4 by default.
    taps : (vector<int>) The filter taps.
    filter_size : (uint) The number of filters in the filterbank (default = 32).
    init_phase : (float) The initial phase to look at, or which filter to start with (default = 0).
    max_rate_deviation : (float) Distance from 0 d_rate can get (default = 1.5).
    osps : (int) The number of output samples per symbol (default=1)."

%feature("docstring") gr::digital::pfb_clock_sync_fff::update_gains "update the system gains from omega and eta

This function updates the system gains based on the loop bandwidth and damping factor of the system. These two factors can be set separately through their own set functions."

%feature("docstring") gr::digital::pfb_clock_sync_fff::update_taps "Resets the filterbank's filter taps with the new prototype filter."

%feature("docstring") gr::digital::pfb_clock_sync_fff::set_taps "Used to set the taps of the filters in the filterbank and differential filterbank.

WARNING: this should not be used externally and will be moved to a private function in the next API."

%feature("docstring") gr::digital::pfb_clock_sync_fff::taps "Returns all of the taps of the matched filter"

%feature("docstring") gr::digital::pfb_clock_sync_fff::diff_taps "Returns all of the taps of the derivative filter"

%feature("docstring") gr::digital::pfb_clock_sync_fff::channel_taps "Returns the taps of the matched filter for a particular channel"

%feature("docstring") gr::digital::pfb_clock_sync_fff::diff_channel_taps "Returns the taps in the derivative filter for a particular channel"

%feature("docstring") gr::digital::pfb_clock_sync_fff::taps_as_string "Return the taps as a formatted string for printing"

%feature("docstring") gr::digital::pfb_clock_sync_fff::diff_taps_as_string "Return the derivative filter taps as a formatted string for printing"

%feature("docstring") gr::digital::pfb_clock_sync_fff::set_loop_bandwidth "Set the loop bandwidth.

Set the loop filter's bandwidth to . This should be between 2*pi/200 and 2*pi/100 (in rads/samp). It must also be a positive number.

When a new damping factor is set, the gains, alpha and beta, of the loop are recalculated by a call to update_gains()."

%feature("docstring") gr::digital::pfb_clock_sync_fff::set_damping_factor "Set the loop damping factor.

Set the loop filter's damping factor to . The damping factor should be sqrt(2)/2.0 for critically damped systems. Set it to anything else only if you know what you are doing. It must be a number between 0 and 1.

When a new damping factor is set, the gains, alpha and beta, of the loop are recalculated by a call to update_gains()."

%feature("docstring") gr::digital::pfb_clock_sync_fff::set_alpha "Set the loop gain alpha.

Set's the loop filter's alpha gain parameter.

This value should really only be set by adjusting the loop bandwidth and damping factor."

%feature("docstring") gr::digital::pfb_clock_sync_fff::set_beta "Set the loop gain beta.

Set's the loop filter's beta gain parameter.

This value should really only be set by adjusting the loop bandwidth and damping factor."

%feature("docstring") gr::digital::pfb_clock_sync_fff::set_max_rate_deviation "Set the maximum deviation from 0 d_rate can have"

%feature("docstring") gr::digital::pfb_clock_sync_fff::loop_bandwidth "Returns the loop bandwidth."

%feature("docstring") gr::digital::pfb_clock_sync_fff::damping_factor "Returns the loop damping factor."

%feature("docstring") gr::digital::pfb_clock_sync_fff::alpha "Returns the loop gain alpha."

%feature("docstring") gr::digital::pfb_clock_sync_fff::beta "Returns the loop gain beta."

%feature("docstring") gr::digital::pfb_clock_sync_fff::clock_rate "Returns the current clock rate."

%feature("docstring") gr::digital::pfb_clock_sync_fff::make "Timing synchronizer using polyphase filterbanks.

This block performs timing synchronization for PAM signals by minimizing the derivative of the filtered signal, which in turn maximizes the SNR and minimizes ISI.

This approach works by setting up two filterbanks; one filterbank contains the signal's pulse shaping matched filter (such as a root raised cosine filter), where each branch of the filterbank contains a different phase of the filter. The second filterbank contains the derivatives of the filters in the first filterbank. Thinking of this in the time domain, the first filterbank contains filters that have a sinc shape to them. We want to align the output signal to be sampled at exactly the peak of the sinc shape. The derivative of the sinc contains a zero at the maximum point of the sinc (sinc(0) = 1, sinc(0)' = 0). Furthermore, the region around the zero point is relatively linear. We make use of this fact to generate the error signal.

If the signal out of the derivative filters is d_i[n] for the ith filter, and the output of the matched filter is x_i[n], we calculate the error as: e[n] = (Re{x_i[n]} * Re{d_i[n]} + Im{x_i[n]} * Im{d_i[n]}) / 2.0 This equation averages the error in the real and imaginary parts. There are two reasons we multiply by the signal itself. First, if the symbol could be positive or negative going, but we want the error term to always tell us to go in the same direction depending on which side of the zero point we are on. The sign of x_i[n] adjusts the error term to do this. Second, the magnitude of x_i[n] scales the error term depending on the symbol's amplitude, so larger signals give us a stronger error term because we have more confidence in that symbol's value. Using the magnitude of x_i[n] instead of just the sign is especially good for signals with low SNR.

The error signal, e[n], gives us a value proportional to how far away from the zero point we are in the derivative signal. We want to drive this value to zero, so we set up a second order loop. We have two variables for this loop; d_k is the filter number in the filterbank we are on and d_rate is the rate which we travel through the filters in the steady state. That is, due to the natural clock differences between the transmitter and receiver, d_rate represents that difference and would traverse the filter phase paths to keep the receiver locked. Thinking of this as a second-order PLL, the d_rate is the frequency and d_k is the phase. So we update d_rate and d_k using the standard loop equations based on two error signals, d_alpha and d_beta. We have these two values set based on each other for a critically damped system, so in the block constructor, we just ask for \"gain,\" which is d_alpha while d_beta is equal to (gain^2)/4.

The block's parameters are:








Reference: f. j. harris and M. Rice, \"Multirate Digital Filters for Symbol
Timing Synchronization in Software Defined Radios\", IEEE Selected Areas in Communications, Vol. 19, No. 12, Dec., 2001.

Constructor Specific Documentation:

Build the polyphase filterbank timing synchronizer.

Args:
    sps : (double) The number of samples per second in the incoming signal
    gain : (float) The alpha gain of the control loop; beta = (gain^2)/4 by default.
    taps : (vector<int>) The filter taps.
    filter_size : (uint) The number of filters in the filterbank (default = 32).
    init_phase : (float) The initial phase to look at, or which filter to start with (default = 0).
    max_rate_deviation : (float) Distance from 0 d_rate can get (default = 1.5).
    osps : (int) The number of output samples per symbol (default=1)."

%feature("docstring") gr::digital::pn_correlator_cc "PN code sequential search correlator.

Receives complex baseband signal, outputs complex correlation against reference PN code, one sample per PN code period. The PN sequence is generated using a GLFSR.

Constructor Specific Documentation:

Make PN code sequential search correlator block.

Args:
    degree : Degree of shift register must be in [1, 32]. If mask is 0, the degree determines a default mask (see digital_impl_glfsr.cc for the mapping).
    mask : Allows a user-defined bit mask for indexes of the shift register to feed back.
    seed : Initial setting for values in shift register."

%feature("docstring") gr::digital::pn_correlator_cc::make "PN code sequential search correlator.

Receives complex baseband signal, outputs complex correlation against reference PN code, one sample per PN code period. The PN sequence is generated using a GLFSR.

Constructor Specific Documentation:

Make PN code sequential search correlator block.

Args:
    degree : Degree of shift register must be in [1, 32]. If mask is 0, the degree determines a default mask (see digital_impl_glfsr.cc for the mapping).
    mask : Allows a user-defined bit mask for indexes of the shift register to feed back.
    seed : Initial setting for values in shift register."

%feature("docstring") gr::digital::probe_density_b "This block maintains a running average of the input stream and makes it available as an accessor function. The input stream is type unsigned char.

If you send this block a stream of unpacked bytes, it will tell you what the bit density is.

Constructor Specific Documentation:

Make a density probe block.

Args:
    alpha : Average filter constant"

%feature("docstring") gr::digital::probe_density_b::density "Returns the current density value."

%feature("docstring") gr::digital::probe_density_b::set_alpha "Set the average filter constant."

%feature("docstring") gr::digital::probe_density_b::make "This block maintains a running average of the input stream and makes it available as an accessor function. The input stream is type unsigned char.

If you send this block a stream of unpacked bytes, it will tell you what the bit density is.

Constructor Specific Documentation:

Make a density probe block.

Args:
    alpha : Average filter constant"

%feature("docstring") gr::digital::probe_mpsk_snr_est_c "A probe for computing SNR of a PSK signal.

This is a probe block (a sink) that can be used to monitor and retrieve estimations of the signal SNR. This probe is designed for use with M-PSK signals especially. The type of estimator is specified as the  parameter in the constructor. The estimators tend to trade off performance for accuracy, although experimentation should be done to figure out the right approach for a given implementation. Further, the current set of estimators are designed and proven theoretically under AWGN conditions; some amount of error should be assumed and/or estimated for real channel conditions.

The block has three output message ports that will emit a message every msg_samples number of samples. These message ports are: 
Some calibration is required to convert dBx of the signal and noise power estimates to real measurements, such as dBm.

Constructor Specific Documentation:

Make an MPSK SNR probe.

Parameters:

Args:
    type : the type of estimator to use see gr::digital::snr_est_type_t for details about the types.
    msg_nsamples : [not implemented yet] after this many samples, a message containing the SNR (key='snr') will be sent
    alpha : the update rate of internal running average calculations."

%feature("docstring") gr::digital::probe_mpsk_snr_est_c::snr "Return the estimated signal-to-noise ratio in decibels."

%feature("docstring") gr::digital::probe_mpsk_snr_est_c::signal "Return the estimated signal power in decibels."

%feature("docstring") gr::digital::probe_mpsk_snr_est_c::noise "Return the estimated noise power in decibels."

%feature("docstring") gr::digital::probe_mpsk_snr_est_c::type "Return the type of estimator in use."

%feature("docstring") gr::digital::probe_mpsk_snr_est_c::msg_nsample "Return how many samples between SNR messages."

%feature("docstring") gr::digital::probe_mpsk_snr_est_c::alpha "Get the running-average coefficient."

%feature("docstring") gr::digital::probe_mpsk_snr_est_c::set_type "Set type of estimator to use."

%feature("docstring") gr::digital::probe_mpsk_snr_est_c::set_msg_nsample "Set the number of samples between SNR messages."

%feature("docstring") gr::digital::probe_mpsk_snr_est_c::set_alpha "Set the running-average coefficient."

%feature("docstring") gr::digital::probe_mpsk_snr_est_c::make "A probe for computing SNR of a PSK signal.

This is a probe block (a sink) that can be used to monitor and retrieve estimations of the signal SNR. This probe is designed for use with M-PSK signals especially. The type of estimator is specified as the  parameter in the constructor. The estimators tend to trade off performance for accuracy, although experimentation should be done to figure out the right approach for a given implementation. Further, the current set of estimators are designed and proven theoretically under AWGN conditions; some amount of error should be assumed and/or estimated for real channel conditions.

The block has three output message ports that will emit a message every msg_samples number of samples. These message ports are: 
Some calibration is required to convert dBx of the signal and noise power estimates to real measurements, such as dBm.

Constructor Specific Documentation:

Make an MPSK SNR probe.

Parameters:

Args:
    type : the type of estimator to use see gr::digital::snr_est_type_t for details about the types.
    msg_nsamples : [not implemented yet] after this many samples, a message containing the SNR (key='snr') will be sent
    alpha : the update rate of internal running average calculations."

%feature("docstring") gr::digital::protocol_formatter_async "Uses a header format object to append a header onto a PDU.

This block takes in PDUs and creates a header, generally for MAC-level processing. Each received PDU is assumed to be its own frame, so any fragmentation would be done upstream in or before the flowgraph.

The header that is created and transmitted out of the 'header' message port as a PDU. The header is based entirely on the  object, which is an object derived from the header_format_base class. All of these packet header format objects operate the same: they take in the payload data as well as possible extra metadata info about the PDU; the format object then returns the output PDU as a PMT argument along with any changes to the metadata info PMT.

For different packet header formatting needs, we can define new classes that inherit from the header_format_base block and which overload the header_format_base::format function.




This block only uses asynchronous message passing interfaces to receiver and emit PDUs. The message ports are:

Constructor Specific Documentation:

Make a packet header block using a given .

Args:
    format : The format object to use when creating the header for the packet."

%feature("docstring") gr::digital::protocol_formatter_async::make "Uses a header format object to append a header onto a PDU.

This block takes in PDUs and creates a header, generally for MAC-level processing. Each received PDU is assumed to be its own frame, so any fragmentation would be done upstream in or before the flowgraph.

The header that is created and transmitted out of the 'header' message port as a PDU. The header is based entirely on the  object, which is an object derived from the header_format_base class. All of these packet header format objects operate the same: they take in the payload data as well as possible extra metadata info about the PDU; the format object then returns the output PDU as a PMT argument along with any changes to the metadata info PMT.

For different packet header formatting needs, we can define new classes that inherit from the header_format_base block and which overload the header_format_base::format function.




This block only uses asynchronous message passing interfaces to receiver and emit PDUs. The message ports are:

Constructor Specific Documentation:

Make a packet header block using a given .

Args:
    format : The format object to use when creating the header for the packet."

%feature("docstring") gr::digital::protocol_formatter_bb "Uses a header format object to create a header from a tagged stream packet.

This block takes in tagged stream and creates a header, generally for MAC-level processing. Each received tagged stream is assumed to be its own frame, so any fragmentation would be done upstream in or before the flowgraph.

The header that is created and transmitted from this block. The payload should then be sent as a parallel tagged stream to be muxed together later. The header is based entirely on the  object, which is an object derived from the header_format_base class. All of these packet header format objects operate the same: they take in the payload data as well as possible extra metadata info about the PDU; the format object then returns the output and metadata info. This block then transmits the header vector and attaches and metadata as tags at the start of the header.

Constructor Specific Documentation:

Make a packet header block using a given .

Args:
    format : The format object to use when creating the header for the packet. Derived from the header_format_base class.
    len_tag_key : The tagged stream length key."



%feature("docstring") gr::digital::protocol_formatter_bb::make "Uses a header format object to create a header from a tagged stream packet.

This block takes in tagged stream and creates a header, generally for MAC-level processing. Each received tagged stream is assumed to be its own frame, so any fragmentation would be done upstream in or before the flowgraph.

The header that is created and transmitted from this block. The payload should then be sent as a parallel tagged stream to be muxed together later. The header is based entirely on the  object, which is an object derived from the header_format_base class. All of these packet header format objects operate the same: they take in the payload data as well as possible extra metadata info about the PDU; the format object then returns the output and metadata info. This block then transmits the header vector and attaches and metadata as tags at the start of the header.

Constructor Specific Documentation:

Make a packet header block using a given .

Args:
    format : The format object to use when creating the header for the packet. Derived from the header_format_base class.
    len_tag_key : The tagged stream length key."

%feature("docstring") gr::digital::protocol_parser_b "Block that synchronizes to a header based on a header format object class. Designed to accept hard bits and produce PDUs with packed bytes (pmt::u8vector).

A packet synchronizer block. This block takes in hard bits (unpacked bytes; 1's and 0's as the LSB) and finds the access code as a sync word to find the start of a frame.

The block uses a format object derived from a header_format_base class.

Once the frame is detected (usually through the use of an access code), the block uses the format object's parser function to decode the remaining header. Generally, as in the default header case, the header will contain the length of the frame's payload. That and anything else in the header will generally go into the PDU's meta-data dictionary.

The block will output a PDU that contains frame's header info in the meta-data portion of the PDU and the payload itself. The payload is packed hard bits as taken from the input stream.

Constructor Specific Documentation:

Make a packet header block using a given .

Args:
    format : The format object to use when reading the header."

%feature("docstring") gr::digital::protocol_parser_b::make "Block that synchronizes to a header based on a header format object class. Designed to accept hard bits and produce PDUs with packed bytes (pmt::u8vector).

A packet synchronizer block. This block takes in hard bits (unpacked bytes; 1's and 0's as the LSB) and finds the access code as a sync word to find the start of a frame.

The block uses a format object derived from a header_format_base class.

Once the frame is detected (usually through the use of an access code), the block uses the format object's parser function to decode the remaining header. Generally, as in the default header case, the header will contain the length of the frame's payload. That and anything else in the header will generally go into the PDU's meta-data dictionary.

The block will output a PDU that contains frame's header info in the meta-data portion of the PDU and the payload itself. The payload is packed hard bits as taken from the input stream.

Constructor Specific Documentation:

Make a packet header block using a given .

Args:
    format : The format object to use when reading the header."

%feature("docstring") gr::digital::scrambler_bb "Scramble an input stream using an LFSR.

This block works on the LSB only of the input data stream, i.e., on an \"unpacked binary\" stream, and produces the same format on its output.

Constructor Specific Documentation:

Make a scramber block.

Args:
    mask : Polynomial mask for LFSR
    seed : Initial shift register contents
    len : Shift register length"

%feature("docstring") gr::digital::scrambler_bb::make "Scramble an input stream using an LFSR.

This block works on the LSB only of the input data stream, i.e., on an \"unpacked binary\" stream, and produces the same format on its output.

Constructor Specific Documentation:

Make a scramber block.

Args:
    mask : Polynomial mask for LFSR
    seed : Initial shift register contents
    len : Shift register length"

%feature("docstring") gr::digital::simple_correlator "inverse of simple_framer (more or less)

Constructor Specific Documentation:



Args:
    payload_bytesize : "

%feature("docstring") gr::digital::simple_correlator::make "inverse of simple_framer (more or less)

Constructor Specific Documentation:



Args:
    payload_bytesize : "

%feature("docstring") gr::digital::simple_framer "add sync field, seq number and command field to payload

Takes in enough samples to create a full output frame. The frame is prepended with the GRSF_SYNC (defined in simple_framer_sync.h) and an 8-bit sequence number.

Constructor Specific Documentation:

Make a simple_framer block.

Args:
    payload_bytesize : The size of the payload in bytes."

%feature("docstring") gr::digital::simple_framer::make "add sync field, seq number and command field to payload

Takes in enough samples to create a full output frame. The frame is prepended with the GRSF_SYNC (defined in simple_framer_sync.h) and an 8-bit sequence number.

Constructor Specific Documentation:

Make a simple_framer block.

Args:
    payload_bytesize : The size of the payload in bytes."

%feature("docstring") gr::digital::symbol_sync_cc "Symbol Synchronizer block with complex input, complex output.

This implements a discrete-time error-tracking synchronizer.

For this block to work properly, the input stream must meet the following requirements:

Constructor Specific Documentation:

Make a Symbol Synchronizer block.

This implements a discrete-time error-tracking synchronizer.

For this block to work properly, the input stream must meet the following requirements:

Args:
    detector_type : The enumerated type of timing error detector to use. See enum ted_type for a list of possible types.
    sps : User specified nominal clock period in samples per symbol.
    loop_bw : Approximate normailzed loop bandwidth of the symbol clock tracking loop. It should nominally be close to 0, but greater than 0. If unsure, start with a number around 2*pi*0.040, and experiment to find the value that works best for your situation.
    damping_factor : Damping factor of the symbol clock tracking loop. Damping < 1.0f is an under-damped loop. Damping = 1.0f/sqrt(2.0f) is a maximally flat loop response. Damping = 1.0f is a critically-damped loop. Damping > 1.0f is an over-damped loop.
    ted_gain : Expected gain of the timing error detector, given the TED in use and the anticipated input amplitude, pulse shape, and Es/No. This value is the slope of the TED's S-curve at timing offset tau = 0. This value is normally computed by the user analytically or by simulation in a tool outside of GNURadio. This value must be correct for the loop filter gains to be computed properly from the desired input loop bandwidth and damping factor.
    max_deviation : Maximum absolute deviation of the average clock period estimate from the user specified nominal clock period in samples per symbol.
    osps : The number of output samples per symbol (default=1).
    slicer : A constellation obj shared pointer that will be used by decision directed timing error detectors to make decisions. I.e. the timing error detector will use this constellation as a slicer, if the particular algorithm needs sliced symbols.
    interp_type : The enumerated type of interpolating resampler to use. See the interpolating resampler type enum for a list of possible types.
    n_filters : The number of arms in the polyphase filterbank of the interpolating resampler, if using an interpolating resampler that uses a PFB.
    taps : The prototype filter for the polyphase filterbank of the interpolating resampler, if using an interpolating resampler that uses a PFB."

%feature("docstring") gr::digital::symbol_sync_cc::loop_bandwidth "Returns the normalized approximate loop bandwidth.

See the documentation for set_loop_bandwidth() for more details.

Note that if set_alpha() or set_beta() were called to directly set gains, the value returned by this method will be inaccurate/stale."

%feature("docstring") gr::digital::symbol_sync_cc::damping_factor "Returns the loop damping factor.

See the documentation for set_damping_factor() for more details.

Note that if set_alpha() or set_beta() were called to directly set gains, the value returned by this method will be inaccurate/stale."

%feature("docstring") gr::digital::symbol_sync_cc::ted_gain "Returns the user provided expected gain of the Timing Error Detector.

See the documentation for set_ted_gain() for more details."

%feature("docstring") gr::digital::symbol_sync_cc::alpha "Returns the PI filter proportional gain, alpha.

See the documentation for set_alpha() for more details."

%feature("docstring") gr::digital::symbol_sync_cc::beta "Returns the PI filter integral gain, beta.

See the documentation for set_beta() for more details."

%feature("docstring") gr::digital::symbol_sync_cc::set_loop_bandwidth "Set the normalized approximate loop bandwidth.

Set the normalized approximate loop bandwidth. Useful values are usually close to 0.0, e.g. 2*pi*0.045.

It should be a small positive number, corresponding to the normalized natural radian frequency of the loop as digital low-pass filter that is filtering the clock phase/timing error.

Technically this parameter corresponds to the natural radian frequency of the 2nd order loop transfer function (scaled by Fs), which is the radius of the pole locations in the s-plane of an underdamped analog 2nd order system.

The input parameter corresponds to omega_n_norm in the following relation: 

where T is the period of the clock being estimated by this clock tracking loop, and omega_n is the natural radian frequency of the 2nd order loop transfer function.

When a new loop bandwidth is set, the gains, alpha and beta, of the loop are automatically recalculated."

%feature("docstring") gr::digital::symbol_sync_cc::set_damping_factor "Set the loop damping factor.

Set the damping factor of the loop. Damping in the range (0.0, 1.0) yields an under-damped loop. Damping in the range (1.0, Inf) yields an over-damped loop. Damping equal to 1.0 yields a crtically-damped loop. Damping equal to 1.0/sqrt(2.0) yields a maximally flat loop filter response.

Damping factor of the 2nd order loop transfer function. When a new damping factor is set, the gains, alpha and beta, of the loop are automatcally recalculated."

%feature("docstring") gr::digital::symbol_sync_cc::set_ted_gain "Set the expected gain of the Timing Error Detector.

Sets the expected gain of the timing error detector, given the TED in use and the anticipated input amplitude, pulse shape, and Es/No. This value is the slope of the TED's S-curve at timing offset tau = 0. This value is normally computed by the user analytically or by simulation in a tool outside of GNURadio. This value must be correct for the loop filter gains to be computed properly from the desired input loop bandwidth and damping factor.

When a new ted_gain is set, the gains, alpha and beta, of the loop are automatcally recalculated."

%feature("docstring") gr::digital::symbol_sync_cc::set_alpha "Set the PI filter proportional gain, alpha.

Sets the PI filter proportional gain, alpha. This gain directly mutliplies the clock phase/timing error term in the PI filter when advancing the loop. It most directly affects the instantaneous clock period estimate, T_inst, and instantaneous clock phase estimate, tau.

This value would normally be adjusted by setting the loop bandwidth and damping factor. However, it can be set here directly if desired.

Setting this parameter directly is probably only feasible if the user is directly observing the estimates of average clock period and instantaneous clock period over time in response to an impulsive change in the input stream (i.e. watching the loop transient behavior at the start of a data burst)."

%feature("docstring") gr::digital::symbol_sync_cc::set_beta "Set the PI filter integral gain, beta.

Sets the PI filter integral gain, beta. This gain is used when integrating the clock phase/timing error term in the PI filter when advancing the loop. It most directly affects the average clock period estimate, T_avg.

This value would normally be adjusted by setting the loop bandwidth and damping factor. However, it can be set here directly if desired.

Setting this parameter directly is probably only feasible if the user is directly observing the estimates of average clock period and instantaneous clock period over time in response to an impulsive change in the input stream (i.e. watching the loop transient behavior at the start of a data burst)."

%feature("docstring") gr::digital::symbol_sync_cc::make "Symbol Synchronizer block with complex input, complex output.

This implements a discrete-time error-tracking synchronizer.

For this block to work properly, the input stream must meet the following requirements:

Constructor Specific Documentation:

Make a Symbol Synchronizer block.

This implements a discrete-time error-tracking synchronizer.

For this block to work properly, the input stream must meet the following requirements:

Args:
    detector_type : The enumerated type of timing error detector to use. See enum ted_type for a list of possible types.
    sps : User specified nominal clock period in samples per symbol.
    loop_bw : Approximate normailzed loop bandwidth of the symbol clock tracking loop. It should nominally be close to 0, but greater than 0. If unsure, start with a number around 2*pi*0.040, and experiment to find the value that works best for your situation.
    damping_factor : Damping factor of the symbol clock tracking loop. Damping < 1.0f is an under-damped loop. Damping = 1.0f/sqrt(2.0f) is a maximally flat loop response. Damping = 1.0f is a critically-damped loop. Damping > 1.0f is an over-damped loop.
    ted_gain : Expected gain of the timing error detector, given the TED in use and the anticipated input amplitude, pulse shape, and Es/No. This value is the slope of the TED's S-curve at timing offset tau = 0. This value is normally computed by the user analytically or by simulation in a tool outside of GNURadio. This value must be correct for the loop filter gains to be computed properly from the desired input loop bandwidth and damping factor.
    max_deviation : Maximum absolute deviation of the average clock period estimate from the user specified nominal clock period in samples per symbol.
    osps : The number of output samples per symbol (default=1).
    slicer : A constellation obj shared pointer that will be used by decision directed timing error detectors to make decisions. I.e. the timing error detector will use this constellation as a slicer, if the particular algorithm needs sliced symbols.
    interp_type : The enumerated type of interpolating resampler to use. See the interpolating resampler type enum for a list of possible types.
    n_filters : The number of arms in the polyphase filterbank of the interpolating resampler, if using an interpolating resampler that uses a PFB.
    taps : The prototype filter for the polyphase filterbank of the interpolating resampler, if using an interpolating resampler that uses a PFB."

%feature("docstring") gr::digital::symbol_sync_ff "Symbol Synchronizer block with float input, float output.

This implements a discrete-time error-tracking synchronizer.

For this block to work properly, the input stream must meet the following requirements:

Constructor Specific Documentation:

Make a Symbol Synchronizer block.

This implements a discrete-time error-tracking synchronizer.

For this block to work properly, the input stream must meet the following requirements:

Args:
    detector_type : The enumerated type of timing error detector to use. See enum ted_type for a list of possible types.
    sps : User specified nominal clock period in samples per symbol.
    loop_bw : Approximate normailzed loop bandwidth of the symbol clock tracking loop. It should nominally be close to 0, but greater than 0. If unsure, start with a number around 2*pi*0.040, and experiment to find the value that works best for your situation.
    damping_factor : Damping factor of the symbol clock tracking loop. Damping < 1.0f is an under-damped loop. Damping = 1.0f/sqrt(2.0f) is a maximally flat loop response. Damping = 1.0f is a critically-damped loop. Damping > 1.0f is an over-damped loop.
    ted_gain : Expected gain of the timing error detector, given the TED in use and the anticipated input amplitude, pulse shape, and Es/No. This value is the slope of the TED's S-curve at timing offset tau = 0. This value is normally computed by the user analytically or by simulation in a tool outside of GNURadio. This value must be correct for the loop filter gains to be computed properly from the desired input loop bandwidth and damping factor.
    max_deviation : Maximum absolute deviation of the average clock period estimate from the user specified nominal clock period in samples per symbol.
    osps : The number of output samples per symbol (default=1).
    slicer : A constellation obj shared pointer that will be used by decision directed timing error detectors to make decisions. I.e. the timing error detector will use this constellation as a slicer, if the particular algorithm needs sliced symbols.
    interp_type : The enumerated type of interpolating resampler to use. See the interpolating resampler type enum for a list of possible types.
    n_filters : The number of arms in the polyphase filterbank of the interpolating resampler, if using an interpolating resampler that uses a PFB.
    taps : The prototype filter for the polyphase filterbank of the interpolating resampler, if using an interpolating resampler that uses a PFB."

%feature("docstring") gr::digital::symbol_sync_ff::loop_bandwidth "Returns the normalized approximate loop bandwidth.

See the documentation for set_loop_bandwidth() for more details.

Note that if set_alpha() or set_beta() were called to directly set gains, the value returned by this method will be inaccurate/stale."

%feature("docstring") gr::digital::symbol_sync_ff::damping_factor "Returns the loop damping factor.

See the documentation for set_damping_factor() for more details.

Note that if set_alpha() or set_beta() were called to directly set gains, the value returned by this method will be inaccurate/stale."

%feature("docstring") gr::digital::symbol_sync_ff::ted_gain "Returns the user provided expected gain of the Timing Error Detector.

See the documentation for set_ted_gain() for more details."

%feature("docstring") gr::digital::symbol_sync_ff::alpha "Returns the PI filter proportional gain, alpha.

See the documentation for set_alpha() for more details."

%feature("docstring") gr::digital::symbol_sync_ff::beta "Returns the PI filter integral gain, beta.

See the documentation for set_beta() for more details."

%feature("docstring") gr::digital::symbol_sync_ff::set_loop_bandwidth "Set the normalized approximate loop bandwidth.

Set the normalized approximate loop bandwidth. Useful values are usually close to 0.0, e.g. 2*pi*0.045.

It should be a small positive number, corresponding to the normalized natural radian frequency of the loop as digital low-pass filter that is filtering the clock phase/timing error.

Technically this parameter corresponds to the natural radian frequency of the 2nd order loop transfer function (scaled by Fs), which is the radius of the pole locations in the s-plane of an underdamped analog 2nd order system.

The input parameter corresponds to omega_n_norm in the following relation: 

where T is the period of the clock being estimated by this clock tracking loop, and omega_n is the natural radian frequency of the 2nd order loop transfer function.

When a new loop bandwidth is set, the gains, alpha and beta, of the loop are automatically recalculated."

%feature("docstring") gr::digital::symbol_sync_ff::set_damping_factor "Set the loop damping factor.

Set the damping factor of the loop. Damping in the range (0.0, 1.0) yields an under-damped loop. Damping in the range (1.0, Inf) yields an over-damped loop. Damping equal to 1.0 yields a crtically-damped loop. Damping equal to 1.0/sqrt(2.0) yields a maximally flat loop filter response.

Damping factor of the 2nd order loop transfer function. When a new damping factor is set, the gains, alpha and beta, of the loop are automatcally recalculated."

%feature("docstring") gr::digital::symbol_sync_ff::set_ted_gain "Set the expected gain of the Timing Error Detector.

Sets the expected gain of the timing error detector, given the TED in use and the anticipated input amplitude, pulse shape, and Es/No. This value is the slope of the TED's S-curve at timing offset tau = 0. This value is normally computed by the user analytically or by simulation in a tool outside of GNURadio. This value must be correct for the loop filter gains to be computed properly from the desired input loop bandwidth and damping factor.

When a new ted_gain is set, the gains, alpha and beta, of the loop are automatcally recalculated."

%feature("docstring") gr::digital::symbol_sync_ff::set_alpha "Set the PI filter proportional gain, alpha.

Sets the PI filter proportional gain, alpha. This gain directly mutliplies the clock phase/timing error term in the PI filter when advancing the loop. It most directly affects the instantaneous clock period estimate, T_inst, and instantaneous clock phase estimate, tau.

This value would normally be adjusted by setting the loop bandwidth and damping factor. However, it can be set here directly if desired.

Setting this parameter directly is probably only feasible if the user is directly observing the estimates of average clock period and instantaneous clock period over time in response to an impulsive change in the input stream (i.e. watching the loop transient behavior at the start of a data burst)."

%feature("docstring") gr::digital::symbol_sync_ff::set_beta "Set the PI filter integral gain, beta.

Sets the PI filter integral gain, beta. This gain is used when integrating the clock phase/timing error term in the PI filter when advancing the loop. It most directly affects the average clock period estimate, T_avg.

This value would normally be adjusted by setting the loop bandwidth and damping factor. However, it can be set here directly if desired.

Setting this parameter directly is probably only feasible if the user is directly observing the estimates of average clock period and instantaneous clock period over time in response to an impulsive change in the input stream (i.e. watching the loop transient behavior at the start of a data burst)."

%feature("docstring") gr::digital::symbol_sync_ff::make "Symbol Synchronizer block with float input, float output.

This implements a discrete-time error-tracking synchronizer.

For this block to work properly, the input stream must meet the following requirements:

Constructor Specific Documentation:

Make a Symbol Synchronizer block.

This implements a discrete-time error-tracking synchronizer.

For this block to work properly, the input stream must meet the following requirements:

Args:
    detector_type : The enumerated type of timing error detector to use. See enum ted_type for a list of possible types.
    sps : User specified nominal clock period in samples per symbol.
    loop_bw : Approximate normailzed loop bandwidth of the symbol clock tracking loop. It should nominally be close to 0, but greater than 0. If unsure, start with a number around 2*pi*0.040, and experiment to find the value that works best for your situation.
    damping_factor : Damping factor of the symbol clock tracking loop. Damping < 1.0f is an under-damped loop. Damping = 1.0f/sqrt(2.0f) is a maximally flat loop response. Damping = 1.0f is a critically-damped loop. Damping > 1.0f is an over-damped loop.
    ted_gain : Expected gain of the timing error detector, given the TED in use and the anticipated input amplitude, pulse shape, and Es/No. This value is the slope of the TED's S-curve at timing offset tau = 0. This value is normally computed by the user analytically or by simulation in a tool outside of GNURadio. This value must be correct for the loop filter gains to be computed properly from the desired input loop bandwidth and damping factor.
    max_deviation : Maximum absolute deviation of the average clock period estimate from the user specified nominal clock period in samples per symbol.
    osps : The number of output samples per symbol (default=1).
    slicer : A constellation obj shared pointer that will be used by decision directed timing error detectors to make decisions. I.e. the timing error detector will use this constellation as a slicer, if the particular algorithm needs sliced symbols.
    interp_type : The enumerated type of interpolating resampler to use. See the interpolating resampler type enum for a list of possible types.
    n_filters : The number of arms in the polyphase filterbank of the interpolating resampler, if using an interpolating resampler that uses a PFB.
    taps : The prototype filter for the polyphase filterbank of the interpolating resampler, if using an interpolating resampler that uses a PFB."

%feature("docstring") update_crc32 "update running CRC-32

Update a running CRC with the bytes buf[0..len-1] The CRC should be initialized to all 1's, and the transmitted value is the 1's complement of the final running CRC. The resulting CRC should be transmitted in big endian order."



%feature("docstring") modulate_vector_bc "Modulate a vector of data and apply a shaping filter.

Pointer to a byte-to-complex modulator block.  Vector of bytes to modulate into symbols.  Post-modulation symbol shaping filter taps.

This function modulates the input vector and applies a symbol shaping filter. It is intended for use with the corr_est_cc block as the symbol stream to correlate against.

Any differential encoding or other data coding must be performed on the input vector before this modulation operation.

Be aware that the format of the incoming data must match the format the modulator block is expecting. GNURadio modulator blocks are inconsistent in their data type expectations. For instance, cpmmod_bc expects unpacked, signed bytes in (-1, 1), while gmsk_mod expects packed, unsigned bytes in (0, 1). In other words, the output of gmsk_mod given the input vector [0xaa, 0x00] is equivalent to the output of cpmmod_bc given the input vector [1,255,1,255,1,255,1,255,255,255,255,255,255,255,255,255]

Please check the documentation or source of the modulator before using this function."

%feature("docstring") gr::digital::constellation "An abstracted constellation object.

The constellation objects hold the necessary information to pass around constellation information for modulators and demodulators. These objects contain the mapping between the bits and the constellation points used to represent them as well as methods for slicing the symbol space. Various implementations are possible for efficiency and ease of use.

Standard constellations (BPSK, QPSK, QAM, etc) can be inherited from this class and overloaded to perform optimized slicing and constellation mappings."





%feature("docstring") gr::digital::constellation::map_to_points "Returns the constellation points for a symbol value."



%feature("docstring") gr::digital::constellation::decision_maker "Returns the constellation point that matches best."

%feature("docstring") gr::digital::constellation::decision_maker_v "Takes a vector rather than a pointer. Better for SWIG wrapping."

%feature("docstring") gr::digital::constellation::decision_maker_pe "Also calculates the phase error."

%feature("docstring") gr::digital::constellation::calc_metric "Calculates distance.

Calculates metrics for all points in the constellation. For use with the viterbi algorithm."





%feature("docstring") gr::digital::constellation::points "Returns the set of points in this constellation."

%feature("docstring") gr::digital::constellation::s_points "Returns the vector of points in this constellation. Raise error if dimensionality is not one."

%feature("docstring") gr::digital::constellation::v_points "Returns a vector of vectors of points."

%feature("docstring") gr::digital::constellation::apply_pre_diff_code "Whether to apply an encoding before doing differential encoding. (e.g. gray coding)"

%feature("docstring") gr::digital::constellation::set_pre_diff_code "Whether to apply an encoding before doing differential encoding. (e.g. gray coding)"

%feature("docstring") gr::digital::constellation::pre_diff_code "Returns the encoding to apply before differential encoding."

%feature("docstring") gr::digital::constellation::rotational_symmetry "Returns the order of rotational symmetry."

%feature("docstring") gr::digital::constellation::dimensionality "Returns the number of complex numbers in a single symbol."









%feature("docstring") gr::digital::constellation::gen_soft_dec_lut "Generates the soft decision LUT based on constellation and symbol map.

Generates the soft decision LUT based on constellation and symbol map. It can be given a estimate of the noise power in the channel as .


This is expensive to compute."

%feature("docstring") gr::digital::constellation::calc_soft_dec "Calculate soft decisions for the given .

Calculate the soft decisions from the given  at the given noise power .

This is a very costly algorithm (especially for higher order modulations) and should be used sparingly. It uses the gen_soft_dec_lut function to generate the LUT, which should be done once or if a large change in the noise floor is detected.

Instead of using this function, generate the LUT using the gen_soft_dec_lut after creating the constellation object and then use the soft_decision_maker function to return the answer from the LUT."

%feature("docstring") gr::digital::constellation::set_soft_dec_lut "Define a soft decision look-up table.

Define a soft decision look-up table (LUT). Because soft decisions can be calculated in various ways with various levels of accuracy and complexity, this function allows users to create a LUT in their own way.

Setting the LUT here means that has_soft_dec_lut will return true. Decision vectors returned by soft_decision_maker will be calculated using this LUT."

%feature("docstring") gr::digital::constellation::has_soft_dec_lut "Returns True if the soft decision LUT has been defined, False otherwise."



%feature("docstring") gr::digital::constellation::soft_decision_maker "Returns the soft decisions for the given .

Returns the soft decisions for the given . If a LUT is defined for the object, the decisions will be calculated from there. Otherwise, this function will call calc_soft_dec directly to calculate the soft decisions."









%feature("docstring") gr::digital::constellation_sector "Sectorized digital constellation.

constellation_sector

Constellation space is divided into sectors. Each sector is associated with the nearest constellation point."

%feature("docstring") gr::digital::constellation_sector::constellation_sector "Make a sectorized constellation object."



%feature("docstring") gr::digital::constellation_sector::decision_maker "Returns the constellation point that matches best."







%feature("docstring") gr::digital::glfsr "Galois Linear Feedback Shift Register using specified polynomial mask.

Generates a maximal length pseudo-random sequence of length 2^degree-1"











%feature("docstring") gr::digital::header_buffer "Helper class for handling payload headers.

This class is used by the header format blocks (e.g., digital::header_format_default) to make it easier to deal with payload headers. This class functions in two different ways depending on if it is used in a transmitter or receiver. When used in a transmitter, this class helps us build headers out of the fields of the protocol. When used in a receiver, this class helps us parse the received bits into the protocol's fields.

This page describes how to work with the different modes, transmit or receive. The class is instructed as to which mode it is in by how the constructor is called. If the constructor is passed a valid array (non NULL), then it is in transmit mode and will pack this buffer with the header fields. If that buffer is NULL, the object is in receive mode.


Transmit Mode
When passed a valid buffer in the constructor, this object is in transmit mode. We can then use the add_field[N] functions to add new fields to this header. The buffer MUST be large enough to hold the full header. As this class is meant to work mostly with the digital::header_format_default and child classes, the header length can be read from digital::header_format_default::header_nbytes().

Each field is a specific length of 8, 16, 32, or 64 bits that are to be transmitted in network byte order. We can adjust the direction of the bytes by setting the byte-swap flag, , to true or false.

The length argument () for all add_field[N] calls is the number of bytes actually accounted for in the data structure. Often, we would use the full size of the field, which is sizeof(dtype), and the add_field[N] call defaults to len=N. Occasionally, we may need to use fewer bytes than actually represented by the data type. An example would be the access code used in the header_format_default, which is a uint64_t type but may have fewer bytes used in the actual access code.

The function that calls this class is expected to handle the memory handling of the buffer  both allocating and deallocating.

As simple example of using this class in transmit mode:



In this example, the header contains four fields:



The sync word can be up to 64-bits, but the add_field64 is also passed the number of actual bytes in the sync word and so could be fewer.



Receive Mode
In receive mode, we build up the header as bits are received by inserting them with insert_bit. We can find out how long the current header is, in bits, using the call to length(). If the header is of the appropriate length, we can then start extracting the fields from it. When we are done with the current header, call clear() to reset the internal buffer to empty, which will mean that length() returns 0.

The header fields are extracted using the extract_field[N] functions. Like the add_field[N] functions, we specify the size (in bits) of the field we are extracting. We pass this function the bit-position of the expected field in the received header buffer. The extract_field[N] assumes that the number of bits for the field is N, but we can tell the function to use fewer bits if we want. Setting the length parameter of these functions greater than N is illegal, and it will throw an error.

For example, given a header of | length | seq. num. | where the length is 16 bits and the sequence number is 32 bits, we would use:



The extract_field functions are specific to data types of the field and the number of bits for each field is inferred by the data type. So extract_field16 assumes we want all 16 bits in the field represented.

Some headers have fields that are not standard sizes of integers, like a 1 bit, 4 bit, or even 12 bit fields. We can ask for fewer bits for each field. say:



We would use the following extraction functions:"

%feature("docstring") gr::digital::header_buffer::header_buffer "Create a header buffer object with a pre-allocated buffer, , to hold the formatted header data.

If  is set to NULL, then this object is in receive mode meant to receive bits from an incoming data stream and provide the ability to extract fields. In this mode, calls to add_field are invalid and will be nops."

%feature("docstring") gr::digital::header_buffer::~header_buffer "Class destructor."

%feature("docstring") gr::digital::header_buffer::clear "Clears the header.

In transmit mode, this resets the current offset so new add_field functions start adding data to the start of the buffer.

In receive mode, this clears the buffer that we have inserted bits in to."

%feature("docstring") gr::digital::header_buffer::length "In transmit mode, this returns the length of the data in the buffer (not the allocated buffer length).

In receiving mode, this returns the current length in bits of the received header."

%feature("docstring") gr::digital::header_buffer::header "Returns a constant pointer to the buffer."

%feature("docstring") gr::digital::header_buffer::add_field8 "Add an 8-bit field to the header."

%feature("docstring") gr::digital::header_buffer::add_field16 "Add an 16-bit field to the header."

%feature("docstring") gr::digital::header_buffer::add_field32 "Add an 32-bit field to the header."

%feature("docstring") gr::digital::header_buffer::add_field64 "Add an 64-bit field to the header."

%feature("docstring") gr::digital::header_buffer::insert_bit "Insert a new bit on the back of the input buffer. This function is used in receive mode to add new bits as they are received for later use of the extract_field functions."

%feature("docstring") gr::digital::header_buffer::extract_field8 "Returns up to an 8-bit field in the packet header."

%feature("docstring") gr::digital::header_buffer::extract_field16 "Returns up to a 16-bit field in the packet header."

%feature("docstring") gr::digital::header_buffer::extract_field32 "Returns up to a 32-bit field in the packet header."

%feature("docstring") gr::digital::header_buffer::extract_field64 "Returns up to a 64-bit field in the packet header."

%feature("docstring") gr::digital::header_format_base "Base header formatter class.

Creates a base class that other packet formatters will inherit from. The child classes create and parse protocol-specific headers. To add a new protocol processing class, create a class that inherits from this and overload the necessary functions. The main functions to overload are:






Protected functions of this class that the child class should overload include:


These three function represent the different states of the parsing state machine. Expected behavior is that the protocol has some known word that we are first looking for the identify the start of the frame. The parsing FSM starts in a state to search for the beginning of the header, normally by looking for a known word (i.e., the access code). Then it changes state to read in the full header. We expect that the protocol provides the length of the header for processing, so the parsing looks pulls in the full length of the header. Then it changes state to the \"have header\" state for checking and processing. The base class provides the basic functionality for this state machine. However, most likely, each child class must manage these states for themselves.

This class is specifically designed to work with packets/frames in the asynchronous PDU architecture of GNU Radio. See the packet_format_async block for formatting the headers onto payloads and packet_parse_b block for parsing headers in a receiver.

The Packet Format block takes in a PDU and uses a formatter class derived from this class to add a header onto the packet. The Packet Format blocks takes in the PDU, unpacks the message, and passes it to a formatter class' format function, which builds a header based on the payload. The header is passed back and emitted from formatter block as a separate output. The async format block, packet_format_async, has two message output ports. The 'header' port passes the header out as a PDU and the 'payload' passes the payload out as a PDU. The flowgraph can then separately modulate and combine these two pieces in the follow-on processing.

The packet_sync_b block uses the formatter class by calling the 'parse' function to parse the received packet headers. This parser block is a sink for the data stream and emits a message from an 'info' port that contains an PMT dictionary of the information in the header. The formatter class determines the dictionary keys.

This is the base class for dealing with formatting headers for different protocols and purposes. For other header formatting behaviors, create a child class from here and overload the format, parse, and parsing state machine functions as necessary."









%feature("docstring") gr::digital::header_format_base::format "Function to creates a header. The child classes overload this function to format the header in the protocol-specific way.


MUST be overloaded."

%feature("docstring") gr::digital::header_format_base::parse "Parses a header. This function is overloaded in the child class, which knows how to convert the incoming hard bits (0's and 1's) back into a packet header.


MUST be overloaded."

%feature("docstring") gr::digital::header_format_base::header_nbits "Returns the length of the formatted header in bits. MUST be overloaded."

%feature("docstring") gr::digital::header_format_base::header_nbytes "Returns the length of the formatted header in bytes. Auto-calculated from the overloaded header_nbits()."

%feature("docstring") gr::digital::header_format_base::enter_search "Enter Search state of the state machine to find the access code."

%feature("docstring") gr::digital::header_format_base::enter_have_sync "Access code found, start getting the header."

%feature("docstring") gr::digital::header_format_base::enter_have_header "Header found, setup for pulling in the hard decision bits."

%feature("docstring") gr::digital::header_format_base::header_ok "Verify that the header is valid."

%feature("docstring") gr::digital::header_format_base::header_payload "Get info from the header; return payload length and package rest of data in d_info dictionary."

%feature("docstring") gr::digital::header_format_counter "Header formatter that adds the payload bits/symbol format and a packet number counter.

Child class of header_format_default. This version adds two fields to the header:


Like the default packet formatter, the length is encoded as a 16-bit value repeated twice. The full packet looks like: 

Where the access code is <= 64 bits and hdr is: 

The access code and header are formatted for network byte order."





%feature("docstring") gr::digital::header_format_counter::format "Creates a header from the access code and packet length to build an output packet in the form:"

%feature("docstring") gr::digital::header_format_counter::header_nbits "Returns the length of the formatted header in bits."

%feature("docstring") gr::digital::header_format_counter::make "Factory to create an async packet header formatter; returns an sptr to the object."

%feature("docstring") gr::digital::header_format_counter::header_ok "Verify that the header is valid."

%feature("docstring") gr::digital::header_format_counter::header_payload "Get info from the header; return payload length and package rest of data in d_info dictionary.

Extracts the header of the form:"

%feature("docstring") gr::digital::header_format_crc "Header formatter that includes the payload length, packet number, and a CRC check on the header.

Child class of header_format_base. This version's header format looks like:


Instead of duplicating the payload length, we only add it once and use the CRC8 to make sure it's correctly received.



Reimplements packet_header_default in the style of the header_format_base."







%feature("docstring") gr::digital::header_format_crc::format "Encodes the header information in the given tags into bits and places them into .

Uses the following header format:"

%feature("docstring") gr::digital::header_format_crc::parse "Parses a header. This function is overloaded in the child class, which knows how to convert the incoming hard bits (0's and 1's) back into a packet header.


MUST be overloaded."

%feature("docstring") gr::digital::header_format_crc::header_nbits "Returns the length of the formatted header in bits."

%feature("docstring") gr::digital::header_format_crc::make "Factory to create an async packet header formatter; returns an sptr to the object."

%feature("docstring") gr::digital::header_format_crc::header_ok "Verify that the header is valid."

%feature("docstring") gr::digital::header_format_crc::header_payload "Get info from the header; return payload length and package rest of data in d_info dictionary."

%feature("docstring") gr::digital::header_format_default "Default header formatter for PDU formatting.

Used to handle the default packet header.

See the parent class header_format_base for details of how these classes operate.

The default header created in this base class consists of an access code and the packet length. The length is encoded as a 16-bit value repeated twice:



Where the access code is <= 64 bits and hdr is:



The access code and header are formatted for network byte order.

This header generator does not calculate or append a CRC to the packet. Use the CRC32 Async block for that before adding the header. The header's length will then measure the payload plus the CRC length (4 bytes for a CRC32).

The default header parser produces a PMT dictionary that contains the following keys. All formatter blocks MUST produce these two values in any dictionary."





%feature("docstring") gr::digital::header_format_default::format "Creates a header from the access code and packet length and creates an output header as a PMT vector in the form:"

%feature("docstring") gr::digital::header_format_default::parse "Parses a header of the form:



This is implemented as a state machine that starts off searching for the access code. Once found, the access code is used to find the start of the packet and the following header. This default header encodes the length of the payload a 16 bit integer twice. The state machine finds the header and checks that both payload length values are the same. It then goes into its final state that reads in the payload (based on the payload length) and produces a payload as a PMT u8 vector of packed bytes."

%feature("docstring") gr::digital::header_format_default::header_nbits "Returns the length of the formatted header in bits."

%feature("docstring") gr::digital::header_format_default::set_access_code "Updates the access code. Must be a string of 1's and 0's and <= 64 bits."

%feature("docstring") gr::digital::header_format_default::access_code "Returns the formatted access code as a 64-bit register."

%feature("docstring") gr::digital::header_format_default::set_threshold "Sets the threshold for number of access code bits can be in error before detection. Defaults to 0."

%feature("docstring") gr::digital::header_format_default::threshold "Returns threshold value for access code detection."

%feature("docstring") gr::digital::header_format_default::make "Factory to create an async packet header formatter; returns an sptr to the object."

%feature("docstring") gr::digital::header_format_default::enter_have_sync "Access code found, start getting the header."

%feature("docstring") gr::digital::header_format_default::enter_have_header "Header found, setup for pulling in the hard decision bits."

%feature("docstring") gr::digital::header_format_default::header_ok "Verify that the header is valid."

%feature("docstring") gr::digital::header_format_default::header_payload "Get info from the header; return payload length and package rest of data in d_info dictionary."

%feature("docstring") gr::digital::header_format_ofdm "Header formatter that includes the payload length, packet number, and a CRC check on the header.

Child class of header_format_base. This version's header format looks like:


Instead of duplicating the payload length, we only add it once and use the CRC8 to make sure it's correctly received.



Reimplements packet_header_default in the style of the header_format_base."





%feature("docstring") gr::digital::header_format_ofdm::format "Encodes the header information in the given tags into bits and places them into .

Uses the following header format:"

%feature("docstring") gr::digital::header_format_ofdm::parse "Parses a header. This function is overloaded in the child class, which knows how to convert the incoming hard bits (0's and 1's) back into a packet header.


MUST be overloaded."

%feature("docstring") gr::digital::header_format_ofdm::header_nbits "Returns the length of the formatted header in bits."

%feature("docstring") gr::digital::header_format_ofdm::make "Factory to create an async packet header formatter; returns an sptr to the object."

%feature("docstring") gr::digital::header_format_ofdm::header_payload "Get info from the header; return payload length and package rest of data in d_info dictionary."

%feature("docstring") gr::digital::lfsr "Fibonacci Linear Feedback Shift Register using specified polynomial mask.

Generates a maximal length pseudo-random sequence of length 2^degree-1

Constructor: digital::lfsr(int mask, int seed, int reg_len);


Some common masks might be: x^4 + x^3 + x^0 = 0x19 x^5 + x^3 + x^0 = 0x29 x^6 + x^5 + x^0 = 0x61


see  for more explanation.

next_bit() - Standard LFSR operation 

next_bit_scramble(unsigned char input) - Scramble an input stream 

next_bit_descramble(unsigned char input) - Descramble an input stream 

See  for operation of these last two functions (see multiplicative scrambler.)

Args:
    mask : - polynomial coefficients representing the locations of feedback taps from a shift register which are xor'ed together to form the new high order bit.
    seed : - the initialization vector placed into the register during initialization. Low order bit corresponds to x^0 coefficient  the first to be shifted as output.
    reg_len : - specifies the length of the feedback shift register to be used. During each iteration, the register is rightshifted one and the new bit is placed in bit reg_len. reg_len should generally be at least order(mask) + 1"











%feature("docstring") gr::digital::lfsr::reset "Reset shift register to initial seed value"

%feature("docstring") gr::digital::lfsr::pre_shift "Rotate the register through x number of bits where we are just throwing away the results to get queued up correctly"



%feature("docstring") gr::digital::mpsk_snr_est "A parent class for SNR estimators, specifically for M-PSK signals in AWGN channels."

%feature("docstring") gr::digital::mpsk_snr_est::mpsk_snr_est "Constructor

Parameters:"



%feature("docstring") gr::digital::mpsk_snr_est::alpha "Get the running-average coefficient."

%feature("docstring") gr::digital::mpsk_snr_est::set_alpha "Set the running-average coefficient."

%feature("docstring") gr::digital::mpsk_snr_est::update "Update the current registers."

%feature("docstring") gr::digital::mpsk_snr_est::snr "Use the register values to compute a new estimate."

%feature("docstring") gr::digital::mpsk_snr_est::signal "Returns the signal power estimate."

%feature("docstring") gr::digital::mpsk_snr_est::noise "Returns the noise power estimate."

%feature("docstring") gr::digital::mpsk_snr_est_m2m4 "SNR Estimator using 2nd and 4th-order moments.

An SNR estimator for M-PSK signals that uses 2nd (M2) and 4th (M4) order moments. This estimator uses knowledge of the kurtosis of the signal (  and noise ( ) to make its estimation. We use Beaulieu's approximations here to M-PSK signals and AWGN channels such that  and . These approximations significantly reduce the complexity of the calculations (and computations) required.

Reference: D. R. Pauluzzi and N. C. Beaulieu, \"A comparison of SNR
estimation techniques for the AWGN channel,\" IEEE Trans. Communications, Vol. 48, No. 10, pp. 1681-1691, 2000."

%feature("docstring") gr::digital::mpsk_snr_est_m2m4::mpsk_snr_est_m2m4 "Constructor

Parameters:"



%feature("docstring") gr::digital::mpsk_snr_est_m2m4::update "Update the current registers."

%feature("docstring") gr::digital::mpsk_snr_est_m2m4::snr "Use the register values to compute a new estimate."

%feature("docstring") gr::digital::mpsk_snr_est_simple "SNR Estimator using simple mean/variance estimates.

A very simple SNR estimator that just uses mean and variance estimates of an M-PSK constellation. This estimator is quick and cheap and accurate for high SNR (above 7 dB or so) but quickly starts to overestimate the SNR at low SNR."

%feature("docstring") gr::digital::mpsk_snr_est_simple::mpsk_snr_est_simple "Constructor

Parameters:"



%feature("docstring") gr::digital::mpsk_snr_est_simple::update "Update the current registers."

%feature("docstring") gr::digital::mpsk_snr_est_simple::snr "Use the register values to compute a new estimate."

%feature("docstring") gr::digital::mpsk_snr_est_skew "SNR Estimator using skewness correction.

This is an estimator that came from a discussion between Tom Rondeau and fred harris with no known paper reference. The idea is that at low SNR, the variance estimations will be affected because of fold-over around the decision boundaries, which results in a skewness to the samples. We estimate the skewness and use this as a correcting term.

This algorithm only appears to work well for BPSK signals."

%feature("docstring") gr::digital::mpsk_snr_est_skew::mpsk_snr_est_skew "Constructor

Parameters:"



%feature("docstring") gr::digital::mpsk_snr_est_skew::update "Update the current registers."

%feature("docstring") gr::digital::mpsk_snr_est_skew::snr "Use the register values to compute a new estimate."

%feature("docstring") gr::digital::mpsk_snr_est_svr "Signal-to-Variation Ratio SNR Estimator.

This estimator actually comes from an SNR estimator for M-PSK signals in fading channels, but this implementation is specifically for AWGN channels. The math was simplified to assume a signal and noise kurtosis (  and ) for M-PSK signals in AWGN. These approximations significantly reduce the complexity of the calculations (and computations) required.

Original paper: A. L. Brandao, L. B. Lopes, and D. C. McLernon, \"In-service monitoring of multipath delay and cochannel interference for indoor mobile communication systems,\" Proc. IEEE Int. Conf. Communications, vol. 3, pp. 1458-1462, May 1994.

Reference: D. R. Pauluzzi and N. C. Beaulieu, \"A comparison of SNR
estimation techniques for the AWGN channel,\" IEEE Trans. Communications, Vol. 48, No. 10, pp. 1681-1691, 2000."

%feature("docstring") gr::digital::mpsk_snr_est_svr::mpsk_snr_est_svr "Constructor

Parameters:"



%feature("docstring") gr::digital::mpsk_snr_est_svr::update "Update the current registers."

%feature("docstring") gr::digital::mpsk_snr_est_svr::snr "Use the register values to compute a new estimate."







%feature("docstring") gr::digital::ofdm_equalizer_1d_pilots::reset "Reset the channel information state knowledge."

%feature("docstring") gr::digital::ofdm_equalizer_1d_pilots::get_channel_state "Return the current channel state."

%feature("docstring") gr::digital::ofdm_equalizer_base "Base class for implementation details of frequency-domain OFDM equalizers."





%feature("docstring") gr::digital::ofdm_equalizer_base::reset "Reset the channel information state knowledge."

%feature("docstring") gr::digital::ofdm_equalizer_base::equalize "Run the actual equalization."

%feature("docstring") gr::digital::ofdm_equalizer_base::get_channel_state "Return the current channel state."





%feature("docstring") gr::digital::snr_est_m2m4 "SNR Estimator using 2nd and 4th-order moments.

An SNR estimator for M-PSK signals that uses 2nd (M2) and 4th (M4) order moments. This estimator uses knowledge of the kurtosis of the signal (k_a) and noise (k_w) to make its estimation. In this case, you can set your own estimations for k_a and k_w, the kurtosis of the signal and noise, to fit this estimation better to your signal and channel conditions.

A word of warning: this estimator has not been fully tested or proved with any amount of rigor. The estimation for M4 in particular might be ignoring effectf of when k_a and k_w are different. Use this estimator with caution and a copy of the reference on hand.

The digital_mpsk_snr_est_m2m4 assumes k_a and k_w to simplify the computations for M-PSK and AWGN channels. Use that estimator unless you have a way to guess or estimate these values here.

Original paper: R. Matzner, \"An SNR estimation algorithm for complex baseband
signal using higher order statistics,\" Facta Universitatis (Nis), no. 6, pp. 41-52, 1993.

Reference used in derivation: D. R. Pauluzzi and N. C. Beaulieu, \"A comparison of SNR
estimation techniques for the AWGN channel,\" IEEE Trans. Communications, Vol. 48, No. 10, pp. 1681-1691, 2000."

%feature("docstring") gr::digital::snr_est_m2m4::snr_est_m2m4 "Constructor

Parameters:"



%feature("docstring") gr::digital::snr_est_m2m4::update "Update the current registers."

%feature("docstring") gr::digital::snr_est_m2m4::snr "Use the register values to compute a new estimate."