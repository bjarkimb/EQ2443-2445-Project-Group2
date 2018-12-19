
/*
 * This file was automatically generated using swig_doc.py.
 *
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") gr::analog::agc2_cc "high performance Automatic Gain Control class with attack and decay rates.

For Power the absolute value of the complex number is used.

Constructor Specific Documentation:

Build a complex value AGC loop block with attack and decay rates.

Args:
    attack_rate : the update rate of the loop when in attack mode.
    decay_rate : the update rate of the loop when in decay mode.
    reference : reference value to adjust signal power to.
    gain : initial gain value."





















%feature("docstring") gr::analog::agc2_cc::make "high performance Automatic Gain Control class with attack and decay rates.

For Power the absolute value of the complex number is used.

Constructor Specific Documentation:

Build a complex value AGC loop block with attack and decay rates.

Args:
    attack_rate : the update rate of the loop when in attack mode.
    decay_rate : the update rate of the loop when in decay mode.
    reference : reference value to adjust signal power to.
    gain : initial gain value."

%feature("docstring") gr::analog::agc2_ff "high performance Automatic Gain Control class with attack and decay rates.

Power is approximated by absolute value

Constructor Specific Documentation:

Build a floating point AGC loop block with attack and decay rates.

Args:
    attack_rate : the update rate of the loop when in attack mode.
    decay_rate : the update rate of the loop when in decay mode.
    reference : reference value to adjust signal power to.
    gain : initial gain value."





















%feature("docstring") gr::analog::agc2_ff::make "high performance Automatic Gain Control class with attack and decay rates.

Power is approximated by absolute value

Constructor Specific Documentation:

Build a floating point AGC loop block with attack and decay rates.

Args:
    attack_rate : the update rate of the loop when in attack mode.
    decay_rate : the update rate of the loop when in decay mode.
    reference : reference value to adjust signal power to.
    gain : initial gain value."

%feature("docstring") gr::analog::agc3_cc "high performance Automatic Gain Control class with attack and decay rates.

Unlike the AGC2 loop, this uses an initial linear calculation at the beginning for very fast initial acquisition. Moves to IIR model for tracking purposes.

For Power the absolute value of the complex number is used.

Constructor Specific Documentation:

Build a complex value AGC loop block with attack and decay rates.

Args:
    attack_rate : the update rate of the loop when in attack mode.
    decay_rate : the update rate of the loop when in decay mode.
    reference : reference value to adjust signal power to.
    gain : initial gain value.
    iir_update_decim : stride by this number of samples before computing an IIR gain update"





















%feature("docstring") gr::analog::agc3_cc::make "high performance Automatic Gain Control class with attack and decay rates.

Unlike the AGC2 loop, this uses an initial linear calculation at the beginning for very fast initial acquisition. Moves to IIR model for tracking purposes.

For Power the absolute value of the complex number is used.

Constructor Specific Documentation:

Build a complex value AGC loop block with attack and decay rates.

Args:
    attack_rate : the update rate of the loop when in attack mode.
    decay_rate : the update rate of the loop when in decay mode.
    reference : reference value to adjust signal power to.
    gain : initial gain value.
    iir_update_decim : stride by this number of samples before computing an IIR gain update"

%feature("docstring") gr::analog::agc_cc "high performance Automatic Gain Control class

For Power the absolute value of the complex number is used.

Constructor Specific Documentation:

Build a complex value AGC loop block.

Args:
    rate : the update rate of the loop.
    reference : reference value to adjust signal power to.
    gain : initial gain value."

















%feature("docstring") gr::analog::agc_cc::make "high performance Automatic Gain Control class

For Power the absolute value of the complex number is used.

Constructor Specific Documentation:

Build a complex value AGC loop block.

Args:
    rate : the update rate of the loop.
    reference : reference value to adjust signal power to.
    gain : initial gain value."

%feature("docstring") gr::analog::agc_ff "high performance Automatic Gain Control class

Power is approximated by absolute value

Constructor Specific Documentation:

Build a floating point AGC loop block.

Args:
    rate : the update rate of the loop.
    reference : reference value to adjust signal power to.
    gain : initial gain value."

















%feature("docstring") gr::analog::agc_ff::make "high performance Automatic Gain Control class

Power is approximated by absolute value

Constructor Specific Documentation:

Build a floating point AGC loop block.

Args:
    rate : the update rate of the loop.
    reference : reference value to adjust signal power to.
    gain : initial gain value."

%feature("docstring") gr::analog::cpfsk_bc "Perform continuous phase 2-level frequency shift keying modulation on an input stream of unpacked bits.

Constructor Specific Documentation:

Make a CPFSK block.

Args:
    k : modulation index
    ampl : output amplitude
    samples_per_sym : number of output samples per input bit"









%feature("docstring") gr::analog::cpfsk_bc::make "Perform continuous phase 2-level frequency shift keying modulation on an input stream of unpacked bits.

Constructor Specific Documentation:

Make a CPFSK block.

Args:
    k : modulation index
    ampl : output amplitude
    samples_per_sym : number of output samples per input bit"

%feature("docstring") gr::analog::ctcss_squelch_ff "gate or zero output if CTCSS tone not present

Constructor Specific Documentation:

Make CTCSS tone squelch block.

Args:
    rate : gain of the internal frequency filters.
    freq : frequency value to use as the squelch tone.
    level : threshold level for the squelch tone.
    len : length of the frequency filters.
    ramp : sets response characteristic.
    gate : if true, no output if no squelch tone. if false, output 0's if no squelch tone."



























%feature("docstring") gr::analog::ctcss_squelch_ff::make "gate or zero output if CTCSS tone not present

Constructor Specific Documentation:

Make CTCSS tone squelch block.

Args:
    rate : gain of the internal frequency filters.
    freq : frequency value to use as the squelch tone.
    level : threshold level for the squelch tone.
    len : length of the frequency filters.
    ramp : sets response characteristic.
    gate : if true, no output if no squelch tone. if false, output 0's if no squelch tone."

%feature("docstring") gr::analog::dpll_bb "Detect the peak of a signal.

If a peak is detected, this block outputs a 1, or it outputs 0's.

Constructor Specific Documentation:



Args:
    period : 
    gain : "













%feature("docstring") gr::analog::dpll_bb::make "Detect the peak of a signal.

If a peak is detected, this block outputs a 1, or it outputs 0's.

Constructor Specific Documentation:



Args:
    period : 
    gain : "

%feature("docstring") gr::analog::fastnoise_source_c "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Constructor Specific Documentation:

Make a fast noise source.

Args:
    type : the random distribution to use (see gnuradio/analog/noise_type.h)
    ampl : the standard deviation of a 1-d noise process. If this is the complex source, this parameter is split among the real and imaginary parts:
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number.
    samples : Number of samples to pre-generate"







%feature("docstring") gr::analog::fastnoise_source_c::set_type "Set the noise type. Nominally from the gr::analog::noise_type_t selections, but only GR_GAUSSIAN and GR_UNIFORM are currently available."

%feature("docstring") gr::analog::fastnoise_source_c::set_amplitude "Set the standard deviation (amplitude) of the 1-d noise process."





%feature("docstring") gr::analog::fastnoise_source_c::make "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Constructor Specific Documentation:

Make a fast noise source.

Args:
    type : the random distribution to use (see gnuradio/analog/noise_type.h)
    ampl : the standard deviation of a 1-d noise process. If this is the complex source, this parameter is split among the real and imaginary parts:
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number.
    samples : Number of samples to pre-generate"

%feature("docstring") gr::analog::fastnoise_source_f "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Constructor Specific Documentation:

Make a fast noise source.

Args:
    type : the random distribution to use (see gnuradio/analog/noise_type.h)
    ampl : the standard deviation of a 1-d noise process. If this is the complex source, this parameter is split among the real and imaginary parts:
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number.
    samples : Number of samples to pre-generate"







%feature("docstring") gr::analog::fastnoise_source_f::set_type "Set the noise type. Nominally from the gr::analog::noise_type_t selections, but only GR_GAUSSIAN and GR_UNIFORM are currently available."

%feature("docstring") gr::analog::fastnoise_source_f::set_amplitude "Set the standard deviation (amplitude) of the 1-d noise process."





%feature("docstring") gr::analog::fastnoise_source_f::make "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Constructor Specific Documentation:

Make a fast noise source.

Args:
    type : the random distribution to use (see gnuradio/analog/noise_type.h)
    ampl : the standard deviation of a 1-d noise process. If this is the complex source, this parameter is split among the real and imaginary parts:
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number.
    samples : Number of samples to pre-generate"

%feature("docstring") gr::analog::fastnoise_source_i "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Constructor Specific Documentation:

Make a fast noise source.

Args:
    type : the random distribution to use (see gnuradio/analog/noise_type.h)
    ampl : the standard deviation of a 1-d noise process. If this is the complex source, this parameter is split among the real and imaginary parts:
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number.
    samples : Number of samples to pre-generate"







%feature("docstring") gr::analog::fastnoise_source_i::set_type "Set the noise type. Nominally from the gr::analog::noise_type_t selections, but only GR_GAUSSIAN and GR_UNIFORM are currently available."

%feature("docstring") gr::analog::fastnoise_source_i::set_amplitude "Set the standard deviation (amplitude) of the 1-d noise process."





%feature("docstring") gr::analog::fastnoise_source_i::make "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Constructor Specific Documentation:

Make a fast noise source.

Args:
    type : the random distribution to use (see gnuradio/analog/noise_type.h)
    ampl : the standard deviation of a 1-d noise process. If this is the complex source, this parameter is split among the real and imaginary parts:
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number.
    samples : Number of samples to pre-generate"

%feature("docstring") gr::analog::fastnoise_source_s "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Constructor Specific Documentation:

Make a fast noise source.

Args:
    type : the random distribution to use (see gnuradio/analog/noise_type.h)
    ampl : the standard deviation of a 1-d noise process. If this is the complex source, this parameter is split among the real and imaginary parts:
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number.
    samples : Number of samples to pre-generate"







%feature("docstring") gr::analog::fastnoise_source_s::set_type "Set the noise type. Nominally from the gr::analog::noise_type_t selections, but only GR_GAUSSIAN and GR_UNIFORM are currently available."

%feature("docstring") gr::analog::fastnoise_source_s::set_amplitude "Set the standard deviation (amplitude) of the 1-d noise process."





%feature("docstring") gr::analog::fastnoise_source_s::make "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Constructor Specific Documentation:

Make a fast noise source.

Args:
    type : the random distribution to use (see gnuradio/analog/noise_type.h)
    ampl : the standard deviation of a 1-d noise process. If this is the complex source, this parameter is split among the real and imaginary parts:
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number.
    samples : Number of samples to pre-generate"

%feature("docstring") gr::analog::feedforward_agc_cc "Non-causal AGC which computes required gain based on max absolute value over nsamples.

Constructor Specific Documentation:

Build a complex valued feed-forward AGC loop block.

Args:
    nsamples : number of samples to look ahead.
    reference : reference value to adjust signal power to."

%feature("docstring") gr::analog::feedforward_agc_cc::make "Non-causal AGC which computes required gain based on max absolute value over nsamples.

Constructor Specific Documentation:

Build a complex valued feed-forward AGC loop block.

Args:
    nsamples : number of samples to look ahead.
    reference : reference value to adjust signal power to."

%feature("docstring") gr::analog::fmdet_cf "Implements an IQ slope detector.

input: stream of complex; output: stream of floats

This implements a limiting slope detector. The limiter is in the normalization by the magnitude of the sample

Constructor Specific Documentation:

Make FM detector block.

Args:
    samplerate : sample rate of signal (is not used; to be removed)
    freq_low : lowest frequency of signal (Hz)
    freq_high : highest frequency of signal (Hz)
    scl : scale factor"















%feature("docstring") gr::analog::fmdet_cf::make "Implements an IQ slope detector.

input: stream of complex; output: stream of floats

This implements a limiting slope detector. The limiter is in the normalization by the magnitude of the sample

Constructor Specific Documentation:

Make FM detector block.

Args:
    samplerate : sample rate of signal (is not used; to be removed)
    freq_low : lowest frequency of signal (Hz)
    freq_high : highest frequency of signal (Hz)
    scl : scale factor"

%feature("docstring") gr::analog::frequency_modulator_fc "Frequency modulator block.

float input; complex baseband output

Takes a real, baseband signal (x_m[n]) and output a frequency modulated signal (y[n]) according to:



Where x[n] is the input sample at time n and  is the frequency deviation. Common values for  are 5 kHz for narrowband FM channels such as for voice systems and 75 KHz for wideband FM, like audio broadcast FM stations.

In this block, the input argument is , not the frequency deviation. The sensitivity specifies how much the phase changes based on the new input sample. Given a maximum deviation, , and sample rate , the sensitivity is defined as:

Constructor Specific Documentation:

Build a frequency modulator block.

Args:
    sensitivity : radians/sample = amplitude * sensitivity"





%feature("docstring") gr::analog::frequency_modulator_fc::make "Frequency modulator block.

float input; complex baseband output

Takes a real, baseband signal (x_m[n]) and output a frequency modulated signal (y[n]) according to:



Where x[n] is the input sample at time n and  is the frequency deviation. Common values for  are 5 kHz for narrowband FM channels such as for voice systems and 75 KHz for wideband FM, like audio broadcast FM stations.

In this block, the input argument is , not the frequency deviation. The sensitivity specifies how much the phase changes based on the new input sample. Given a maximum deviation, , and sample rate , the sensitivity is defined as:

Constructor Specific Documentation:

Build a frequency modulator block.

Args:
    sensitivity : radians/sample = amplitude * sensitivity"

%feature("docstring") gr::analog::noise_source_c "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Constructor Specific Documentation:

Build a noise source

Args:
    type : the random distribution to use (see gnuradio/analog/noise_type.h)
    ampl : the standard deviation of a 1-d noise process. If this is the complex source, this parameter is split among the real and imaginary parts:
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number."

%feature("docstring") gr::analog::noise_source_c::set_type "Set the noise type. Nominally from the gr::analog::noise_type_t selections, but only GR_GAUSSIAN and GR_UNIFORM are currently available."

%feature("docstring") gr::analog::noise_source_c::set_amplitude "Set the standard deviation (amplitude) of the 1-d noise process."





%feature("docstring") gr::analog::noise_source_c::make "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Constructor Specific Documentation:

Build a noise source

Args:
    type : the random distribution to use (see gnuradio/analog/noise_type.h)
    ampl : the standard deviation of a 1-d noise process. If this is the complex source, this parameter is split among the real and imaginary parts:
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number."

%feature("docstring") gr::analog::noise_source_f "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Constructor Specific Documentation:

Build a noise source

Args:
    type : the random distribution to use (see gnuradio/analog/noise_type.h)
    ampl : the standard deviation of a 1-d noise process. If this is the complex source, this parameter is split among the real and imaginary parts:
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number."

%feature("docstring") gr::analog::noise_source_f::set_type "Set the noise type. Nominally from the gr::analog::noise_type_t selections, but only GR_GAUSSIAN and GR_UNIFORM are currently available."

%feature("docstring") gr::analog::noise_source_f::set_amplitude "Set the standard deviation (amplitude) of the 1-d noise process."





%feature("docstring") gr::analog::noise_source_f::make "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Constructor Specific Documentation:

Build a noise source

Args:
    type : the random distribution to use (see gnuradio/analog/noise_type.h)
    ampl : the standard deviation of a 1-d noise process. If this is the complex source, this parameter is split among the real and imaginary parts:
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number."

%feature("docstring") gr::analog::noise_source_i "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Constructor Specific Documentation:

Build a noise source

Args:
    type : the random distribution to use (see gnuradio/analog/noise_type.h)
    ampl : the standard deviation of a 1-d noise process. If this is the complex source, this parameter is split among the real and imaginary parts:
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number."

%feature("docstring") gr::analog::noise_source_i::set_type "Set the noise type. Nominally from the gr::analog::noise_type_t selections, but only GR_GAUSSIAN and GR_UNIFORM are currently available."

%feature("docstring") gr::analog::noise_source_i::set_amplitude "Set the standard deviation (amplitude) of the 1-d noise process."





%feature("docstring") gr::analog::noise_source_i::make "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Constructor Specific Documentation:

Build a noise source

Args:
    type : the random distribution to use (see gnuradio/analog/noise_type.h)
    ampl : the standard deviation of a 1-d noise process. If this is the complex source, this parameter is split among the real and imaginary parts:
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number."

%feature("docstring") gr::analog::noise_source_s "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Constructor Specific Documentation:

Build a noise source

Args:
    type : the random distribution to use (see gnuradio/analog/noise_type.h)
    ampl : the standard deviation of a 1-d noise process. If this is the complex source, this parameter is split among the real and imaginary parts:
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number."

%feature("docstring") gr::analog::noise_source_s::set_type "Set the noise type. Nominally from the gr::analog::noise_type_t selections, but only GR_GAUSSIAN and GR_UNIFORM are currently available."

%feature("docstring") gr::analog::noise_source_s::set_amplitude "Set the standard deviation (amplitude) of the 1-d noise process."





%feature("docstring") gr::analog::noise_source_s::make "Random number source.

Generate random values from different distributions. Currently, only Gaussian and uniform are enabled.

Constructor Specific Documentation:

Build a noise source

Args:
    type : the random distribution to use (see gnuradio/analog/noise_type.h)
    ampl : the standard deviation of a 1-d noise process. If this is the complex source, this parameter is split among the real and imaginary parts:
    seed : seed for random generators. Note that for uniform and Gaussian distributions, this should be a negative number."

%feature("docstring") gr::analog::phase_modulator_fc "Phase modulator block.

output = complex(cos(in*sensitivity), sin(in*sensitivity))

Input stream 0: floats Output stream 0: complex

Constructor Specific Documentation:



Args:
    sensitivity : "









%feature("docstring") gr::analog::phase_modulator_fc::make "Phase modulator block.

output = complex(cos(in*sensitivity), sin(in*sensitivity))

Input stream 0: floats Output stream 0: complex

Constructor Specific Documentation:



Args:
    sensitivity : "

%feature("docstring") gr::analog::pll_carriertracking_cc "Implements a PLL which locks to the input frequency and outputs the input signal mixed with that carrier.

Input stream 0: complex Output stream 0: complex

This PLL locks onto a [possibly noisy] reference carrier on the input and outputs that signal, downconverted to DC

All settings max_freq and min_freq are in terms of radians per sample, NOT HERTZ. The loop bandwidth determines the lock range and should be set around pi/200  2pi/100.

Constructor Specific Documentation:



Args:
    loop_bw : 
    max_freq : 
    min_freq : "







































%feature("docstring") gr::analog::pll_carriertracking_cc::make "Implements a PLL which locks to the input frequency and outputs the input signal mixed with that carrier.

Input stream 0: complex Output stream 0: complex

This PLL locks onto a [possibly noisy] reference carrier on the input and outputs that signal, downconverted to DC

All settings max_freq and min_freq are in terms of radians per sample, NOT HERTZ. The loop bandwidth determines the lock range and should be set around pi/200  2pi/100.

Constructor Specific Documentation:



Args:
    loop_bw : 
    max_freq : 
    min_freq : "

%feature("docstring") gr::analog::pll_freqdet_cf "Implements a PLL which locks to the input frequency and outputs an estimate of that frequency. Useful for FM Demod.

Input stream 0: complex Output stream 0: float

This PLL locks onto a [possibly noisy] reference carrier on the input and outputs an estimate of that frequency in radians per sample. All settings max_freq and min_freq are in terms of radians per sample, NOT HERTZ. The loop bandwidth determines the lock range and should be set around pi/200  2pi/100.

Constructor Specific Documentation:



Args:
    loop_bw : 
    max_freq : 
    min_freq : "

































%feature("docstring") gr::analog::pll_freqdet_cf::make "Implements a PLL which locks to the input frequency and outputs an estimate of that frequency. Useful for FM Demod.

Input stream 0: complex Output stream 0: float

This PLL locks onto a [possibly noisy] reference carrier on the input and outputs an estimate of that frequency in radians per sample. All settings max_freq and min_freq are in terms of radians per sample, NOT HERTZ. The loop bandwidth determines the lock range and should be set around pi/200  2pi/100.

Constructor Specific Documentation:



Args:
    loop_bw : 
    max_freq : 
    min_freq : "

%feature("docstring") gr::analog::pll_refout_cc "Implements a PLL which locks to the input frequency and outputs a carrier.

Input stream 0: complex Output stream 0: complex

This PLL locks onto a [possibly noisy] reference carrier on the input and outputs a clean version which is phase and frequency aligned to it.

All settings max_freq and min_freq are in terms of radians per sample, NOT HERTZ. The loop bandwidth determines the lock range and should be set around pi/200  2pi/100.

Constructor Specific Documentation:



Args:
    loop_bw : 
    max_freq : 
    min_freq : "

%feature("docstring") gr::analog::pll_refout_cc::make "Implements a PLL which locks to the input frequency and outputs a carrier.

Input stream 0: complex Output stream 0: complex

This PLL locks onto a [possibly noisy] reference carrier on the input and outputs a clean version which is phase and frequency aligned to it.

All settings max_freq and min_freq are in terms of radians per sample, NOT HERTZ. The loop bandwidth determines the lock range and should be set around pi/200  2pi/100.

Constructor Specific Documentation:



Args:
    loop_bw : 
    max_freq : 
    min_freq : "

%feature("docstring") gr::analog::probe_avg_mag_sqrd_c "compute avg magnitude squared.

Input stream 0: complex

Compute a running average of the magnitude squared of the the input. The level and indication as to whether the level exceeds threshold can be retrieved with the level and unmuted accessors.

Constructor Specific Documentation:

Make a complex sink that computes avg magnitude squared.

Args:
    threshold_db : Threshold for muting.
    alpha : Gain parameter for the running average filter."













%feature("docstring") gr::analog::probe_avg_mag_sqrd_c::make "compute avg magnitude squared.

Input stream 0: complex

Compute a running average of the magnitude squared of the the input. The level and indication as to whether the level exceeds threshold can be retrieved with the level and unmuted accessors.

Constructor Specific Documentation:

Make a complex sink that computes avg magnitude squared.

Args:
    threshold_db : Threshold for muting.
    alpha : Gain parameter for the running average filter."

%feature("docstring") gr::analog::probe_avg_mag_sqrd_cf "compute avg magnitude squared.

Input stream 0: complex Output stream 0: float

Compute a running average of the magnitude squared of the the input. The level and indication as to whether the level exceeds threshold can be retrieved with the level and unmuted accessors.

Constructor Specific Documentation:

Make a block that computes avg magnitude squared.

Args:
    threshold_db : Threshold for muting.
    alpha : Gain parameter for the running average filter."













%feature("docstring") gr::analog::probe_avg_mag_sqrd_cf::make "compute avg magnitude squared.

Input stream 0: complex Output stream 0: float

Compute a running average of the magnitude squared of the the input. The level and indication as to whether the level exceeds threshold can be retrieved with the level and unmuted accessors.

Constructor Specific Documentation:

Make a block that computes avg magnitude squared.

Args:
    threshold_db : Threshold for muting.
    alpha : Gain parameter for the running average filter."

%feature("docstring") gr::analog::probe_avg_mag_sqrd_f "compute avg magnitude squared.

input stream 0: float

Compute a running average of the magnitude squared of the the input. The level and indication as to whether the level exceeds threshold can be retrieved with the level and unmuted accessors.

Constructor Specific Documentation:

Make a float sink that computes avg magnitude squared.

Args:
    threshold_db : Threshold for muting.
    alpha : Gain parameter for the running average filter."













%feature("docstring") gr::analog::probe_avg_mag_sqrd_f::make "compute avg magnitude squared.

input stream 0: float

Compute a running average of the magnitude squared of the the input. The level and indication as to whether the level exceeds threshold can be retrieved with the level and unmuted accessors.

Constructor Specific Documentation:

Make a float sink that computes avg magnitude squared.

Args:
    threshold_db : Threshold for muting.
    alpha : Gain parameter for the running average filter."

%feature("docstring") gr::analog::pwr_squelch_cc "gate or zero output when input power below threshold

Constructor Specific Documentation:

Make power-based squelch block.

The block will emit a tag with the key pmt::intern(\"squelch_sob\") with the value of pmt::PMT_NIL on the first item it passes, and with the key pmt::intern(\"squelch:eob\") on the last item it passes.

Args:
    db : threshold (in dB) for power squelch
    alpha : Gain of averaging filter. Defaults to 0.0001.
    ramp : sets response characteristic. Defaults to 0.
    gate : if true, no output if no squelch tone. if false, output 0's if no squelch tone (default)."























%feature("docstring") gr::analog::pwr_squelch_cc::make "gate or zero output when input power below threshold

Constructor Specific Documentation:

Make power-based squelch block.

The block will emit a tag with the key pmt::intern(\"squelch_sob\") with the value of pmt::PMT_NIL on the first item it passes, and with the key pmt::intern(\"squelch:eob\") on the last item it passes.

Args:
    db : threshold (in dB) for power squelch
    alpha : Gain of averaging filter. Defaults to 0.0001.
    ramp : sets response characteristic. Defaults to 0.
    gate : if true, no output if no squelch tone. if false, output 0's if no squelch tone (default)."

%feature("docstring") gr::analog::pwr_squelch_ff "gate or zero output when input power below threshold

Constructor Specific Documentation:

Make power-based squelch block.

The block will emit a tag with the key pmt::intern(\"squelch_sob\") with the value of pmt::PMT_NIL on the first item it passes, and with the key pmt::intern(\"squelch:eob\") on the last item it passes.

Args:
    db : threshold (in dB) for power squelch
    alpha : Gain of averaging filter. Defaults to 0.0001.
    ramp : sets response characteristic. Defaults to 0.
    gate : if true, no output if no squelch tone. if false, output 0's if no squelch tone (default)."























%feature("docstring") gr::analog::pwr_squelch_ff::make "gate or zero output when input power below threshold

Constructor Specific Documentation:

Make power-based squelch block.

The block will emit a tag with the key pmt::intern(\"squelch_sob\") with the value of pmt::PMT_NIL on the first item it passes, and with the key pmt::intern(\"squelch:eob\") on the last item it passes.

Args:
    db : threshold (in dB) for power squelch
    alpha : Gain of averaging filter. Defaults to 0.0001.
    ramp : sets response characteristic. Defaults to 0.
    gate : if true, no output if no squelch tone. if false, output 0's if no squelch tone (default)."

%feature("docstring") gr::analog::quadrature_demod_cf "quadrature demodulator: complex in, float out

This can be used to demod FM, FSK, GMSK, etc. The input is complex baseband, output is the signal frequency in relation to the sample rated, multiplied with the gain.

Mathematically, this block calculates the product of the one-sample delayed input and the conjugate undelayed signal, and then calculates the argument of the resulting complex number:

.

Let  be a complex sinusoid with amplitude , (absolute) frequency  and phase  sampled at  so, without loss of generality,



then

Constructor Specific Documentation:



Args:
    gain : "





%feature("docstring") gr::analog::quadrature_demod_cf::make "quadrature demodulator: complex in, float out

This can be used to demod FM, FSK, GMSK, etc. The input is complex baseband, output is the signal frequency in relation to the sample rated, multiplied with the gain.

Mathematically, this block calculates the product of the one-sample delayed input and the conjugate undelayed signal, and then calculates the argument of the resulting complex number:

.

Let  be a complex sinusoid with amplitude , (absolute) frequency  and phase  sampled at  so, without loss of generality,



then

Constructor Specific Documentation:



Args:
    gain : "

%feature("docstring") gr::analog::rail_ff "clips input values to min, max

Constructor Specific Documentation:

Build a rail block.

Args:
    lo : the low value to clip to.
    hi : the high value to clip to."









%feature("docstring") gr::analog::rail_ff::make "clips input values to min, max

Constructor Specific Documentation:

Build a rail block.

Args:
    lo : the low value to clip to.
    hi : the high value to clip to."

%feature("docstring") gr::analog::random_uniform_source_b "Uniform Random Number Generator with unsigned char output.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of analog::random_uniform_source_X.

To avoid accidental use of raw pointers, analog::random_uniform_source_b's constructor is in a private implementation class. analog::random_uniform_source_b::make is the public interface for creating new instances.

Args:
    minimum : defines minimal integer value output.
    maximum : output values are below this value
    seed : for Pseudo Random Number Generator. Defaults to 0. In this case current time is used."

%feature("docstring") gr::analog::random_uniform_source_b::make "Uniform Random Number Generator with unsigned char output.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of analog::random_uniform_source_X.

To avoid accidental use of raw pointers, analog::random_uniform_source_b's constructor is in a private implementation class. analog::random_uniform_source_b::make is the public interface for creating new instances.

Args:
    minimum : defines minimal integer value output.
    maximum : output values are below this value
    seed : for Pseudo Random Number Generator. Defaults to 0. In this case current time is used."

%feature("docstring") gr::analog::random_uniform_source_i "Uniform Random Number Generator with int output.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of analog::random_uniform_source_X.

To avoid accidental use of raw pointers, analog::random_uniform_source_b's constructor is in a private implementation class. analog::random_uniform_source_b::make is the public interface for creating new instances.

Args:
    minimum : defines minimal integer value output.
    maximum : output values are below this value
    seed : for Pseudo Random Number Generator. Defaults to 0. In this case current time is used."

%feature("docstring") gr::analog::random_uniform_source_i::make "Uniform Random Number Generator with int output.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of analog::random_uniform_source_X.

To avoid accidental use of raw pointers, analog::random_uniform_source_b's constructor is in a private implementation class. analog::random_uniform_source_b::make is the public interface for creating new instances.

Args:
    minimum : defines minimal integer value output.
    maximum : output values are below this value
    seed : for Pseudo Random Number Generator. Defaults to 0. In this case current time is used."

%feature("docstring") gr::analog::random_uniform_source_s "Uniform Random Number Generator with short output.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of analog::random_uniform_source_X.

To avoid accidental use of raw pointers, analog::random_uniform_source_b's constructor is in a private implementation class. analog::random_uniform_source_b::make is the public interface for creating new instances.

Args:
    minimum : defines minimal integer value output.
    maximum : output values are below this value
    seed : for Pseudo Random Number Generator. Defaults to 0. In this case current time is used."

%feature("docstring") gr::analog::random_uniform_source_s::make "Uniform Random Number Generator with short output.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of analog::random_uniform_source_X.

To avoid accidental use of raw pointers, analog::random_uniform_source_b's constructor is in a private implementation class. analog::random_uniform_source_b::make is the public interface for creating new instances.

Args:
    minimum : defines minimal integer value output.
    maximum : output values are below this value
    seed : for Pseudo Random Number Generator. Defaults to 0. In this case current time is used."

%feature("docstring") gr::analog::sig_source_c "signal generator with gr_complex output.

Constructor Specific Documentation:

Build a signal source block.

Args:
    sampling_freq : Sampling rate of signal.
    waveform : wavetform type.
    wave_freq : Frequency of waveform (relative to sampling_freq).
    ampl : Signal amplitude.
    offset : offset of signal."





















%feature("docstring") gr::analog::sig_source_c::make "signal generator with gr_complex output.

Constructor Specific Documentation:

Build a signal source block.

Args:
    sampling_freq : Sampling rate of signal.
    waveform : wavetform type.
    wave_freq : Frequency of waveform (relative to sampling_freq).
    ampl : Signal amplitude.
    offset : offset of signal."

%feature("docstring") gr::analog::sig_source_f "signal generator with float output.

Constructor Specific Documentation:

Build a signal source block.

Args:
    sampling_freq : Sampling rate of signal.
    waveform : wavetform type.
    wave_freq : Frequency of waveform (relative to sampling_freq).
    ampl : Signal amplitude.
    offset : offset of signal."





















%feature("docstring") gr::analog::sig_source_f::make "signal generator with float output.

Constructor Specific Documentation:

Build a signal source block.

Args:
    sampling_freq : Sampling rate of signal.
    waveform : wavetform type.
    wave_freq : Frequency of waveform (relative to sampling_freq).
    ampl : Signal amplitude.
    offset : offset of signal."

%feature("docstring") gr::analog::sig_source_i "signal generator with int output.

Constructor Specific Documentation:

Build a signal source block.

Args:
    sampling_freq : Sampling rate of signal.
    waveform : wavetform type.
    wave_freq : Frequency of waveform (relative to sampling_freq).
    ampl : Signal amplitude.
    offset : offset of signal."





















%feature("docstring") gr::analog::sig_source_i::make "signal generator with int output.

Constructor Specific Documentation:

Build a signal source block.

Args:
    sampling_freq : Sampling rate of signal.
    waveform : wavetform type.
    wave_freq : Frequency of waveform (relative to sampling_freq).
    ampl : Signal amplitude.
    offset : offset of signal."

%feature("docstring") gr::analog::sig_source_s "signal generator with short output.

Constructor Specific Documentation:

Build a signal source block.

Args:
    sampling_freq : Sampling rate of signal.
    waveform : wavetform type.
    wave_freq : Frequency of waveform (relative to sampling_freq).
    ampl : Signal amplitude.
    offset : offset of signal."





















%feature("docstring") gr::analog::sig_source_s::make "signal generator with short output.

Constructor Specific Documentation:

Build a signal source block.

Args:
    sampling_freq : Sampling rate of signal.
    waveform : wavetform type.
    wave_freq : Frequency of waveform (relative to sampling_freq).
    ampl : Signal amplitude.
    offset : offset of signal."

%feature("docstring") gr::analog::simple_squelch_cc "simple squelch block based on average signal power and threshold in dB.

Constructor Specific Documentation:

Make a simple squelch block.

Args:
    threshold_db : Threshold for muting.
    alpha : Gain parameter for the running average filter."











%feature("docstring") gr::analog::simple_squelch_cc::make "simple squelch block based on average signal power and threshold in dB.

Constructor Specific Documentation:

Make a simple squelch block.

Args:
    threshold_db : Threshold for muting.
    alpha : Gain parameter for the running average filter."

%feature("docstring") gr::analog::kernel::agc2_cc "high performance Automatic Gain Control class

For Power the absolute value of the complex number is used."

%feature("docstring") gr::analog::kernel::agc2_cc::agc2_cc "Construct a comple value AGC loop implementation object."



























%feature("docstring") gr::analog::kernel::agc2_ff::agc2_ff "Construct a floating point value AGC loop implementation object."

























%feature("docstring") gr::analog::kernel::agc_cc "high performance Automatic Gain Control class for complex signals.

For Power the absolute value of the complex number is used."

%feature("docstring") gr::analog::kernel::agc_cc::agc_cc "Construct a complex value AGC loop implementation object."























%feature("docstring") gr::analog::kernel::agc_ff "high performance Automatic Gain Control class for float signals.

Power is approximated by absolute value"

%feature("docstring") gr::analog::kernel::agc_ff::agc_ff "Construct a floating point value AGC loop implementation object."























%feature("docstring") gr::analog::cpm "Return the taps for an interpolating FIR filter (gr::filter::interp_fir_filter_fff)."

%feature("docstring") gr::analog::cpm::phase_response "Return the taps for an interpolating FIR filter (gr::filter::interp_fir_filter_fff).

These taps represent the phase response  for use in a CPM modulator, see also gr_cpmmod_bc.


Output: returns a vector of length  =  x . This can be used directly in an interpolating FIR filter such as gr_interp_fir_filter_fff with interpolation factor .

All phase responses are normalised s.t. ; this will cause a maximum phase change of  between two symbols, where  is the modulation index.

The following phase responses can be generated:


A short description of all these phase responses can be found in [1].

[1]: Anderson, Aulin and Sundberg; Digital Phase Modulation"

%feature("docstring") gr::analog::squelch_base_cc "basic squelch block; to be subclassed for other squelches."



















%feature("docstring") gr::analog::squelch_base_ff "basic squelch block; to be subclassed for other squelches."

















