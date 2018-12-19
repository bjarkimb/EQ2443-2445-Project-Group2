
/*
 * This file was automatically generated using swig_doc.py.
 *
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") gr::filter::dc_blocker_cc "a computationally efficient controllable DC blocker

This block implements a computationally efficient DC blocker that produces a tighter notch filter around DC for a smaller group delay than an equivalent FIR filter or using a single pole IIR filter (though the IIR filter is computationally cheaper).

The block defaults to using a delay line of length 32 and the long form of the filter. Optionally, the delay line length can be changed to alter the width of the DC notch (longer lines will decrease the width).

The long form of the filter produces a nearly flat response outside of the notch but at the cost of a group delay of 2D-2.

The short form of the filter does not have as flat a response in the passband but has a group delay of only D-1 and is cheaper to compute.

The theory behind this block can be found in the paper:

Constructor Specific Documentation:

Make a DC blocker block.

Args:
    D : (int) the length of the delay line
    long_form : (bool) whether to use long (true, default) or short form"



%feature("docstring") gr::filter::dc_blocker_cc::make "a computationally efficient controllable DC blocker

This block implements a computationally efficient DC blocker that produces a tighter notch filter around DC for a smaller group delay than an equivalent FIR filter or using a single pole IIR filter (though the IIR filter is computationally cheaper).

The block defaults to using a delay line of length 32 and the long form of the filter. Optionally, the delay line length can be changed to alter the width of the DC notch (longer lines will decrease the width).

The long form of the filter produces a nearly flat response outside of the notch but at the cost of a group delay of 2D-2.

The short form of the filter does not have as flat a response in the passband but has a group delay of only D-1 and is cheaper to compute.

The theory behind this block can be found in the paper:

Constructor Specific Documentation:

Make a DC blocker block.

Args:
    D : (int) the length of the delay line
    long_form : (bool) whether to use long (true, default) or short form"

%feature("docstring") gr::filter::dc_blocker_ff "a computationally efficient controllable DC blocker

This block implements a computationally efficient DC blocker that produces a tighter notch filter around DC for a smaller group delay than an equivalent FIR filter or using a single pole IIR filter (though the IIR filter is computationally cheaper).

The block defaults to using a delay line of length 32 and the long form of the filter. Optionally, the delay line length can be changed to alter the width of the DC notch (longer lines will decrease the width).

The long form of the filter produces a nearly flat response outside of the notch but at the cost of a group delay of 2D-2.

The short form of the filter does not have as flat a response in the passband but has a group delay of only D-1 and is cheaper to compute.

The theory behind this block can be found in the paper:

Constructor Specific Documentation:

Make a DC blocker block.

Args:
    D : (int) the length of the delay line
    long_form : (bool) whether to use long (true, default) or short form"



%feature("docstring") gr::filter::dc_blocker_ff::make "a computationally efficient controllable DC blocker

This block implements a computationally efficient DC blocker that produces a tighter notch filter around DC for a smaller group delay than an equivalent FIR filter or using a single pole IIR filter (though the IIR filter is computationally cheaper).

The block defaults to using a delay line of length 32 and the long form of the filter. Optionally, the delay line length can be changed to alter the width of the DC notch (longer lines will decrease the width).

The long form of the filter produces a nearly flat response outside of the notch but at the cost of a group delay of 2D-2.

The short form of the filter does not have as flat a response in the passband but has a group delay of only D-1 and is cheaper to compute.

The theory behind this block can be found in the paper:

Constructor Specific Documentation:

Make a DC blocker block.

Args:
    D : (int) the length of the delay line
    long_form : (bool) whether to use long (true, default) or short form"

%feature("docstring") gr::filter::fft_filter_ccc "Fast FFT filter with gr_complex input, gr_complex output and gr_complex taps.

This block implements a complex decimating filter using the fast convolution method via an FFT. The decimation factor is an integer that is greater than or equal to 1.

The filter takes a set of complex (or real) taps to use in the filtering operation. These taps can be defined as anything that satisfies the user's filtering needs. For standard filters such as lowpass, highpass, bandpass, etc., the filter.firdes and filter.optfir classes provide convenient generating methods.

This filter is implemented by using the FFTW package to perform the required FFTs. An optional argument, nthreads, may be passed to the constructor (or set using the set_nthreads member function) to split the FFT among N number of threads. This can improve performance on very large FFTs (that is, if the number of taps used is very large) if you have enough threads/cores to support it.

Constructor Specific Documentation:

Build an FFT filter blocks.

Args:
    decimation : >= 1
    taps : complex filter taps
    nthreads : number of threads for the FFT to use"





%feature("docstring") gr::filter::fft_filter_ccc::set_nthreads "Set number of threads to use."

%feature("docstring") gr::filter::fft_filter_ccc::nthreads "Get number of threads being used."

%feature("docstring") gr::filter::fft_filter_ccc::make "Fast FFT filter with gr_complex input, gr_complex output and gr_complex taps.

This block implements a complex decimating filter using the fast convolution method via an FFT. The decimation factor is an integer that is greater than or equal to 1.

The filter takes a set of complex (or real) taps to use in the filtering operation. These taps can be defined as anything that satisfies the user's filtering needs. For standard filters such as lowpass, highpass, bandpass, etc., the filter.firdes and filter.optfir classes provide convenient generating methods.

This filter is implemented by using the FFTW package to perform the required FFTs. An optional argument, nthreads, may be passed to the constructor (or set using the set_nthreads member function) to split the FFT among N number of threads. This can improve performance on very large FFTs (that is, if the number of taps used is very large) if you have enough threads/cores to support it.

Constructor Specific Documentation:

Build an FFT filter blocks.

Args:
    decimation : >= 1
    taps : complex filter taps
    nthreads : number of threads for the FFT to use"

%feature("docstring") gr::filter::fft_filter_ccf "Fast FFT filter with gr_complex input, gr_complex output and float taps.

This block implements a complex decimating filter using the fast convolution method via an FFT. The decimation factor is an integer that is greater than or equal to 1.

The filter takes a set of complex (or real) taps to use in the filtering operation. These taps can be defined as anything that satisfies the user's filtering needs. For standard filters such as lowpass, highpass, bandpass, etc., the filter.firdes and filter.optfir classes provide convenient generating methods.

This filter is implemented by using the FFTW package to perform the required FFTs. An optional argument, nthreads, may be passed to the constructor (or set using the set_nthreads member function) to split the FFT among N number of threads. This can improve performance on very large FFTs (that is, if the number of taps used is very large) if you have enough threads/cores to support it.

Constructor Specific Documentation:

Build an FFT filter blocks.

Args:
    decimation : >= 1
    taps : complex filter taps
    nthreads : number of threads for the FFT to use"





%feature("docstring") gr::filter::fft_filter_ccf::set_nthreads "Set number of threads to use."

%feature("docstring") gr::filter::fft_filter_ccf::nthreads "Get number of threads being used."

%feature("docstring") gr::filter::fft_filter_ccf::make "Fast FFT filter with gr_complex input, gr_complex output and float taps.

This block implements a complex decimating filter using the fast convolution method via an FFT. The decimation factor is an integer that is greater than or equal to 1.

The filter takes a set of complex (or real) taps to use in the filtering operation. These taps can be defined as anything that satisfies the user's filtering needs. For standard filters such as lowpass, highpass, bandpass, etc., the filter.firdes and filter.optfir classes provide convenient generating methods.

This filter is implemented by using the FFTW package to perform the required FFTs. An optional argument, nthreads, may be passed to the constructor (or set using the set_nthreads member function) to split the FFT among N number of threads. This can improve performance on very large FFTs (that is, if the number of taps used is very large) if you have enough threads/cores to support it.

Constructor Specific Documentation:

Build an FFT filter blocks.

Args:
    decimation : >= 1
    taps : complex filter taps
    nthreads : number of threads for the FFT to use"

%feature("docstring") gr::filter::fft_filter_fff "Fast FFT filter with float input, float output and float taps.

This block implements a real-value decimating filter using the fast convolution method via an FFT. The decimation factor is an integer that is greater than or equal to 1.

The filter takes a set of real-valued taps to use in the filtering operation. These taps can be defined as anything that satisfies the user's filtering needs. For standard filters such as lowpass, highpass, bandpass, etc., the filter.firdes and filter.optfir classes provide convenient generating methods.

This filter is implemented by using the FFTW package to perform the required FFTs. An optional argument, nthreads, may be passed to the constructor (or set using the set_nthreads member function) to split the FFT among N number of threads. This can improve performance on very large FFTs (that is, if the number of taps used is very large) if you have enough threads/cores to support it.

Constructor Specific Documentation:

Build an FFT filter block.

Args:
    decimation : >= 1
    taps : float filter taps
    nthreads : number of threads for the FFT to use"





%feature("docstring") gr::filter::fft_filter_fff::set_nthreads "Set number of threads to use."

%feature("docstring") gr::filter::fft_filter_fff::nthreads "Get number of threads being used."

%feature("docstring") gr::filter::fft_filter_fff::make "Fast FFT filter with float input, float output and float taps.

This block implements a real-value decimating filter using the fast convolution method via an FFT. The decimation factor is an integer that is greater than or equal to 1.

The filter takes a set of real-valued taps to use in the filtering operation. These taps can be defined as anything that satisfies the user's filtering needs. For standard filters such as lowpass, highpass, bandpass, etc., the filter.firdes and filter.optfir classes provide convenient generating methods.

This filter is implemented by using the FFTW package to perform the required FFTs. An optional argument, nthreads, may be passed to the constructor (or set using the set_nthreads member function) to split the FFT among N number of threads. This can improve performance on very large FFTs (that is, if the number of taps used is very large) if you have enough threads/cores to support it.

Constructor Specific Documentation:

Build an FFT filter block.

Args:
    decimation : >= 1
    taps : float filter taps
    nthreads : number of threads for the FFT to use"

%feature("docstring") gr::filter::filter_delay_fc "Filter-Delay Combination Block.

The block takes one or two float stream and outputs a complex stream.

If only one float stream is input, the real output is a delayed version of this input and the imaginary output is the filtered output.

If two floats are connected to the input, then the real output is the delayed version of the first input, and the imaginary output is the filtered output.

The delay in the real path accounts for the group delay introduced by the filter in the imaginary path. The filter taps needs to be calculated before initializing this block.

Constructor Specific Documentation:

Build a filter with delay block.

Args:
    taps : "

%feature("docstring") gr::filter::filter_delay_fc::make "Filter-Delay Combination Block.

The block takes one or two float stream and outputs a complex stream.

If only one float stream is input, the real output is a delayed version of this input and the imaginary output is the filtered output.

If two floats are connected to the input, then the real output is the delayed version of the first input, and the imaginary output is the filtered output.

The delay in the real path accounts for the group delay introduced by the filter in the imaginary path. The filter taps needs to be calculated before initializing this block.

Constructor Specific Documentation:

Build a filter with delay block.

Args:
    taps : "

%feature("docstring") gr::filter::filterbank_vcvcf "Filterbank with vector of gr_complex input, vector of gr_complex output and float taps.

This block takes in complex vectors and outputs complex vectors of the same size. Vectors of length N, rather than N normal streams are used to reduce overhead.

Constructor Specific Documentation:

Build the filterbank.

Args:
    taps : (vector of vector of floats/list of list of floats) Used to populate the filters."

%feature("docstring") gr::filter::filterbank_vcvcf::set_taps "Resets the filterbank's filter taps with the new prototype filter"

%feature("docstring") gr::filter::filterbank_vcvcf::print_taps "Print all of the filterbank taps to screen."

%feature("docstring") gr::filter::filterbank_vcvcf::taps "Return a vector<vector<>> of the filterbank taps"

%feature("docstring") gr::filter::filterbank_vcvcf::make "Filterbank with vector of gr_complex input, vector of gr_complex output and float taps.

This block takes in complex vectors and outputs complex vectors of the same size. Vectors of length N, rather than N normal streams are used to reduce overhead.

Constructor Specific Documentation:

Build the filterbank.

Args:
    taps : (vector of vector of floats/list of list of floats) Used to populate the filters."

%feature("docstring") gr::filter::fir_filter_ccc "FIR filter with gr_complex input, gr_complex output, and gr_complex taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type gr_complex. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as down-samplers (or decimators) by specifying an integer value for .

Constructor Specific Documentation:

FIR filter with gr_complex input, gr_complex output, and gr_complex taps.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type gr_complex"





%feature("docstring") gr::filter::fir_filter_ccc::make "FIR filter with gr_complex input, gr_complex output, and gr_complex taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type gr_complex. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as down-samplers (or decimators) by specifying an integer value for .

Constructor Specific Documentation:

FIR filter with gr_complex input, gr_complex output, and gr_complex taps.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type gr_complex"

%feature("docstring") gr::filter::fir_filter_ccf "FIR filter with gr_complex input, gr_complex output, and float taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type float. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as down-samplers (or decimators) by specifying an integer value for .

Constructor Specific Documentation:

FIR filter with gr_complex input, gr_complex output, and float taps.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type float"





%feature("docstring") gr::filter::fir_filter_ccf::make "FIR filter with gr_complex input, gr_complex output, and float taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type float. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as down-samplers (or decimators) by specifying an integer value for .

Constructor Specific Documentation:

FIR filter with gr_complex input, gr_complex output, and float taps.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type float"

%feature("docstring") gr::filter::fir_filter_fcc "FIR filter with float input, gr_complex output, and gr_complex taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type gr_complex. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as down-samplers (or decimators) by specifying an integer value for .

Constructor Specific Documentation:

FIR filter with float input, gr_complex output, and gr_complex taps.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type gr_complex"





%feature("docstring") gr::filter::fir_filter_fcc::make "FIR filter with float input, gr_complex output, and gr_complex taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type gr_complex. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as down-samplers (or decimators) by specifying an integer value for .

Constructor Specific Documentation:

FIR filter with float input, gr_complex output, and gr_complex taps.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type gr_complex"

%feature("docstring") gr::filter::fir_filter_fff "FIR filter with float input, float output, and float taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type float. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as down-samplers (or decimators) by specifying an integer value for .

Constructor Specific Documentation:

FIR filter with float input, float output, and float taps.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type float"





%feature("docstring") gr::filter::fir_filter_fff::make "FIR filter with float input, float output, and float taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type float. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as down-samplers (or decimators) by specifying an integer value for .

Constructor Specific Documentation:

FIR filter with float input, float output, and float taps.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type float"

%feature("docstring") gr::filter::fir_filter_fsf "FIR filter with float input, short output, and float taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type float. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as down-samplers (or decimators) by specifying an integer value for .

Constructor Specific Documentation:

FIR filter with float input, short output, and float taps.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type float"





%feature("docstring") gr::filter::fir_filter_fsf::make "FIR filter with float input, short output, and float taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type float. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as down-samplers (or decimators) by specifying an integer value for .

Constructor Specific Documentation:

FIR filter with float input, short output, and float taps.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type float"

%feature("docstring") gr::filter::fir_filter_scc "FIR filter with short input, gr_complex output, and gr_complex taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type gr_complex. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as down-samplers (or decimators) by specifying an integer value for .

Constructor Specific Documentation:

FIR filter with short input, gr_complex output, and gr_complex taps.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type gr_complex"





%feature("docstring") gr::filter::fir_filter_scc::make "FIR filter with short input, gr_complex output, and gr_complex taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type gr_complex. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as down-samplers (or decimators) by specifying an integer value for .

Constructor Specific Documentation:

FIR filter with short input, gr_complex output, and gr_complex taps.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type gr_complex"

%feature("docstring") gr::filter::fractional_interpolator_cc "Interpolating MMSE filter with complex input, complex output.

Constructor Specific Documentation:

Build the interpolating MMSE filter (complex input, complex output)

Args:
    phase_shift : The phase shift of the output signal to the input
    interp_ratio : The interpolation ratio = input_rate / output_rate."









%feature("docstring") gr::filter::fractional_interpolator_cc::make "Interpolating MMSE filter with complex input, complex output.

Constructor Specific Documentation:

Build the interpolating MMSE filter (complex input, complex output)

Args:
    phase_shift : The phase shift of the output signal to the input
    interp_ratio : The interpolation ratio = input_rate / output_rate."

%feature("docstring") gr::filter::fractional_interpolator_ff "Interpolating MMSE filter with float input, float output.

Constructor Specific Documentation:

Build the interpolating MMSE filter (float input, float output)

Args:
    phase_shift : The phase shift of the output signal to the input
    interp_ratio : The interpolation ratio = input_rate / output_rate."









%feature("docstring") gr::filter::fractional_interpolator_ff::make "Interpolating MMSE filter with float input, float output.

Constructor Specific Documentation:

Build the interpolating MMSE filter (float input, float output)

Args:
    phase_shift : The phase shift of the output signal to the input
    interp_ratio : The interpolation ratio = input_rate / output_rate."

%feature("docstring") gr::filter::fractional_resampler_cc "resampling MMSE filter with complex input, complex output

The resampling ratio and mu parameters can be set with a pmt dict message. Keys are pmt symbols with the strings \"resamp_ratio\" and \"mu\" and values are pmt floats.

Constructor Specific Documentation:

Build the resampling MMSE filter (complex input, complex output)

Args:
    phase_shift : The phase shift of the output signal to the input
    resamp_ratio : The resampling ratio = input_rate / output_rate."









%feature("docstring") gr::filter::fractional_resampler_cc::make "resampling MMSE filter with complex input, complex output

The resampling ratio and mu parameters can be set with a pmt dict message. Keys are pmt symbols with the strings \"resamp_ratio\" and \"mu\" and values are pmt floats.

Constructor Specific Documentation:

Build the resampling MMSE filter (complex input, complex output)

Args:
    phase_shift : The phase shift of the output signal to the input
    resamp_ratio : The resampling ratio = input_rate / output_rate."

%feature("docstring") gr::filter::fractional_resampler_ff "Resampling MMSE filter with float input, float output.

The resampling ratio and mu parameters can be set with a pmt dict message. Keys are pmt symbols with the strings \"resamp_ratio\" and \"mu\" and values are pmt floats.

Constructor Specific Documentation:

Build the resampling MMSE filter (float input, float output)

Args:
    phase_shift : The phase shift of the output signal to the input
    resamp_ratio : The resampling ratio = input_rate / output_rate."









%feature("docstring") gr::filter::fractional_resampler_ff::make "Resampling MMSE filter with float input, float output.

The resampling ratio and mu parameters can be set with a pmt dict message. Keys are pmt symbols with the strings \"resamp_ratio\" and \"mu\" and values are pmt floats.

Constructor Specific Documentation:

Build the resampling MMSE filter (float input, float output)

Args:
    phase_shift : The phase shift of the output signal to the input
    resamp_ratio : The resampling ratio = input_rate / output_rate."

%feature("docstring") gr::filter::freq_xlating_fir_filter_ccc "FIR filter combined with frequency translation with gr_complex input, gr_complex output and gr_complex taps.

This class efficiently combines a frequency translation (typically \"down conversion\") with a FIR filter (typically low-pass) and decimation. It is ideally suited for a \"channel
selection filter\" and can be efficiently used to select and decimate a narrow band signal out of wide bandwidth input.

Uses a single input array to produce a single output array. Additional inputs and/or outputs are ignored.

Constructor Specific Documentation:

FIR filter with gr_complex input, gr_complex output, and gr_complex taps that also frequency translates a signal from .

Construct a FIR filter with the given taps and a composite frequency translation that shifts center_freq down to zero Hz. The frequency translation logically comes before the filtering operation.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type gr_complex
    center_freq : Center frequency of signal to down convert from (Hz)
    sampling_freq : Sampling rate of signal (in Hz)"









%feature("docstring") gr::filter::freq_xlating_fir_filter_ccc::make "FIR filter combined with frequency translation with gr_complex input, gr_complex output and gr_complex taps.

This class efficiently combines a frequency translation (typically \"down conversion\") with a FIR filter (typically low-pass) and decimation. It is ideally suited for a \"channel
selection filter\" and can be efficiently used to select and decimate a narrow band signal out of wide bandwidth input.

Uses a single input array to produce a single output array. Additional inputs and/or outputs are ignored.

Constructor Specific Documentation:

FIR filter with gr_complex input, gr_complex output, and gr_complex taps that also frequency translates a signal from .

Construct a FIR filter with the given taps and a composite frequency translation that shifts center_freq down to zero Hz. The frequency translation logically comes before the filtering operation.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type gr_complex
    center_freq : Center frequency of signal to down convert from (Hz)
    sampling_freq : Sampling rate of signal (in Hz)"

%feature("docstring") gr::filter::freq_xlating_fir_filter_ccf "FIR filter combined with frequency translation with gr_complex input, gr_complex output and float taps.

This class efficiently combines a frequency translation (typically \"down conversion\") with a FIR filter (typically low-pass) and decimation. It is ideally suited for a \"channel
selection filter\" and can be efficiently used to select and decimate a narrow band signal out of wide bandwidth input.

Uses a single input array to produce a single output array. Additional inputs and/or outputs are ignored.

Constructor Specific Documentation:

FIR filter with gr_complex input, gr_complex output, and float taps that also frequency translates a signal from .

Construct a FIR filter with the given taps and a composite frequency translation that shifts center_freq down to zero Hz. The frequency translation logically comes before the filtering operation.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type float
    center_freq : Center frequency of signal to down convert from (Hz)
    sampling_freq : Sampling rate of signal (in Hz)"









%feature("docstring") gr::filter::freq_xlating_fir_filter_ccf::make "FIR filter combined with frequency translation with gr_complex input, gr_complex output and float taps.

This class efficiently combines a frequency translation (typically \"down conversion\") with a FIR filter (typically low-pass) and decimation. It is ideally suited for a \"channel
selection filter\" and can be efficiently used to select and decimate a narrow band signal out of wide bandwidth input.

Uses a single input array to produce a single output array. Additional inputs and/or outputs are ignored.

Constructor Specific Documentation:

FIR filter with gr_complex input, gr_complex output, and float taps that also frequency translates a signal from .

Construct a FIR filter with the given taps and a composite frequency translation that shifts center_freq down to zero Hz. The frequency translation logically comes before the filtering operation.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type float
    center_freq : Center frequency of signal to down convert from (Hz)
    sampling_freq : Sampling rate of signal (in Hz)"

%feature("docstring") gr::filter::freq_xlating_fir_filter_fcc "FIR filter combined with frequency translation with float input, gr_complex output and gr_complex taps.

This class efficiently combines a frequency translation (typically \"down conversion\") with a FIR filter (typically low-pass) and decimation. It is ideally suited for a \"channel
selection filter\" and can be efficiently used to select and decimate a narrow band signal out of wide bandwidth input.

Uses a single input array to produce a single output array. Additional inputs and/or outputs are ignored.

Constructor Specific Documentation:

FIR filter with float input, gr_complex output, and gr_complex taps that also frequency translates a signal from .

Construct a FIR filter with the given taps and a composite frequency translation that shifts center_freq down to zero Hz. The frequency translation logically comes before the filtering operation.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type gr_complex
    center_freq : Center frequency of signal to down convert from (Hz)
    sampling_freq : Sampling rate of signal (in Hz)"









%feature("docstring") gr::filter::freq_xlating_fir_filter_fcc::make "FIR filter combined with frequency translation with float input, gr_complex output and gr_complex taps.

This class efficiently combines a frequency translation (typically \"down conversion\") with a FIR filter (typically low-pass) and decimation. It is ideally suited for a \"channel
selection filter\" and can be efficiently used to select and decimate a narrow band signal out of wide bandwidth input.

Uses a single input array to produce a single output array. Additional inputs and/or outputs are ignored.

Constructor Specific Documentation:

FIR filter with float input, gr_complex output, and gr_complex taps that also frequency translates a signal from .

Construct a FIR filter with the given taps and a composite frequency translation that shifts center_freq down to zero Hz. The frequency translation logically comes before the filtering operation.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type gr_complex
    center_freq : Center frequency of signal to down convert from (Hz)
    sampling_freq : Sampling rate of signal (in Hz)"

%feature("docstring") gr::filter::freq_xlating_fir_filter_fcf "FIR filter combined with frequency translation with float input, gr_complex output and float taps.

This class efficiently combines a frequency translation (typically \"down conversion\") with a FIR filter (typically low-pass) and decimation. It is ideally suited for a \"channel
selection filter\" and can be efficiently used to select and decimate a narrow band signal out of wide bandwidth input.

Uses a single input array to produce a single output array. Additional inputs and/or outputs are ignored.

Constructor Specific Documentation:

FIR filter with float input, gr_complex output, and float taps that also frequency translates a signal from .

Construct a FIR filter with the given taps and a composite frequency translation that shifts center_freq down to zero Hz. The frequency translation logically comes before the filtering operation.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type float
    center_freq : Center frequency of signal to down convert from (Hz)
    sampling_freq : Sampling rate of signal (in Hz)"









%feature("docstring") gr::filter::freq_xlating_fir_filter_fcf::make "FIR filter combined with frequency translation with float input, gr_complex output and float taps.

This class efficiently combines a frequency translation (typically \"down conversion\") with a FIR filter (typically low-pass) and decimation. It is ideally suited for a \"channel
selection filter\" and can be efficiently used to select and decimate a narrow band signal out of wide bandwidth input.

Uses a single input array to produce a single output array. Additional inputs and/or outputs are ignored.

Constructor Specific Documentation:

FIR filter with float input, gr_complex output, and float taps that also frequency translates a signal from .

Construct a FIR filter with the given taps and a composite frequency translation that shifts center_freq down to zero Hz. The frequency translation logically comes before the filtering operation.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type float
    center_freq : Center frequency of signal to down convert from (Hz)
    sampling_freq : Sampling rate of signal (in Hz)"

%feature("docstring") gr::filter::freq_xlating_fir_filter_scc "FIR filter combined with frequency translation with short input, gr_complex output and gr_complex taps.

This class efficiently combines a frequency translation (typically \"down conversion\") with a FIR filter (typically low-pass) and decimation. It is ideally suited for a \"channel
selection filter\" and can be efficiently used to select and decimate a narrow band signal out of wide bandwidth input.

Uses a single input array to produce a single output array. Additional inputs and/or outputs are ignored.

Constructor Specific Documentation:

FIR filter with short input, gr_complex output, and gr_complex taps that also frequency translates a signal from .

Construct a FIR filter with the given taps and a composite frequency translation that shifts center_freq down to zero Hz. The frequency translation logically comes before the filtering operation.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type gr_complex
    center_freq : Center frequency of signal to down convert from (Hz)
    sampling_freq : Sampling rate of signal (in Hz)"









%feature("docstring") gr::filter::freq_xlating_fir_filter_scc::make "FIR filter combined with frequency translation with short input, gr_complex output and gr_complex taps.

This class efficiently combines a frequency translation (typically \"down conversion\") with a FIR filter (typically low-pass) and decimation. It is ideally suited for a \"channel
selection filter\" and can be efficiently used to select and decimate a narrow band signal out of wide bandwidth input.

Uses a single input array to produce a single output array. Additional inputs and/or outputs are ignored.

Constructor Specific Documentation:

FIR filter with short input, gr_complex output, and gr_complex taps that also frequency translates a signal from .

Construct a FIR filter with the given taps and a composite frequency translation that shifts center_freq down to zero Hz. The frequency translation logically comes before the filtering operation.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type gr_complex
    center_freq : Center frequency of signal to down convert from (Hz)
    sampling_freq : Sampling rate of signal (in Hz)"

%feature("docstring") gr::filter::freq_xlating_fir_filter_scf "FIR filter combined with frequency translation with short input, gr_complex output and float taps.

This class efficiently combines a frequency translation (typically \"down conversion\") with a FIR filter (typically low-pass) and decimation. It is ideally suited for a \"channel
selection filter\" and can be efficiently used to select and decimate a narrow band signal out of wide bandwidth input.

Uses a single input array to produce a single output array. Additional inputs and/or outputs are ignored.

Constructor Specific Documentation:

FIR filter with short input, gr_complex output, and float taps that also frequency translates a signal from .

Construct a FIR filter with the given taps and a composite frequency translation that shifts center_freq down to zero Hz. The frequency translation logically comes before the filtering operation.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type float
    center_freq : Center frequency of signal to down convert from (Hz)
    sampling_freq : Sampling rate of signal (in Hz)"









%feature("docstring") gr::filter::freq_xlating_fir_filter_scf::make "FIR filter combined with frequency translation with short input, gr_complex output and float taps.

This class efficiently combines a frequency translation (typically \"down conversion\") with a FIR filter (typically low-pass) and decimation. It is ideally suited for a \"channel
selection filter\" and can be efficiently used to select and decimate a narrow band signal out of wide bandwidth input.

Uses a single input array to produce a single output array. Additional inputs and/or outputs are ignored.

Constructor Specific Documentation:

FIR filter with short input, gr_complex output, and float taps that also frequency translates a signal from .

Construct a FIR filter with the given taps and a composite frequency translation that shifts center_freq down to zero Hz. The frequency translation logically comes before the filtering operation.

Args:
    decimation : set the integer decimation rate
    taps : a vector/list of taps of type float
    center_freq : Center frequency of signal to down convert from (Hz)
    sampling_freq : Sampling rate of signal (in Hz)"

%feature("docstring") gr::filter::hilbert_fc "Hilbert transformer.

real output is input appropriately delayed. imaginary output is hilbert filtered (90 degree phase shift) version of input.

Constructor Specific Documentation:

Build a Hilbert transformer filter block.

Args:
    ntaps : The number of taps for the filter.
    window : Window type (see firdes::win_type) to use.
    beta : Beta value for a Kaiser window."

%feature("docstring") gr::filter::hilbert_fc::make "Hilbert transformer.

real output is input appropriately delayed. imaginary output is hilbert filtered (90 degree phase shift) version of input.

Constructor Specific Documentation:

Build a Hilbert transformer filter block.

Args:
    ntaps : The number of taps for the filter.
    window : Window type (see firdes::win_type) to use.
    beta : Beta value for a Kaiser window."

%feature("docstring") gr::filter::iir_filter_ccc "IIR filter with complex input, complex output, and complex taps.

This filter uses the Direct Form I implementation, where  contains the feed-forward taps, and  the feedback ones.

 The old style of the IIR filter uses feedback taps that are negative of what most definitions use (scipy and Matlab among them). This parameter keeps using the old GNU Radio style and is set to TRUE by default. When taps generated from scipy, Matlab, or gr_filter_design, use the new style by setting this to FALSE.

The input and output satisfy a difference equation of the form 

 
y[n] - \sum_{k=1}^{M} a_k y[n-k] = \sum_{k=0}^{N} b_k x[n-k]


with the corresponding rational system function 

 
H(z) = \ frac{\sum_{k=0}^{M} b_k z^{-k}}{1 - \sum_{k=1}^{N} a_k z^{-k}}

Constructor Specific Documentation:



Args:
    fftaps : 
    fbtaps : 
    oldstyle : "



%feature("docstring") gr::filter::iir_filter_ccc::make "IIR filter with complex input, complex output, and complex taps.

This filter uses the Direct Form I implementation, where  contains the feed-forward taps, and  the feedback ones.

 The old style of the IIR filter uses feedback taps that are negative of what most definitions use (scipy and Matlab among them). This parameter keeps using the old GNU Radio style and is set to TRUE by default. When taps generated from scipy, Matlab, or gr_filter_design, use the new style by setting this to FALSE.

The input and output satisfy a difference equation of the form 

 
y[n] - \sum_{k=1}^{M} a_k y[n-k] = \sum_{k=0}^{N} b_k x[n-k]


with the corresponding rational system function 

 
H(z) = \ frac{\sum_{k=0}^{M} b_k z^{-k}}{1 - \sum_{k=1}^{N} a_k z^{-k}}

Constructor Specific Documentation:



Args:
    fftaps : 
    fbtaps : 
    oldstyle : "

%feature("docstring") gr::filter::iir_filter_ccd "IIR filter with complex input, complex output, and double taps.

This filter uses the Direct Form I implementation, where  contains the feed-forward taps, and  the feedback ones.

 The old style of the IIR filter uses feedback taps that are negative of what most definitions use (scipy and Matlab among them). This parameter keeps using the old GNU Radio style and is set to TRUE by default. When taps generated from scipy, Matlab, or gr_filter_design, use the new style by setting this to FALSE.

The input and output satisfy a difference equation of the form 

 
y[n] - \sum_{k=1}^{M} a_k y[n-k] = \sum_{k=0}^{N} b_k x[n-k]


with the corresponding rational system function 

 
H(z) = \ frac{\sum_{k=0}^{M} b_k z^{-k}}{1 - \sum_{k=1}^{N} a_k z^{-k}}

Constructor Specific Documentation:



Args:
    fftaps : 
    fbtaps : 
    oldstyle : "



%feature("docstring") gr::filter::iir_filter_ccd::make "IIR filter with complex input, complex output, and double taps.

This filter uses the Direct Form I implementation, where  contains the feed-forward taps, and  the feedback ones.

 The old style of the IIR filter uses feedback taps that are negative of what most definitions use (scipy and Matlab among them). This parameter keeps using the old GNU Radio style and is set to TRUE by default. When taps generated from scipy, Matlab, or gr_filter_design, use the new style by setting this to FALSE.

The input and output satisfy a difference equation of the form 

 
y[n] - \sum_{k=1}^{M} a_k y[n-k] = \sum_{k=0}^{N} b_k x[n-k]


with the corresponding rational system function 

 
H(z) = \ frac{\sum_{k=0}^{M} b_k z^{-k}}{1 - \sum_{k=1}^{N} a_k z^{-k}}

Constructor Specific Documentation:



Args:
    fftaps : 
    fbtaps : 
    oldstyle : "

%feature("docstring") gr::filter::iir_filter_ccf "IIR filter with complex input, complex output, and float taps.

This filter uses the Direct Form I implementation, where  contains the feed-forward taps, and  the feedback ones.

 The old style of the IIR filter uses feedback taps that are negative of what most definitions use (scipy and Matlab among them). This parameter keeps using the old GNU Radio style and is set to TRUE by default. When taps generated from scipy, Matlab, or gr_filter_design, use the new style by setting this to FALSE.

The input and output satisfy a difference equation of the form 

 
y[n] - \sum_{k=1}^{M} a_k y[n-k] = \sum_{k=0}^{N} b_k x[n-k]


with the corresponding rational system function 

 
H(z) = \ frac{\sum_{k=0}^{M} b_k z^{-k}}{1 - \sum_{k=1}^{N} a_k z^{-k}}

Constructor Specific Documentation:



Args:
    fftaps : 
    fbtaps : 
    oldstyle : "



%feature("docstring") gr::filter::iir_filter_ccf::make "IIR filter with complex input, complex output, and float taps.

This filter uses the Direct Form I implementation, where  contains the feed-forward taps, and  the feedback ones.

 The old style of the IIR filter uses feedback taps that are negative of what most definitions use (scipy and Matlab among them). This parameter keeps using the old GNU Radio style and is set to TRUE by default. When taps generated from scipy, Matlab, or gr_filter_design, use the new style by setting this to FALSE.

The input and output satisfy a difference equation of the form 

 
y[n] - \sum_{k=1}^{M} a_k y[n-k] = \sum_{k=0}^{N} b_k x[n-k]


with the corresponding rational system function 

 
H(z) = \ frac{\sum_{k=0}^{M} b_k z^{-k}}{1 - \sum_{k=1}^{N} a_k z^{-k}}

Constructor Specific Documentation:



Args:
    fftaps : 
    fbtaps : 
    oldstyle : "

%feature("docstring") gr::filter::iir_filter_ccz "IIR filter with complex input, complex output, and complex (double) taps.

This filter uses the Direct Form I implementation, where  contains the feed-forward taps, and  the feedback ones.

 The old style of the IIR filter uses feedback taps that are negative of what most definitions use (scipy and Matlab among them). This parameter keeps using the old GNU Radio style and is set to TRUE by default. When taps generated from scipy, Matlab, or gr_filter_design, use the new style by setting this to FALSE.

The input and output satisfy a difference equation of the form 

 
y[n] - \sum_{k=1}^{M} a_k y[n-k] = \sum_{k=0}^{N} b_k x[n-k]


with the corresponding rational system function 

 
H(z) = \ frac{\sum_{k=0}^{M} b_k z^{-k}}{1 - \sum_{k=1}^{N} a_k z^{-k}}

Constructor Specific Documentation:



Args:
    fftaps : 
    fbtaps : 
    oldstyle : "



%feature("docstring") gr::filter::iir_filter_ccz::make "IIR filter with complex input, complex output, and complex (double) taps.

This filter uses the Direct Form I implementation, where  contains the feed-forward taps, and  the feedback ones.

 The old style of the IIR filter uses feedback taps that are negative of what most definitions use (scipy and Matlab among them). This parameter keeps using the old GNU Radio style and is set to TRUE by default. When taps generated from scipy, Matlab, or gr_filter_design, use the new style by setting this to FALSE.

The input and output satisfy a difference equation of the form 

 
y[n] - \sum_{k=1}^{M} a_k y[n-k] = \sum_{k=0}^{N} b_k x[n-k]


with the corresponding rational system function 

 
H(z) = \ frac{\sum_{k=0}^{M} b_k z^{-k}}{1 - \sum_{k=1}^{N} a_k z^{-k}}

Constructor Specific Documentation:



Args:
    fftaps : 
    fbtaps : 
    oldstyle : "

%feature("docstring") gr::filter::iir_filter_ffd "IIR filter with float input, float output and double taps.

This filter uses the Direct Form I implementation, where  contains the feed-forward taps, and  the feedback ones.

 The old style of the IIR filter uses feedback taps that are negative of what most definitions use (scipy and Matlab among them). This parameter keeps using the old GNU Radio style and is set to TRUE by default. When taps generated from scipy, Matlab, or gr_filter_design, use the new style by setting this to FALSE.

The input and output satisfy a difference equation of the form 

 
y[n] - \sum_{k=1}^{M} a_k y[n-k] = \sum_{k=0}^{N} b_k x[n-k]


with the corresponding rational system function 

 
H(z) = \ frac{\sum_{k=0}^{M} b_k z^{-k}}{1 - \sum_{k=1}^{N} a_k z^{-k}}

Constructor Specific Documentation:



Args:
    fftaps : 
    fbtaps : 
    oldstyle : "



%feature("docstring") gr::filter::iir_filter_ffd::make "IIR filter with float input, float output and double taps.

This filter uses the Direct Form I implementation, where  contains the feed-forward taps, and  the feedback ones.

 The old style of the IIR filter uses feedback taps that are negative of what most definitions use (scipy and Matlab among them). This parameter keeps using the old GNU Radio style and is set to TRUE by default. When taps generated from scipy, Matlab, or gr_filter_design, use the new style by setting this to FALSE.

The input and output satisfy a difference equation of the form 

 
y[n] - \sum_{k=1}^{M} a_k y[n-k] = \sum_{k=0}^{N} b_k x[n-k]


with the corresponding rational system function 

 
H(z) = \ frac{\sum_{k=0}^{M} b_k z^{-k}}{1 - \sum_{k=1}^{N} a_k z^{-k}}

Constructor Specific Documentation:



Args:
    fftaps : 
    fbtaps : 
    oldstyle : "

%feature("docstring") gr::filter::interp_fir_filter_ccc "Interpolating FIR filter with gr_complex input, gr_complex output and gr_complex taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type gr_complex. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as up-samplers (or interpolators) by specifying an integer value for .

Constructor Specific Documentation:

Interpolating FIR filter with gr_complex input, gr_complex output, and gr_complex taps.

Args:
    interpolation : set the integer interpolation rate
    taps : a vector/list of taps of type gr_complex"





%feature("docstring") gr::filter::interp_fir_filter_ccc::make "Interpolating FIR filter with gr_complex input, gr_complex output and gr_complex taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type gr_complex. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as up-samplers (or interpolators) by specifying an integer value for .

Constructor Specific Documentation:

Interpolating FIR filter with gr_complex input, gr_complex output, and gr_complex taps.

Args:
    interpolation : set the integer interpolation rate
    taps : a vector/list of taps of type gr_complex"

%feature("docstring") gr::filter::interp_fir_filter_ccf "Interpolating FIR filter with gr_complex input, gr_complex output and float taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type float. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as up-samplers (or interpolators) by specifying an integer value for .

Constructor Specific Documentation:

Interpolating FIR filter with gr_complex input, gr_complex output, and float taps.

Args:
    interpolation : set the integer interpolation rate
    taps : a vector/list of taps of type float"





%feature("docstring") gr::filter::interp_fir_filter_ccf::make "Interpolating FIR filter with gr_complex input, gr_complex output and float taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type float. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as up-samplers (or interpolators) by specifying an integer value for .

Constructor Specific Documentation:

Interpolating FIR filter with gr_complex input, gr_complex output, and float taps.

Args:
    interpolation : set the integer interpolation rate
    taps : a vector/list of taps of type float"

%feature("docstring") gr::filter::interp_fir_filter_fcc "Interpolating FIR filter with float input, gr_complex output and gr_complex taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type gr_complex. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as up-samplers (or interpolators) by specifying an integer value for .

Constructor Specific Documentation:

Interpolating FIR filter with float input, gr_complex output, and gr_complex taps.

Args:
    interpolation : set the integer interpolation rate
    taps : a vector/list of taps of type gr_complex"





%feature("docstring") gr::filter::interp_fir_filter_fcc::make "Interpolating FIR filter with float input, gr_complex output and gr_complex taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type gr_complex. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as up-samplers (or interpolators) by specifying an integer value for .

Constructor Specific Documentation:

Interpolating FIR filter with float input, gr_complex output, and gr_complex taps.

Args:
    interpolation : set the integer interpolation rate
    taps : a vector/list of taps of type gr_complex"

%feature("docstring") gr::filter::interp_fir_filter_fff "Interpolating FIR filter with float input, float output and float taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type float. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as up-samplers (or interpolators) by specifying an integer value for .

Constructor Specific Documentation:

Interpolating FIR filter with float input, float output, and float taps.

Args:
    interpolation : set the integer interpolation rate
    taps : a vector/list of taps of type float"





%feature("docstring") gr::filter::interp_fir_filter_fff::make "Interpolating FIR filter with float input, float output and float taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type float. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as up-samplers (or interpolators) by specifying an integer value for .

Constructor Specific Documentation:

Interpolating FIR filter with float input, float output, and float taps.

Args:
    interpolation : set the integer interpolation rate
    taps : a vector/list of taps of type float"

%feature("docstring") gr::filter::interp_fir_filter_fsf "Interpolating FIR filter with float input, short output and float taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type float. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as up-samplers (or interpolators) by specifying an integer value for .

Constructor Specific Documentation:

Interpolating FIR filter with float input, short output, and float taps.

Args:
    interpolation : set the integer interpolation rate
    taps : a vector/list of taps of type float"





%feature("docstring") gr::filter::interp_fir_filter_fsf::make "Interpolating FIR filter with float input, short output and float taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type float. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as up-samplers (or interpolators) by specifying an integer value for .

Constructor Specific Documentation:

Interpolating FIR filter with float input, short output, and float taps.

Args:
    interpolation : set the integer interpolation rate
    taps : a vector/list of taps of type float"

%feature("docstring") gr::filter::interp_fir_filter_scc "Interpolating FIR filter with short input, gr_complex output and gr_complex taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type gr_complex. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as up-samplers (or interpolators) by specifying an integer value for .

Constructor Specific Documentation:

Interpolating FIR filter with short input, gr_complex output, and gr_complex taps.

Args:
    interpolation : set the integer interpolation rate
    taps : a vector/list of taps of type gr_complex"





%feature("docstring") gr::filter::interp_fir_filter_scc::make "Interpolating FIR filter with short input, gr_complex output and gr_complex taps.

The fir_filter_XXX blocks create finite impulse response (FIR) filters that perform the convolution in the time domain:



The taps are a C++ vector (or Python list) of values of the type specified by the third letter in the block's suffix. For this block, the value is of type gr_complex. Taps can be created using the firdes or optfir tools.

These versions of the filter can also act as up-samplers (or interpolators) by specifying an integer value for .

Constructor Specific Documentation:

Interpolating FIR filter with short input, gr_complex output, and gr_complex taps.

Args:
    interpolation : set the integer interpolation rate
    taps : a vector/list of taps of type gr_complex"

%feature("docstring") gr::filter::pfb_arb_resampler_ccc "Polyphase filterbank arbitrary resampler with gr_complex input, gr_complex output and gr_complex taps.

This block takes in a signal stream and calls gr::filter::kernel::pfb_arb_resampler_ccc to perform arbitrary resampling on the stream.

Output sampling rate is  * input rate.

Constructor Specific Documentation:

Build the polyphase filterbank arbitrary resampler.

Args:
    rate : (float) Specifies the resampling rate to use
    taps : (vector/list of complex) The prototype filter to populate the filterbank. The taps should be generated at the filter_size sampling rate.
    filter_size : (unsigned int) The number of filters in the filter bank. This is directly related to quantization noise introduced during the resampling. Defaults to 32 filters."

%feature("docstring") gr::filter::pfb_arb_resampler_ccc::set_taps "Resets the filterbank's filter taps with the new prototype filter"

%feature("docstring") gr::filter::pfb_arb_resampler_ccc::taps "Return a vector<vector<>> of the filterbank taps"

%feature("docstring") gr::filter::pfb_arb_resampler_ccc::print_taps "Print all of the filterbank taps to screen."

%feature("docstring") gr::filter::pfb_arb_resampler_ccc::set_rate "Sets the resampling rate of the block."

%feature("docstring") gr::filter::pfb_arb_resampler_ccc::set_phase "Sets the current phase offset in radians (0 to 2pi)."

%feature("docstring") gr::filter::pfb_arb_resampler_ccc::phase "Gets the current phase of the resampler in radians (2 to 2pi)."

%feature("docstring") gr::filter::pfb_arb_resampler_ccc::taps_per_filter "Gets the number of taps per filter."

%feature("docstring") gr::filter::pfb_arb_resampler_ccc::interpolation_rate "Gets the interpolation rate of the filter."

%feature("docstring") gr::filter::pfb_arb_resampler_ccc::decimation_rate "Gets the decimation rate of the filter."

%feature("docstring") gr::filter::pfb_arb_resampler_ccc::fractional_rate "Gets the fractional rate of the filter."

%feature("docstring") gr::filter::pfb_arb_resampler_ccc::group_delay "Get the group delay of the filter."

%feature("docstring") gr::filter::pfb_arb_resampler_ccc::phase_offset "Calculates the phase offset expected by a sine wave of frequency  and sampling rate  (assuming input sine wave has 0 degree phase)."

%feature("docstring") gr::filter::pfb_arb_resampler_ccc::make "Polyphase filterbank arbitrary resampler with gr_complex input, gr_complex output and gr_complex taps.

This block takes in a signal stream and calls gr::filter::kernel::pfb_arb_resampler_ccc to perform arbitrary resampling on the stream.

Output sampling rate is  * input rate.

Constructor Specific Documentation:

Build the polyphase filterbank arbitrary resampler.

Args:
    rate : (float) Specifies the resampling rate to use
    taps : (vector/list of complex) The prototype filter to populate the filterbank. The taps should be generated at the filter_size sampling rate.
    filter_size : (unsigned int) The number of filters in the filter bank. This is directly related to quantization noise introduced during the resampling. Defaults to 32 filters."

%feature("docstring") gr::filter::pfb_arb_resampler_ccf "Polyphase filterbank arbitrary resampler with gr_complex input, gr_complex output and float taps.

This block takes in a signal stream and calls gr::filter::kernel::pfb_arb_resampler_ccf to perform arbitrary resampling on the stream.

Output sampling rate is  * input rate.

Constructor Specific Documentation:

Build the polyphase filterbank arbitrary resampler.

Args:
    rate : (float) Specifies the resampling rate to use
    taps : (vector/list of floats) The prototype filter to populate the filterbank. The taps should be generated at the filter_size sampling rate.
    filter_size : (unsigned int) The number of filters in the filter bank. This is directly related to quantization noise introduced during the resampling. Defaults to 32 filters."

%feature("docstring") gr::filter::pfb_arb_resampler_ccf::set_taps "Resets the filterbank's filter taps with the new prototype filter"

%feature("docstring") gr::filter::pfb_arb_resampler_ccf::taps "Return a vector<vector<>> of the filterbank taps"

%feature("docstring") gr::filter::pfb_arb_resampler_ccf::print_taps "Print all of the filterbank taps to screen."

%feature("docstring") gr::filter::pfb_arb_resampler_ccf::set_rate "Sets the resampling rate of the block."

%feature("docstring") gr::filter::pfb_arb_resampler_ccf::set_phase "Sets the current phase offset in radians (0 to 2pi)."

%feature("docstring") gr::filter::pfb_arb_resampler_ccf::phase "Gets the current phase of the resampler in radians (2 to 2pi)."

%feature("docstring") gr::filter::pfb_arb_resampler_ccf::taps_per_filter "Gets the number of taps per filter."

%feature("docstring") gr::filter::pfb_arb_resampler_ccf::interpolation_rate "Gets the interpolation rate of the filter."

%feature("docstring") gr::filter::pfb_arb_resampler_ccf::decimation_rate "Gets the decimation rate of the filter."

%feature("docstring") gr::filter::pfb_arb_resampler_ccf::fractional_rate "Gets the fractional rate of the filter."

%feature("docstring") gr::filter::pfb_arb_resampler_ccf::group_delay "Get the group delay of the filter."

%feature("docstring") gr::filter::pfb_arb_resampler_ccf::phase_offset "Calculates the phase offset expected by a sine wave of frequency  and sampling rate  (assuming input sine wave has 0 degree phase)."

%feature("docstring") gr::filter::pfb_arb_resampler_ccf::make "Polyphase filterbank arbitrary resampler with gr_complex input, gr_complex output and float taps.

This block takes in a signal stream and calls gr::filter::kernel::pfb_arb_resampler_ccf to perform arbitrary resampling on the stream.

Output sampling rate is  * input rate.

Constructor Specific Documentation:

Build the polyphase filterbank arbitrary resampler.

Args:
    rate : (float) Specifies the resampling rate to use
    taps : (vector/list of floats) The prototype filter to populate the filterbank. The taps should be generated at the filter_size sampling rate.
    filter_size : (unsigned int) The number of filters in the filter bank. This is directly related to quantization noise introduced during the resampling. Defaults to 32 filters."

%feature("docstring") gr::filter::pfb_arb_resampler_fff "Polyphase filterbank arbitrary resampler with float input, float output and float taps.

This block takes in a signal stream and performs arbitrary resampling. The resampling rate can be any real number . The resampling is done by constructing  filters where  is the interpolation rate. We then calculate  where .

Using  and , we can perform rational resampling where  is a rational number close to the input rate  where we have  filters and we cycle through them as a polyphase filterbank with a stride of  so that .

To get the arbitrary rate, we want to interpolate between two points. For each value out, we take an output from the current filter, , and the next filter  and then linearly interpolate between the two based on the real resampling rate we want.

The linear interpolation only provides us with an approximation to the real sampling rate specified. The error is a quantization error between the two filters we used as our interpolation points. To this end, the number of filters, , used determines the quantization error; the larger , the smaller the noise. You can design for a specified noise floor by setting the filter size (parameters ). The size defaults to 32 filters, which is about as good as most implementations need.

The trick with designing this filter is in how to specify the taps of the prototype filter. Like the PFB interpolator, the taps are specified using the interpolated filter rate. In this case, that rate is the input sample rate multiplied by the number of filters in the filterbank, which is also the interpolation rate. All other values should be relative to this rate.

For example, for a 32-filter arbitrary resampler and using the GNU Radio's firdes utility to build the filter, we build a low-pass filter with a sampling rate of , a 3-dB bandwidth of  and a transition bandwidth of . We can also specify the out-of-band attenuation to use, , and the filter window function (a Blackman-harris window in this case). The first input is the gain of the filter, which we specify here as the interpolation rate ().



The theory behind this block can be found in Chapter 7.5 of the following book:

Constructor Specific Documentation:

Build the polyphase filterbank arbitrary resampler.

Args:
    rate : (float) Specifies the resampling rate to use
    taps : (vector/list of floats) The prototype filter to populate the filterbank. The taps should be generated at the filter_size sampling rate.
    filter_size : (unsigned int) The number of filters in the filter bank. This is directly related to quantization noise introduced during the resampling. Defaults to 32 filters."

%feature("docstring") gr::filter::pfb_arb_resampler_fff::set_taps "Resets the filterbank's filter taps with the new prototype filter"

%feature("docstring") gr::filter::pfb_arb_resampler_fff::taps "Return a vector<vector<>> of the filterbank taps"

%feature("docstring") gr::filter::pfb_arb_resampler_fff::print_taps "Print all of the filterbank taps to screen."

%feature("docstring") gr::filter::pfb_arb_resampler_fff::set_rate "Sets the resampling rate of the block."

%feature("docstring") gr::filter::pfb_arb_resampler_fff::set_phase "Sets the current phase offset in radians (0 to 2pi)."

%feature("docstring") gr::filter::pfb_arb_resampler_fff::phase "Gets the current phase of the resampler in radians (2 to 2pi)."

%feature("docstring") gr::filter::pfb_arb_resampler_fff::taps_per_filter "Gets the number of taps per filter."

%feature("docstring") gr::filter::pfb_arb_resampler_fff::interpolation_rate "Gets the interpolation rate of the filter."

%feature("docstring") gr::filter::pfb_arb_resampler_fff::decimation_rate "Gets the decimation rate of the filter."

%feature("docstring") gr::filter::pfb_arb_resampler_fff::fractional_rate "Gets the fractional rate of the filter."

%feature("docstring") gr::filter::pfb_arb_resampler_fff::group_delay "Get the group delay of the filter."

%feature("docstring") gr::filter::pfb_arb_resampler_fff::phase_offset "Calculates the phase offset expected by a sine wave of frequency  and sampling rate  (assuming input sine wave has 0 degree phase)."

%feature("docstring") gr::filter::pfb_arb_resampler_fff::make "Polyphase filterbank arbitrary resampler with float input, float output and float taps.

This block takes in a signal stream and performs arbitrary resampling. The resampling rate can be any real number . The resampling is done by constructing  filters where  is the interpolation rate. We then calculate  where .

Using  and , we can perform rational resampling where  is a rational number close to the input rate  where we have  filters and we cycle through them as a polyphase filterbank with a stride of  so that .

To get the arbitrary rate, we want to interpolate between two points. For each value out, we take an output from the current filter, , and the next filter  and then linearly interpolate between the two based on the real resampling rate we want.

The linear interpolation only provides us with an approximation to the real sampling rate specified. The error is a quantization error between the two filters we used as our interpolation points. To this end, the number of filters, , used determines the quantization error; the larger , the smaller the noise. You can design for a specified noise floor by setting the filter size (parameters ). The size defaults to 32 filters, which is about as good as most implementations need.

The trick with designing this filter is in how to specify the taps of the prototype filter. Like the PFB interpolator, the taps are specified using the interpolated filter rate. In this case, that rate is the input sample rate multiplied by the number of filters in the filterbank, which is also the interpolation rate. All other values should be relative to this rate.

For example, for a 32-filter arbitrary resampler and using the GNU Radio's firdes utility to build the filter, we build a low-pass filter with a sampling rate of , a 3-dB bandwidth of  and a transition bandwidth of . We can also specify the out-of-band attenuation to use, , and the filter window function (a Blackman-harris window in this case). The first input is the gain of the filter, which we specify here as the interpolation rate ().



The theory behind this block can be found in Chapter 7.5 of the following book:

Constructor Specific Documentation:

Build the polyphase filterbank arbitrary resampler.

Args:
    rate : (float) Specifies the resampling rate to use
    taps : (vector/list of floats) The prototype filter to populate the filterbank. The taps should be generated at the filter_size sampling rate.
    filter_size : (unsigned int) The number of filters in the filter bank. This is directly related to quantization noise introduced during the resampling. Defaults to 32 filters."

%feature("docstring") gr::filter::pfb_channelizer_ccf "Polyphase filterbank channelizer with gr_complex input, gr_complex output and float taps.

This block takes in complex inputs and channelizes it to  channels of equal bandwidth. Each of the resulting channels is decimated to the new rate that is the input sampling rate  divided by the number of channels, .

The PFB channelizer code takes the taps generated above and builds a set of filters. The set contains filters and each filter contains ceil(taps.size()/decim) taps. Each tap from the filter prototype is sequentially inserted into the next filter. When all of the input taps are used, the remaining filters in the filterbank are filled out with 0's to make sure each filter has the same number of taps.

Each filter operates using the gr::blocks::fir_filter_XXX class of GNU Radio, which takes the input stream at  and performs the inner product calculation to  where  is the number of filter taps. To efficiently handle this in the GNU Radio structure, each filter input must come from its own input stream. So the channelizer must be provided with  streams where the input stream has been deinterleaved. This is most easily done using the gr::blocks::stream_to_streams block.

The output is then produced as a vector, where index  in the vector is the next sample from the th channel. This is most easily handled by sending the output to a gr::blocks::vector_to_streams block to handle the conversion and passing  streams out.

The input and output formatting is done using a hier_block2 called pfb_channelizer_ccf. This can take in a single stream and outputs  streams based on the behavior described above.

The filter's taps should be based on the input sampling rate.

For example, using the GNU Radio's firdes utility to building filters, we build a low-pass filter with a sampling rate of , a 3-dB bandwidth of  and a transition bandwidth of . We can also specify the out-of-band attenuation to use, , and the filter window function (a Blackman-harris window in this case). The first input is the gain of the filter, which we specify here as unity.



The filter output can also be oversampled. The oversampling rate is the ratio of the the actual output sampling rate to the normal output sampling rate. It must be rationally related to the number of channels as N/i for i in [1,N], which gives an outputsample rate of [fs/N, fs] where fs is the input sample rate and N is the number of channels.

For example, for 6 channels with fs = 6000 Hz, the normal rate is 6000/6 = 1000 Hz. Allowable oversampling rates are 6/6, 6/5, 6/4, 6/3, 6/2, and 6/1 where the output sample rate of a 6/1 oversample ratio is 6000 Hz, or 6 times the normal 1000 Hz. A rate of 6/5 = 1.2, so the output rate would be 1200 Hz.

The theory behind this block can be found in Chapter 6 of the following book:



When dealing with oversampling, the above book is still a good reference along with this paper:

Constructor Specific Documentation:

Build the polyphase filterbank decimator. 
For example, for 6 channels with fs = 6000 Hz, the normal rate is 6000/6 = 1000 Hz. Allowable oversampling rates are 6/6, 6/5, 6/4, 6/3, 6/2, and 6/1 where the output sample rate of a 6/1 oversample ratio is 6000 Hz, or 6 times the normal 1000 Hz.

Args:
    numchans : (unsigned integer) Specifies the number of channels
    taps : (vector/list of floats) The prototype filter to populate the filterbank.
    oversample_rate : (float) The oversampling rate is the ratio of the the actual output sampling rate to the normal output sampling rate. It must be rationally related to the number of channels as N/i for i in [1,N], which gives an outputsample rate of [fs/N, fs] where fs is the input sample rate and N is the number of channels."

%feature("docstring") gr::filter::pfb_channelizer_ccf::set_taps "Resets the filterbank's filter taps with the new prototype filter"

%feature("docstring") gr::filter::pfb_channelizer_ccf::print_taps "Print all of the filterbank taps to screen."

%feature("docstring") gr::filter::pfb_channelizer_ccf::taps "Return a vector<vector<>> of the filterbank taps"

%feature("docstring") gr::filter::pfb_channelizer_ccf::set_channel_map "Set the channel map. Channels are numbers as: 

So output stream 0 comes from channel 0, etc. Setting a new channel map allows the user to specify which channel in frequency he/she wants to got to which output stream.

The map should have the same number of elements as the number of output connections from the block. The minimum value of the map is 0 (for the 0th channel) and the maximum number is N-1 where N is the number of channels.

We specify M as the number of output connections made where M <= N, so only M out of N channels are driven to an output stream. The number of items in the channel map should be at least M long. If there are more channels specified, any value in the map over M-1 will be ignored. If the size of the map is less than M the behavior is unknown (we don't wish to check every entry into the work function).

This means that if the channelizer is splitting the signal up into N channels but only M channels are specified in the map (where M <= N), then M output streams must be connected and the map and the channel numbers used must be less than N-1. Output channel number can be reused, too. By default, the map is [0...M-1] with M = N."

%feature("docstring") gr::filter::pfb_channelizer_ccf::channel_map "Gets the current channel map."

%feature("docstring") gr::filter::pfb_channelizer_ccf::make "Polyphase filterbank channelizer with gr_complex input, gr_complex output and float taps.

This block takes in complex inputs and channelizes it to  channels of equal bandwidth. Each of the resulting channels is decimated to the new rate that is the input sampling rate  divided by the number of channels, .

The PFB channelizer code takes the taps generated above and builds a set of filters. The set contains filters and each filter contains ceil(taps.size()/decim) taps. Each tap from the filter prototype is sequentially inserted into the next filter. When all of the input taps are used, the remaining filters in the filterbank are filled out with 0's to make sure each filter has the same number of taps.

Each filter operates using the gr::blocks::fir_filter_XXX class of GNU Radio, which takes the input stream at  and performs the inner product calculation to  where  is the number of filter taps. To efficiently handle this in the GNU Radio structure, each filter input must come from its own input stream. So the channelizer must be provided with  streams where the input stream has been deinterleaved. This is most easily done using the gr::blocks::stream_to_streams block.

The output is then produced as a vector, where index  in the vector is the next sample from the th channel. This is most easily handled by sending the output to a gr::blocks::vector_to_streams block to handle the conversion and passing  streams out.

The input and output formatting is done using a hier_block2 called pfb_channelizer_ccf. This can take in a single stream and outputs  streams based on the behavior described above.

The filter's taps should be based on the input sampling rate.

For example, using the GNU Radio's firdes utility to building filters, we build a low-pass filter with a sampling rate of , a 3-dB bandwidth of  and a transition bandwidth of . We can also specify the out-of-band attenuation to use, , and the filter window function (a Blackman-harris window in this case). The first input is the gain of the filter, which we specify here as unity.



The filter output can also be oversampled. The oversampling rate is the ratio of the the actual output sampling rate to the normal output sampling rate. It must be rationally related to the number of channels as N/i for i in [1,N], which gives an outputsample rate of [fs/N, fs] where fs is the input sample rate and N is the number of channels.

For example, for 6 channels with fs = 6000 Hz, the normal rate is 6000/6 = 1000 Hz. Allowable oversampling rates are 6/6, 6/5, 6/4, 6/3, 6/2, and 6/1 where the output sample rate of a 6/1 oversample ratio is 6000 Hz, or 6 times the normal 1000 Hz. A rate of 6/5 = 1.2, so the output rate would be 1200 Hz.

The theory behind this block can be found in Chapter 6 of the following book:



When dealing with oversampling, the above book is still a good reference along with this paper:

Constructor Specific Documentation:

Build the polyphase filterbank decimator. 
For example, for 6 channels with fs = 6000 Hz, the normal rate is 6000/6 = 1000 Hz. Allowable oversampling rates are 6/6, 6/5, 6/4, 6/3, 6/2, and 6/1 where the output sample rate of a 6/1 oversample ratio is 6000 Hz, or 6 times the normal 1000 Hz.

Args:
    numchans : (unsigned integer) Specifies the number of channels
    taps : (vector/list of floats) The prototype filter to populate the filterbank.
    oversample_rate : (float) The oversampling rate is the ratio of the the actual output sampling rate to the normal output sampling rate. It must be rationally related to the number of channels as N/i for i in [1,N], which gives an outputsample rate of [fs/N, fs] where fs is the input sample rate and N is the number of channels."

%feature("docstring") gr::filter::pfb_decimator_ccf "Polyphase filterbank bandpass decimator with gr_complex input, gr_complex output and float taps.

This block takes in a signal stream and performs integer down- sampling (decimation) with a polyphase filterbank. The first input is the integer specifying how much to decimate by. The second input is a vector (Python list) of floating-point taps of the prototype filter. The third input specifies the channel to extract. By default, the zeroth channel is used, which is the baseband channel (first Nyquist zone).

The  parameter specifies which channel to use since this class is capable of bandpass decimation. Given a complex input stream at a sampling rate of  and a decimation rate of , the input frequency domain is split into  channels that represent the Nyquist zones. Using the polyphase filterbank, we can select any one of these channels to decimate.

The output signal will be the basebanded and decimated signal from that channel. This concept is very similar to the PFB channelizer (see gr::filter::pfb_channelizer_ccf) where only a single channel is extracted at a time.

The filter's taps should be based on the sampling rate before decimation.

For example, using the GNU Radio's firdes utility to building filters, we build a low-pass filter with a sampling rate of , a 3-dB bandwidth of  and a transition bandwidth of . We can also specify the out-of-band attenuation to use, , and the filter window function (a Blackman-harris window in this case). The first input is the gain of the filter, which we specify here as unity.



The PFB decimator code takes the taps generated above and builds a set of filters. The set contains  filters and each filter contains ceil(taps.size()/decim) taps. Each tap from the filter prototype is sequentially inserted into the next filter. When all of the input taps are used, the remaining filters in the filterbank are filled out with 0's to make sure each filter has the same number of taps.

The theory behind this block can be found in Chapter 6 of the following book:

Constructor Specific Documentation:

Build the polyphase filterbank decimator.

Args:
    decim : (unsigned integer) Specifies the decimation rate to use
    taps : (vector/list of floats) The prototype filter to populate the filterbank.
    channel : (unsigned integer) Selects the channel to return [default=0].
    use_fft_rotator : (bool) Rotate channels using FFT method instead of exp(phi). For larger values of , the FFT method will perform better. Generally, this value of  is small (~5), but could be architecture-specific (Default: true).
    use_fft_filters : (bool) Use FFT filters (fast convolution) instead of FIR filters. FFT filters perform better for larger numbers of taps but is architecture-specific (Default: true)."

%feature("docstring") gr::filter::pfb_decimator_ccf::set_taps "Resets the filterbank's filter taps with the new prototype filter"

%feature("docstring") gr::filter::pfb_decimator_ccf::taps "Return a vector<vector<>> of the filterbank taps"

%feature("docstring") gr::filter::pfb_decimator_ccf::print_taps "Print all of the filterbank taps to screen."



%feature("docstring") gr::filter::pfb_decimator_ccf::make "Polyphase filterbank bandpass decimator with gr_complex input, gr_complex output and float taps.

This block takes in a signal stream and performs integer down- sampling (decimation) with a polyphase filterbank. The first input is the integer specifying how much to decimate by. The second input is a vector (Python list) of floating-point taps of the prototype filter. The third input specifies the channel to extract. By default, the zeroth channel is used, which is the baseband channel (first Nyquist zone).

The  parameter specifies which channel to use since this class is capable of bandpass decimation. Given a complex input stream at a sampling rate of  and a decimation rate of , the input frequency domain is split into  channels that represent the Nyquist zones. Using the polyphase filterbank, we can select any one of these channels to decimate.

The output signal will be the basebanded and decimated signal from that channel. This concept is very similar to the PFB channelizer (see gr::filter::pfb_channelizer_ccf) where only a single channel is extracted at a time.

The filter's taps should be based on the sampling rate before decimation.

For example, using the GNU Radio's firdes utility to building filters, we build a low-pass filter with a sampling rate of , a 3-dB bandwidth of  and a transition bandwidth of . We can also specify the out-of-band attenuation to use, , and the filter window function (a Blackman-harris window in this case). The first input is the gain of the filter, which we specify here as unity.



The PFB decimator code takes the taps generated above and builds a set of filters. The set contains  filters and each filter contains ceil(taps.size()/decim) taps. Each tap from the filter prototype is sequentially inserted into the next filter. When all of the input taps are used, the remaining filters in the filterbank are filled out with 0's to make sure each filter has the same number of taps.

The theory behind this block can be found in Chapter 6 of the following book:

Constructor Specific Documentation:

Build the polyphase filterbank decimator.

Args:
    decim : (unsigned integer) Specifies the decimation rate to use
    taps : (vector/list of floats) The prototype filter to populate the filterbank.
    channel : (unsigned integer) Selects the channel to return [default=0].
    use_fft_rotator : (bool) Rotate channels using FFT method instead of exp(phi). For larger values of , the FFT method will perform better. Generally, this value of  is small (~5), but could be architecture-specific (Default: true).
    use_fft_filters : (bool) Use FFT filters (fast convolution) instead of FIR filters. FFT filters perform better for larger numbers of taps but is architecture-specific (Default: true)."

%feature("docstring") gr::filter::pfb_interpolator_ccf "Polyphase filterbank interpolator with gr_complex input, gr_complex output and float taps.

This block takes in a signal stream and performs integer up- sampling (interpolation) with a polyphase filterbank. The first input is the integer specifying how much to interpolate by. The second input is a vector (Python list) of floating-point taps of the prototype filter.

The filter's taps should be based on the interpolation rate specified. That is, the bandwidth specified is relative to the bandwidth after interpolation.

For example, using the GNU Radio's firdes utility to building filters, we build a low-pass filter with a sampling rate of , a 3-dB bandwidth of  and a transition bandwidth of . We can also specify the out-of-band attenuation to use, ATT, and the filter window function (a Blackman-harris window in this case). The first input is the gain, which is also specified as the interpolation rate so that the output levels are the same as the input (this creates an overall increase in power).



The PFB interpolator code takes the taps generated above and builds a set of filters. The set contains  filters and each filter contains ceil(taps.size()/interp) taps. Each tap from the filter prototype is sequentially inserted into the next filter. When all of the input taps are used, the remaining filters in the filterbank are filled out with 0's to make sure each filter has the same number of taps.

The theory behind this block can be found in Chapter 7.1 of the following book:

Constructor Specific Documentation:

Build the polyphase filterbank interpolator.

Args:
    interp : (unsigned integer) Specifies the interpolation rate to use
    taps : (vector/list of floats) The prototype filter to populate the filterbank. The taps should be generated at the interpolated sampling rate."

%feature("docstring") gr::filter::pfb_interpolator_ccf::set_taps "Resets the filterbank's filter taps with the new prototype filter"

%feature("docstring") gr::filter::pfb_interpolator_ccf::taps "Return a vector<vector<>> of the filterbank taps"

%feature("docstring") gr::filter::pfb_interpolator_ccf::print_taps "Print all of the filterbank taps to screen."

%feature("docstring") gr::filter::pfb_interpolator_ccf::make "Polyphase filterbank interpolator with gr_complex input, gr_complex output and float taps.

This block takes in a signal stream and performs integer up- sampling (interpolation) with a polyphase filterbank. The first input is the integer specifying how much to interpolate by. The second input is a vector (Python list) of floating-point taps of the prototype filter.

The filter's taps should be based on the interpolation rate specified. That is, the bandwidth specified is relative to the bandwidth after interpolation.

For example, using the GNU Radio's firdes utility to building filters, we build a low-pass filter with a sampling rate of , a 3-dB bandwidth of  and a transition bandwidth of . We can also specify the out-of-band attenuation to use, ATT, and the filter window function (a Blackman-harris window in this case). The first input is the gain, which is also specified as the interpolation rate so that the output levels are the same as the input (this creates an overall increase in power).



The PFB interpolator code takes the taps generated above and builds a set of filters. The set contains  filters and each filter contains ceil(taps.size()/interp) taps. Each tap from the filter prototype is sequentially inserted into the next filter. When all of the input taps are used, the remaining filters in the filterbank are filled out with 0's to make sure each filter has the same number of taps.

The theory behind this block can be found in Chapter 7.1 of the following book:

Constructor Specific Documentation:

Build the polyphase filterbank interpolator.

Args:
    interp : (unsigned integer) Specifies the interpolation rate to use
    taps : (vector/list of floats) The prototype filter to populate the filterbank. The taps should be generated at the interpolated sampling rate."

%feature("docstring") gr::filter::pfb_synthesizer_ccf "Polyphase synthesis filterbank with gr_complex input, gr_complex output and float taps.

The PFB synthesis filterbank combines multiple baseband signals into a single channelized signal. Each input stream is, essentially, modulated onto an output channel according the the channel mapping (see set_channel_map for details).

Setting this filterbank up means selecting the number of output channels, the prototype filter, and whether to handle channels at 2x the sample rate (this is generally used only for reconstruction filtering).

The number of channels sets the maximum number of channels to use, but not all input streams must be connected. For M total channels, we can connect inputs 0 to N where N < M-1. Because of the way GNU Radio handles stream connections, we must connect the channels consecutively, and so we must use the set_channel_map if the desired output channels are not the same as the the default mapping. This features gives us the flexibility to output to any given channel. Generally, we try to not use the channels at the edge of the spectrum to avoid issues with filtering and roll-off of the transmitter or receiver.

When using the 2x sample rate mode, we specify the number of channels that will be used. However, the actual output signal will be twice this number of channels. This is mainly important to know when setting the channel map. For M channels, the channel mapping can specy from 0 to 2M-1 channels to output onto.

For more details about this and the concepts of reconstruction filtering, see:

Constructor Specific Documentation:

Build the polyphase synthesis filterbank.

Args:
    numchans : (unsigned integer) Specifies the number of channels
    taps : (vector/list of floats) The prototype filter to populate the filterbank.
    twox : (bool) use 2x oversampling or not (default is no)"

%feature("docstring") gr::filter::pfb_synthesizer_ccf::set_taps "Resets the filterbank's filter taps with the new prototype filter"

%feature("docstring") gr::filter::pfb_synthesizer_ccf::print_taps "Print all of the filterbank taps to screen."

%feature("docstring") gr::filter::pfb_synthesizer_ccf::taps "Return a vector<vector<>> of the filterbank taps"

%feature("docstring") gr::filter::pfb_synthesizer_ccf::set_channel_map "Set the channel map. Channels are numbers as: 

So input stream 0 goes to channel 0, etc. Setting a new channel map allows the user to specify where in frequency he/she wants the input stream to go. This is especially useful to avoid putting signals into the channels on the edge of the spectrum which can either wrap around (in the case of odd number of channels) and be affected by filter rolloff in the transmitter.

The map must be at least the number of streams being sent to the block. Less and the algorithm will not have enough data to properly setup the buffers. Any more channels specified will be ignored."

%feature("docstring") gr::filter::pfb_synthesizer_ccf::channel_map "Gets the current channel map."

%feature("docstring") gr::filter::pfb_synthesizer_ccf::make "Polyphase synthesis filterbank with gr_complex input, gr_complex output and float taps.

The PFB synthesis filterbank combines multiple baseband signals into a single channelized signal. Each input stream is, essentially, modulated onto an output channel according the the channel mapping (see set_channel_map for details).

Setting this filterbank up means selecting the number of output channels, the prototype filter, and whether to handle channels at 2x the sample rate (this is generally used only for reconstruction filtering).

The number of channels sets the maximum number of channels to use, but not all input streams must be connected. For M total channels, we can connect inputs 0 to N where N < M-1. Because of the way GNU Radio handles stream connections, we must connect the channels consecutively, and so we must use the set_channel_map if the desired output channels are not the same as the the default mapping. This features gives us the flexibility to output to any given channel. Generally, we try to not use the channels at the edge of the spectrum to avoid issues with filtering and roll-off of the transmitter or receiver.

When using the 2x sample rate mode, we specify the number of channels that will be used. However, the actual output signal will be twice this number of channels. This is mainly important to know when setting the channel map. For M channels, the channel mapping can specy from 0 to 2M-1 channels to output onto.

For more details about this and the concepts of reconstruction filtering, see:

Constructor Specific Documentation:

Build the polyphase synthesis filterbank.

Args:
    numchans : (unsigned integer) Specifies the number of channels
    taps : (vector/list of floats) The prototype filter to populate the filterbank.
    twox : (bool) use 2x oversampling or not (default is no)"

%feature("docstring") gr::filter::rational_resampler_base_ccc "Rational Resampling Polyphase FIR filter with gr_complex input, gr_complex output and gr_complex taps.

Make a rational resampling FIR filter. If the input signal is at rate fs, then the output signal will be at a rate of  * fs / .

The interpolation and decimation rates should be kept as small as possible, and generally should be relatively prime to help reduce complexity in memory and computation.

The set of  supplied to this filterbank should be designed around the resampling amount and must avoid aliasing (when interpolation/decimation < 1) and images (when interpolation/decimation > 1).

As with any filter, the behavior of the filter taps (or coefficients) is determined by the highest sampling rate that the filter will ever see. In the case of a resampler that increases the sampling rate, the highest sampling rate observed is  since in the filterbank, the number of filter arms is equal to . When the resampler decreases the sampling rate (decimation > interpolation), then the highest rate is the input sample rate of the original signal. We must create a filter based around this value to reduce any aliasing that may occur from out-of-band signals.

Another way to think about how to create the filter taps is that the filter is effectively applied after interpolation and before decimation. And yet another way to think of it is that the taps should be a LPF that is at least as narrow as the narrower of the required anti-image postfilter or anti-alias prefilter.

Constructor Specific Documentation:

Make a rational resampling FIR filter.

Args:
    interpolation : The integer interpolation rate of the filter
    decimation : The integer decimation rate of the filter
    taps : The filter taps to control images and aliases"









%feature("docstring") gr::filter::rational_resampler_base_ccc::make "Rational Resampling Polyphase FIR filter with gr_complex input, gr_complex output and gr_complex taps.

Make a rational resampling FIR filter. If the input signal is at rate fs, then the output signal will be at a rate of  * fs / .

The interpolation and decimation rates should be kept as small as possible, and generally should be relatively prime to help reduce complexity in memory and computation.

The set of  supplied to this filterbank should be designed around the resampling amount and must avoid aliasing (when interpolation/decimation < 1) and images (when interpolation/decimation > 1).

As with any filter, the behavior of the filter taps (or coefficients) is determined by the highest sampling rate that the filter will ever see. In the case of a resampler that increases the sampling rate, the highest sampling rate observed is  since in the filterbank, the number of filter arms is equal to . When the resampler decreases the sampling rate (decimation > interpolation), then the highest rate is the input sample rate of the original signal. We must create a filter based around this value to reduce any aliasing that may occur from out-of-band signals.

Another way to think about how to create the filter taps is that the filter is effectively applied after interpolation and before decimation. And yet another way to think of it is that the taps should be a LPF that is at least as narrow as the narrower of the required anti-image postfilter or anti-alias prefilter.

Constructor Specific Documentation:

Make a rational resampling FIR filter.

Args:
    interpolation : The integer interpolation rate of the filter
    decimation : The integer decimation rate of the filter
    taps : The filter taps to control images and aliases"

%feature("docstring") gr::filter::rational_resampler_base_ccf "Rational Resampling Polyphase FIR filter with gr_complex input, gr_complex output and float taps.

Make a rational resampling FIR filter. If the input signal is at rate fs, then the output signal will be at a rate of  * fs / .

The interpolation and decimation rates should be kept as small as possible, and generally should be relatively prime to help reduce complexity in memory and computation.

The set of  supplied to this filterbank should be designed around the resampling amount and must avoid aliasing (when interpolation/decimation < 1) and images (when interpolation/decimation > 1).

As with any filter, the behavior of the filter taps (or coefficients) is determined by the highest sampling rate that the filter will ever see. In the case of a resampler that increases the sampling rate, the highest sampling rate observed is  since in the filterbank, the number of filter arms is equal to . When the resampler decreases the sampling rate (decimation > interpolation), then the highest rate is the input sample rate of the original signal. We must create a filter based around this value to reduce any aliasing that may occur from out-of-band signals.

Another way to think about how to create the filter taps is that the filter is effectively applied after interpolation and before decimation. And yet another way to think of it is that the taps should be a LPF that is at least as narrow as the narrower of the required anti-image postfilter or anti-alias prefilter.

Constructor Specific Documentation:

Make a rational resampling FIR filter.

Args:
    interpolation : The integer interpolation rate of the filter
    decimation : The integer decimation rate of the filter
    taps : The filter taps to control images and aliases"









%feature("docstring") gr::filter::rational_resampler_base_ccf::make "Rational Resampling Polyphase FIR filter with gr_complex input, gr_complex output and float taps.

Make a rational resampling FIR filter. If the input signal is at rate fs, then the output signal will be at a rate of  * fs / .

The interpolation and decimation rates should be kept as small as possible, and generally should be relatively prime to help reduce complexity in memory and computation.

The set of  supplied to this filterbank should be designed around the resampling amount and must avoid aliasing (when interpolation/decimation < 1) and images (when interpolation/decimation > 1).

As with any filter, the behavior of the filter taps (or coefficients) is determined by the highest sampling rate that the filter will ever see. In the case of a resampler that increases the sampling rate, the highest sampling rate observed is  since in the filterbank, the number of filter arms is equal to . When the resampler decreases the sampling rate (decimation > interpolation), then the highest rate is the input sample rate of the original signal. We must create a filter based around this value to reduce any aliasing that may occur from out-of-band signals.

Another way to think about how to create the filter taps is that the filter is effectively applied after interpolation and before decimation. And yet another way to think of it is that the taps should be a LPF that is at least as narrow as the narrower of the required anti-image postfilter or anti-alias prefilter.

Constructor Specific Documentation:

Make a rational resampling FIR filter.

Args:
    interpolation : The integer interpolation rate of the filter
    decimation : The integer decimation rate of the filter
    taps : The filter taps to control images and aliases"

%feature("docstring") gr::filter::rational_resampler_base_fcc "Rational Resampling Polyphase FIR filter with float input, gr_complex output and gr_complex taps.

Make a rational resampling FIR filter. If the input signal is at rate fs, then the output signal will be at a rate of  * fs / .

The interpolation and decimation rates should be kept as small as possible, and generally should be relatively prime to help reduce complexity in memory and computation.

The set of  supplied to this filterbank should be designed around the resampling amount and must avoid aliasing (when interpolation/decimation < 1) and images (when interpolation/decimation > 1).

As with any filter, the behavior of the filter taps (or coefficients) is determined by the highest sampling rate that the filter will ever see. In the case of a resampler that increases the sampling rate, the highest sampling rate observed is  since in the filterbank, the number of filter arms is equal to . When the resampler decreases the sampling rate (decimation > interpolation), then the highest rate is the input sample rate of the original signal. We must create a filter based around this value to reduce any aliasing that may occur from out-of-band signals.

Another way to think about how to create the filter taps is that the filter is effectively applied after interpolation and before decimation. And yet another way to think of it is that the taps should be a LPF that is at least as narrow as the narrower of the required anti-image postfilter or anti-alias prefilter.

Constructor Specific Documentation:

Make a rational resampling FIR filter.

Args:
    interpolation : The integer interpolation rate of the filter
    decimation : The integer decimation rate of the filter
    taps : The filter taps to control images and aliases"









%feature("docstring") gr::filter::rational_resampler_base_fcc::make "Rational Resampling Polyphase FIR filter with float input, gr_complex output and gr_complex taps.

Make a rational resampling FIR filter. If the input signal is at rate fs, then the output signal will be at a rate of  * fs / .

The interpolation and decimation rates should be kept as small as possible, and generally should be relatively prime to help reduce complexity in memory and computation.

The set of  supplied to this filterbank should be designed around the resampling amount and must avoid aliasing (when interpolation/decimation < 1) and images (when interpolation/decimation > 1).

As with any filter, the behavior of the filter taps (or coefficients) is determined by the highest sampling rate that the filter will ever see. In the case of a resampler that increases the sampling rate, the highest sampling rate observed is  since in the filterbank, the number of filter arms is equal to . When the resampler decreases the sampling rate (decimation > interpolation), then the highest rate is the input sample rate of the original signal. We must create a filter based around this value to reduce any aliasing that may occur from out-of-band signals.

Another way to think about how to create the filter taps is that the filter is effectively applied after interpolation and before decimation. And yet another way to think of it is that the taps should be a LPF that is at least as narrow as the narrower of the required anti-image postfilter or anti-alias prefilter.

Constructor Specific Documentation:

Make a rational resampling FIR filter.

Args:
    interpolation : The integer interpolation rate of the filter
    decimation : The integer decimation rate of the filter
    taps : The filter taps to control images and aliases"

%feature("docstring") gr::filter::rational_resampler_base_fff "Rational Resampling Polyphase FIR filter with float input, float output and float taps.

Make a rational resampling FIR filter. If the input signal is at rate fs, then the output signal will be at a rate of  * fs / .

The interpolation and decimation rates should be kept as small as possible, and generally should be relatively prime to help reduce complexity in memory and computation.

The set of  supplied to this filterbank should be designed around the resampling amount and must avoid aliasing (when interpolation/decimation < 1) and images (when interpolation/decimation > 1).

As with any filter, the behavior of the filter taps (or coefficients) is determined by the highest sampling rate that the filter will ever see. In the case of a resampler that increases the sampling rate, the highest sampling rate observed is  since in the filterbank, the number of filter arms is equal to . When the resampler decreases the sampling rate (decimation > interpolation), then the highest rate is the input sample rate of the original signal. We must create a filter based around this value to reduce any aliasing that may occur from out-of-band signals.

Another way to think about how to create the filter taps is that the filter is effectively applied after interpolation and before decimation. And yet another way to think of it is that the taps should be a LPF that is at least as narrow as the narrower of the required anti-image postfilter or anti-alias prefilter.

Constructor Specific Documentation:

Make a rational resampling FIR filter.

Args:
    interpolation : The integer interpolation rate of the filter
    decimation : The integer decimation rate of the filter
    taps : The filter taps to control images and aliases"









%feature("docstring") gr::filter::rational_resampler_base_fff::make "Rational Resampling Polyphase FIR filter with float input, float output and float taps.

Make a rational resampling FIR filter. If the input signal is at rate fs, then the output signal will be at a rate of  * fs / .

The interpolation and decimation rates should be kept as small as possible, and generally should be relatively prime to help reduce complexity in memory and computation.

The set of  supplied to this filterbank should be designed around the resampling amount and must avoid aliasing (when interpolation/decimation < 1) and images (when interpolation/decimation > 1).

As with any filter, the behavior of the filter taps (or coefficients) is determined by the highest sampling rate that the filter will ever see. In the case of a resampler that increases the sampling rate, the highest sampling rate observed is  since in the filterbank, the number of filter arms is equal to . When the resampler decreases the sampling rate (decimation > interpolation), then the highest rate is the input sample rate of the original signal. We must create a filter based around this value to reduce any aliasing that may occur from out-of-band signals.

Another way to think about how to create the filter taps is that the filter is effectively applied after interpolation and before decimation. And yet another way to think of it is that the taps should be a LPF that is at least as narrow as the narrower of the required anti-image postfilter or anti-alias prefilter.

Constructor Specific Documentation:

Make a rational resampling FIR filter.

Args:
    interpolation : The integer interpolation rate of the filter
    decimation : The integer decimation rate of the filter
    taps : The filter taps to control images and aliases"

%feature("docstring") gr::filter::rational_resampler_base_fsf "Rational Resampling Polyphase FIR filter with float input, short output and float taps.

Make a rational resampling FIR filter. If the input signal is at rate fs, then the output signal will be at a rate of  * fs / .

The interpolation and decimation rates should be kept as small as possible, and generally should be relatively prime to help reduce complexity in memory and computation.

The set of  supplied to this filterbank should be designed around the resampling amount and must avoid aliasing (when interpolation/decimation < 1) and images (when interpolation/decimation > 1).

As with any filter, the behavior of the filter taps (or coefficients) is determined by the highest sampling rate that the filter will ever see. In the case of a resampler that increases the sampling rate, the highest sampling rate observed is  since in the filterbank, the number of filter arms is equal to . When the resampler decreases the sampling rate (decimation > interpolation), then the highest rate is the input sample rate of the original signal. We must create a filter based around this value to reduce any aliasing that may occur from out-of-band signals.

Another way to think about how to create the filter taps is that the filter is effectively applied after interpolation and before decimation. And yet another way to think of it is that the taps should be a LPF that is at least as narrow as the narrower of the required anti-image postfilter or anti-alias prefilter.

Constructor Specific Documentation:

Make a rational resampling FIR filter.

Args:
    interpolation : The integer interpolation rate of the filter
    decimation : The integer decimation rate of the filter
    taps : The filter taps to control images and aliases"









%feature("docstring") gr::filter::rational_resampler_base_fsf::make "Rational Resampling Polyphase FIR filter with float input, short output and float taps.

Make a rational resampling FIR filter. If the input signal is at rate fs, then the output signal will be at a rate of  * fs / .

The interpolation and decimation rates should be kept as small as possible, and generally should be relatively prime to help reduce complexity in memory and computation.

The set of  supplied to this filterbank should be designed around the resampling amount and must avoid aliasing (when interpolation/decimation < 1) and images (when interpolation/decimation > 1).

As with any filter, the behavior of the filter taps (or coefficients) is determined by the highest sampling rate that the filter will ever see. In the case of a resampler that increases the sampling rate, the highest sampling rate observed is  since in the filterbank, the number of filter arms is equal to . When the resampler decreases the sampling rate (decimation > interpolation), then the highest rate is the input sample rate of the original signal. We must create a filter based around this value to reduce any aliasing that may occur from out-of-band signals.

Another way to think about how to create the filter taps is that the filter is effectively applied after interpolation and before decimation. And yet another way to think of it is that the taps should be a LPF that is at least as narrow as the narrower of the required anti-image postfilter or anti-alias prefilter.

Constructor Specific Documentation:

Make a rational resampling FIR filter.

Args:
    interpolation : The integer interpolation rate of the filter
    decimation : The integer decimation rate of the filter
    taps : The filter taps to control images and aliases"

%feature("docstring") gr::filter::rational_resampler_base_scc "Rational Resampling Polyphase FIR filter with short input, gr_complex output and gr_complex taps.

Make a rational resampling FIR filter. If the input signal is at rate fs, then the output signal will be at a rate of  * fs / .

The interpolation and decimation rates should be kept as small as possible, and generally should be relatively prime to help reduce complexity in memory and computation.

The set of  supplied to this filterbank should be designed around the resampling amount and must avoid aliasing (when interpolation/decimation < 1) and images (when interpolation/decimation > 1).

As with any filter, the behavior of the filter taps (or coefficients) is determined by the highest sampling rate that the filter will ever see. In the case of a resampler that increases the sampling rate, the highest sampling rate observed is  since in the filterbank, the number of filter arms is equal to . When the resampler decreases the sampling rate (decimation > interpolation), then the highest rate is the input sample rate of the original signal. We must create a filter based around this value to reduce any aliasing that may occur from out-of-band signals.

Another way to think about how to create the filter taps is that the filter is effectively applied after interpolation and before decimation. And yet another way to think of it is that the taps should be a LPF that is at least as narrow as the narrower of the required anti-image postfilter or anti-alias prefilter.

Constructor Specific Documentation:

Make a rational resampling FIR filter.

Args:
    interpolation : The integer interpolation rate of the filter
    decimation : The integer decimation rate of the filter
    taps : The filter taps to control images and aliases"









%feature("docstring") gr::filter::rational_resampler_base_scc::make "Rational Resampling Polyphase FIR filter with short input, gr_complex output and gr_complex taps.

Make a rational resampling FIR filter. If the input signal is at rate fs, then the output signal will be at a rate of  * fs / .

The interpolation and decimation rates should be kept as small as possible, and generally should be relatively prime to help reduce complexity in memory and computation.

The set of  supplied to this filterbank should be designed around the resampling amount and must avoid aliasing (when interpolation/decimation < 1) and images (when interpolation/decimation > 1).

As with any filter, the behavior of the filter taps (or coefficients) is determined by the highest sampling rate that the filter will ever see. In the case of a resampler that increases the sampling rate, the highest sampling rate observed is  since in the filterbank, the number of filter arms is equal to . When the resampler decreases the sampling rate (decimation > interpolation), then the highest rate is the input sample rate of the original signal. We must create a filter based around this value to reduce any aliasing that may occur from out-of-band signals.

Another way to think about how to create the filter taps is that the filter is effectively applied after interpolation and before decimation. And yet another way to think of it is that the taps should be a LPF that is at least as narrow as the narrower of the required anti-image postfilter or anti-alias prefilter.

Constructor Specific Documentation:

Make a rational resampling FIR filter.

Args:
    interpolation : The integer interpolation rate of the filter
    decimation : The integer decimation rate of the filter
    taps : The filter taps to control images and aliases"

%feature("docstring") gr::filter::single_pole_iir_filter_cc "single pole IIR filter with complex input, complex output

The input and output satisfy a difference equation of the form 

 
y[n] - (1-alpha) y[n-1] = alpha x[n]


with the corresponding rational system function 

 
H(z) = \ frac{alpha}{1 - (1-alpha) z^{-1}}


Note that some texts define the system function with a + in the denominator. If you're using that convention, you'll need to negate the feedback tap.

Constructor Specific Documentation:



Args:
    alpha : 
    vlen : "



%feature("docstring") gr::filter::single_pole_iir_filter_cc::make "single pole IIR filter with complex input, complex output

The input and output satisfy a difference equation of the form 

 
y[n] - (1-alpha) y[n-1] = alpha x[n]


with the corresponding rational system function 

 
H(z) = \ frac{alpha}{1 - (1-alpha) z^{-1}}


Note that some texts define the system function with a + in the denominator. If you're using that convention, you'll need to negate the feedback tap.

Constructor Specific Documentation:



Args:
    alpha : 
    vlen : "

%feature("docstring") gr::filter::single_pole_iir_filter_ff "single pole IIR filter with float input, float output

The input and output satisfy a difference equation of the form 

 
y[n] - (1-alpha) y[n-1] = alpha x[n]


with the corresponding rational system function 

 
H(z) = \ frac{alpha}{1 - (1-alpha) z^{-1}}


Note that some texts define the system function with a + in the denominator. If you're using that convention, you'll need to negate the feedback tap.

Constructor Specific Documentation:



Args:
    alpha : 
    vlen : "



%feature("docstring") gr::filter::single_pole_iir_filter_ff::make "single pole IIR filter with float input, float output

The input and output satisfy a difference equation of the form 

 
y[n] - (1-alpha) y[n-1] = alpha x[n]


with the corresponding rational system function 

 
H(z) = \ frac{alpha}{1 - (1-alpha) z^{-1}}


Note that some texts define the system function with a + in the denominator. If you're using that convention, you'll need to negate the feedback tap.

Constructor Specific Documentation:



Args:
    alpha : 
    vlen : "

%feature("docstring") pm_remez "Parks-McClellan FIR filter design using Remez algorithm.

Calculates the optimal (in the Chebyshev/minimax sense) FIR filter inpulse response given a set of band edges, the desired response on those bands, and the weight given to the error in those bands.


Frequency is in the range [0, 1], with 1 being the Nyquist frequency (Fs/2)"

%feature("docstring") gr::filter::kernel::fft_filter_ccc "Fast FFT filter with gr_complex input, gr_complex output and gr_complex taps.

This block performs fast convolution using the overlap-and-save algorithm. The filtering is performand in the frequency domain instead of the time domain (see gr::filter::kernel::fir_filter_ccc). For an input signal x and filter coefficients (taps) t, we compute y as:



This kernel computes the FFT of the taps when they are set to only perform this operation once. The FFT of the input signal x is done every time.

Because this is designed as a very low-level kernel operation, it is designed for speed and avoids certain checks in the filter() function itself. The filter function expects that the input signal is a multiple of d_nsamples in the class that's computed internally to be as fast as possible. The function set_taps will return the value of nsamples that can be used externally to check this boundary. Notice that all implementations of the fft_filter GNU Radio blocks (e.g., gr::filter::fft_filter_ccc) use this value of nsamples to compute the value to call gr::block::set_output_multiple that ensures the scheduler always passes this block the right number of samples."





%feature("docstring") gr::filter::kernel::fft_filter_ccc::fft_filter_ccc "Construct an FFT filter for complex vectors with the given taps and decimation rate.

This is the basic implementation for performing FFT filter for fast convolution in other blocks (e.g., gr::filter::fft_filter_ccc)."



%feature("docstring") gr::filter::kernel::fft_filter_ccc::set_taps "Set new taps for the filter.

Sets new taps and resets the class properties to handle different sizes"

%feature("docstring") gr::filter::kernel::fft_filter_ccc::set_nthreads "Set number of threads to use."

%feature("docstring") gr::filter::kernel::fft_filter_ccc::taps "Returns the taps."

%feature("docstring") gr::filter::kernel::fft_filter_ccc::ntaps "Returns the number of taps in the filter."

%feature("docstring") gr::filter::kernel::fft_filter_ccc::nthreads "Get number of threads being used."

%feature("docstring") gr::filter::kernel::fft_filter_ccc::filter "Perform the filter operation."

%feature("docstring") gr::filter::kernel::fft_filter_ccf "Fast FFT filter with gr_complex input, gr_complex output and float taps.

This block performs fast convolution using the overlap-and-save algorithm. The filtering is performand in the frequency domain instead of the time domain (see gr::filter::kernel::fir_filter_ccf). For an input signal x and filter coefficients (taps) t, we compute y as:



This kernel computes the FFT of the taps when they are set to only perform this operation once. The FFT of the input signal x is done every time.

Because this is designed as a very low-level kernel operation, it is designed for speed and avoids certain checks in the filter() function itself. The filter function expects that the input signal is a multiple of d_nsamples in the class that's computed internally to be as fast as possible. The function set_taps will return the value of nsamples that can be used externally to check this boundary. Notice that all implementations of the fft_filter GNU Radio blocks (e.g., gr::filter::fft_filter_ccf) use this value of nsamples to compute the value to call gr::block::set_output_multiple that ensures the scheduler always passes this block the right number of samples."





%feature("docstring") gr::filter::kernel::fft_filter_ccf::fft_filter_ccf "Construct an FFT filter for complex vectors with the given taps and decimation rate.

This is the basic implementation for performing FFT filter for fast convolution in other blocks (e.g., gr::filter::fft_filter_ccf)."



%feature("docstring") gr::filter::kernel::fft_filter_ccf::set_taps "Set new taps for the filter.

Sets new taps and resets the class properties to handle different sizes"

%feature("docstring") gr::filter::kernel::fft_filter_ccf::set_nthreads "Set number of threads to use."

%feature("docstring") gr::filter::kernel::fft_filter_ccf::taps "Returns the taps."

%feature("docstring") gr::filter::kernel::fft_filter_ccf::ntaps "Returns the number of taps in the filter."

%feature("docstring") gr::filter::kernel::fft_filter_ccf::filtersize "Returns the actual size of the filter.

This value could be equal to ntaps, but we ofter build a longer filter to allow us to calculate a more efficient FFT. This value is the actual size of the filters used in the calculation of the overlap-and-save operation."

%feature("docstring") gr::filter::kernel::fft_filter_ccf::nthreads "Get number of threads being used."

%feature("docstring") gr::filter::kernel::fft_filter_ccf::filter "Perform the filter operation."

%feature("docstring") gr::filter::kernel::fft_filter_fff "Fast FFT filter with float input, float output and float taps.

This block performs fast convolution using the overlap-and-save algorithm. The filtering is performand in the frequency domain instead of the time domain (see gr::filter::kernel::fir_filter_fff). For an input signal x and filter coefficients (taps) t, we compute y as:



This kernel computes the FFT of the taps when they are set to only perform this operation once. The FFT of the input signal x is done every time.

Because this is designed as a very low-level kernel operation, it is designed for speed and avoids certain checks in the filter() function itself. The filter function expects that the input signal is a multiple of d_nsamples in the class that's computed internally to be as fast as possible. The function set_taps will return the value of nsamples that can be used externally to check this boundary. Notice that all implementations of the fft_filter GNU Radio blocks (e.g., gr::filter::fft_filter_fff) use this value of nsamples to compute the value to call gr::block::set_output_multiple that ensures the scheduler always passes this block the right number of samples."





%feature("docstring") gr::filter::kernel::fft_filter_fff::fft_filter_fff "Construct an FFT filter for float vectors with the given taps and decimation rate.

This is the basic implementation for performing FFT filter for fast convolution in other blocks (e.g., gr::filter::fft_filter_fff)."



%feature("docstring") gr::filter::kernel::fft_filter_fff::set_taps "Set new taps for the filter.

Sets new taps and resets the class properties to handle different sizes"

%feature("docstring") gr::filter::kernel::fft_filter_fff::set_nthreads "Set number of threads to use."

%feature("docstring") gr::filter::kernel::fft_filter_fff::taps "Returns the taps."

%feature("docstring") gr::filter::kernel::fft_filter_fff::ntaps "Returns the number of taps in the filter."

%feature("docstring") gr::filter::kernel::fft_filter_fff::nthreads "Get number of threads being used."

%feature("docstring") gr::filter::kernel::fft_filter_fff::filter "Perform the filter operation."

%feature("docstring") gr::filter::kernel::filterbank "A filter bank with generic taps.

This block takes in a vector of N complex inputs, passes them through N FIR filters, and outputs a vector of N complex outputs.

The only advantage of using this block over N individual FIR filter blocks is that it places less of a load on the scheduler.

The number of filters cannot be changed dynamically, however filters can be deactivated (i.e. no processing is done for them) by passing a vector of filter taps containing all zeros to them. In this case their entry in the output vector is a zero."

%feature("docstring") gr::filter::kernel::filterbank::filterbank "Build the filterbank."



%feature("docstring") gr::filter::kernel::filterbank::set_taps "Update the filterbank's filter taps."

%feature("docstring") gr::filter::kernel::filterbank::print_taps "Print all of the filterbank taps to screen."

%feature("docstring") gr::filter::kernel::filterbank::taps "Return a vector<vector<>> of the filterbank taps"

























































































































%feature("docstring") gr::filter::kernel::fir_filter_with_buffer_ccc "FIR with internal buffer for gr_complex input, gr_complex output and gr_complex taps."

%feature("docstring") gr::filter::kernel::fir_filter_with_buffer_ccc::fir_filter_with_buffer_ccc "construct new FIR with given taps.

Note that taps must be in forward order, e.g., coefficient 0 is stored in new_taps[0], coefficient 1 is stored in new_taps[1], etc."



%feature("docstring") gr::filter::kernel::fir_filter_with_buffer_ccc::filter "compute a single output value.

is a single input value of the filter type"

%feature("docstring") gr::filter::kernel::fir_filter_with_buffer_ccc::filterN "compute an array of N output values.

must have (n - 1 + ntaps()) valid entries. input[0] .. input[n - 1 + ntaps() - 1] are referenced to compute the output values."

%feature("docstring") gr::filter::kernel::fir_filter_with_buffer_ccc::filterNdec "compute an array of N output values, decimating the input

must have (decimate * (n - 1) + ntaps()) valid entries. input[0] .. input[decimate * (n - 1) + ntaps() - 1] are referenced to compute the output values."



%feature("docstring") gr::filter::kernel::fir_filter_with_buffer_ccc::set_taps "install  as the current taps."



%feature("docstring") gr::filter::kernel::fir_filter_with_buffer_ccf "FIR with internal buffer for gr_complex input, gr_complex output and gr_complex taps."

%feature("docstring") gr::filter::kernel::fir_filter_with_buffer_ccf::fir_filter_with_buffer_ccf "construct new FIR with given taps.

Note that taps must be in forward order, e.g., coefficient 0 is stored in new_taps[0], coefficient 1 is stored in new_taps[1], etc."



%feature("docstring") gr::filter::kernel::fir_filter_with_buffer_ccf::filter "compute a single output value.

is a single input value of the filter type"

%feature("docstring") gr::filter::kernel::fir_filter_with_buffer_ccf::filterN "compute an array of N output values.

must have (n - 1 + ntaps()) valid entries. input[0] .. input[n - 1 + ntaps() - 1] are referenced to compute the output values."

%feature("docstring") gr::filter::kernel::fir_filter_with_buffer_ccf::filterNdec "compute an array of N output values, decimating the input

must have (decimate * (n - 1) + ntaps()) valid entries. input[0] .. input[decimate * (n - 1) + ntaps() - 1] are referenced to compute the output values."



%feature("docstring") gr::filter::kernel::fir_filter_with_buffer_ccf::set_taps "install  as the current taps."



%feature("docstring") gr::filter::kernel::fir_filter_with_buffer_fff "FIR with internal buffer for float input, float output and float taps."

%feature("docstring") gr::filter::kernel::fir_filter_with_buffer_fff::fir_filter_with_buffer_fff "construct new FIR with given taps.

Note that taps must be in forward order, e.g., coefficient 0 is stored in new_taps[0], coefficient 1 is stored in new_taps[1], etc."



%feature("docstring") gr::filter::kernel::fir_filter_with_buffer_fff::filter "compute a single output value.

is a single input value of the filter type"

%feature("docstring") gr::filter::kernel::fir_filter_with_buffer_fff::filterN "compute an array of N output values.

must have (n - 1 + ntaps()) valid entries. input[0] .. input[n - 1 + ntaps() - 1] are referenced to compute the output values."

%feature("docstring") gr::filter::kernel::fir_filter_with_buffer_fff::filterNdec "compute an array of N output values, decimating the input

must have (decimate * (n - 1) + ntaps()) valid entries. input[0] .. input[decimate * (n - 1) + ntaps() - 1] are referenced to compute the output values."



%feature("docstring") gr::filter::kernel::fir_filter_with_buffer_fff::set_taps "install  as the current taps."



%feature("docstring") gr::filter::firdes "Finite Impulse Response (FIR) filter design functions."



%feature("docstring") gr::filter::firdes::low_pass "Use \"window method\" to design a low-pass FIR filter. The normalized width of the transition band is what sets the number of taps required. Narrow > more taps. Window type determines maximum attenuation and passband ripple."

%feature("docstring") gr::filter::firdes::low_pass_2 "Use \"window method\" to design a low-pass FIR filter. The normalized width of the transition band and the required stop band attenuation is what sets the number of taps required. Narrow > more taps More attenuation > more taps. The window type determines maximum attentuation and passband ripple."

%feature("docstring") gr::filter::firdes::high_pass "Use \"window method\" to design a high-pass FIR filter. The normalized width of the transition band is what sets the number of taps required. Narrow > more taps. The window determines maximum attenuation and passband ripple."

%feature("docstring") gr::filter::firdes::high_pass_2 "Use \"window method\" to design a high-pass FIR filter. The normalized width of the transition band and the required stop band attenuation is what sets the number of taps required. Narrow > more taps More attenuation > more taps. The window determines maximum attenuation and passband ripple."

%feature("docstring") gr::filter::firdes::band_pass "Use \"window method\" to design a band-pass FIR filter. The normalized width of the transition band is what sets the number of taps required. Narrow > more taps. The window determines maximum attenuation and passband ripple."

%feature("docstring") gr::filter::firdes::band_pass_2 "Use \"window method\" to design a band-pass FIR filter. The normalized width of the transition band and the required stop band attenuation is what sets the number of taps required. Narrow > more taps. More attenuation > more taps. Window type determines maximum attenuation and passband ripple."

%feature("docstring") gr::filter::firdes::complex_band_pass "Use the \"window method\" to design a complex band-pass FIR filter. The normalized width of the transition band is what sets the number of taps required. Narrow > more taps. The window type determines maximum attenuation and passband ripple."

%feature("docstring") gr::filter::firdes::complex_band_pass_2 "Use \"window method\" to design a complex band-pass FIR filter. The normalized width of the transition band and the required stop band attenuation is what sets the number of taps required. Narrow > more taps More attenuation > more taps. Window type determines maximum attenuation and passband ripple."

%feature("docstring") gr::filter::firdes::band_reject "Use \"window method\" to design a band-reject FIR filter. The normalized width of the transition band is what sets the number of taps required. Narrow > more taps. Window type determines maximum attenuation and passband ripple."

%feature("docstring") gr::filter::firdes::band_reject_2 "Use \"window method\" to design a band-reject FIR filter. The normalized width of the transition band and the required stop band attenuation is what sets the number of taps required. Narrow > more taps More attenuation > more taps. Window type determines maximum attenuation and passband ripple."

%feature("docstring") gr::filter::firdes::hilbert "design a Hilbert Transform Filter"

%feature("docstring") gr::filter::firdes::root_raised_cosine "design a Root Cosine FIR Filter (do we need a window?)"

%feature("docstring") gr::filter::firdes::gaussian "design a Gaussian filter"













%feature("docstring") gr::filter::kernel::iir_filter "Base class template for Infinite Impulse Response filter (IIR)

This class provides a templated kernel for IIR filters. These iir_filters can be instantiated with a set of feed-forward and feed-back taps in the constructor. We then call the iir_filter::filter function to add a new sample to the filter, or iir_filter::filter_n to add a vector of samples to be filtered.

Instantiating a filter means defining the templates for the data types being processed by the filter. There are four templates:


The acc_type is specified to control how data is handled internally in the filter. This should always be the highest precision data type of any of the first three. Often, IIR filters require double-precision values in the taps for stability, and so the internal accumulator should also be double precision.

Example:



Another example for handling complex samples with double-precision taps (see filter::iir_filter_ccz):"

%feature("docstring") gr::filter::kernel::iir_filter::iir_filter "Construct an IIR with the given taps.

This filter uses the Direct Form I implementation, where  contains the feed-forward taps, and  the feedback ones.

 The old style of the IIR filter uses feedback taps that are negative of what most definitions use (scipy and Matlab among them). This parameter keeps using the old GNU Radio style and is set to TRUE by default. When taps generated from scipy, Matlab, or gr_filter_design, use the new style by setting this to FALSE.

When  is set FALSE, the input and output satisfy a difference equation of the form



with the corresponding rational system function

 where:  - input signal,  - output signal,  - k-th feedback tap,  - k-th feed-forward tap,  - ,  - .

, that is [0], is ignored."



%feature("docstring") gr::filter::kernel::iir_filter::filter "compute a single output value."

%feature("docstring") gr::filter::kernel::iir_filter::filter_n "compute an array of N output values.  must have N valid entries."





%feature("docstring") gr::filter::kernel::iir_filter::set_taps "install new taps."

%feature("docstring") gr::filter::mmse_fir_interpolator_cc "Compute intermediate samples between signal samples x(k*Ts)

This implements a Minimum Mean Squared Error interpolator with 8 taps. It is suitable for signals where the bandwidth of interest B = 1/(4*Ts) Where Ts is the time between samples.

Although mu, the fractional delay, is specified as a float, it is actually quantized. 0.0 <= mu <= 1.0. That is, mu is quantized in the interpolate method to 32nd's of a sample.

For more information, in the GNU Radio source code, see:"









%feature("docstring") gr::filter::mmse_fir_interpolator_cc::interpolate "compute a single interpolated output value.

must have ntaps() valid entries and be 8-byte aligned. input[0] .. input[ntaps() - 1] are referenced to compute the output value. 
 must be in the range [0, 1] and specifies the fractional delay."

%feature("docstring") gr::filter::mmse_fir_interpolator_ff "Compute intermediate samples between signal samples x(k*Ts)

This implements a Minimum Mean Squared Error interpolator with 8 taps. It is suitable for signals where the bandwidth of interest B = 1/(4*Ts) Where Ts is the time between samples.

Although mu, the fractional delay, is specified as a float, it is actually quantized. 0.0 <= mu <= 1.0. That is, mu is quantized in the interpolate method to 32nd's of a sample.

For more information, in the GNU Radio source code, see:"









%feature("docstring") gr::filter::mmse_fir_interpolator_ff::interpolate "compute a single interpolated output value.  must have ntaps() valid entries. input[0] .. input[ntaps() - 1] are referenced to compute the output value.

must be in the range [0, 1] and specifies the fractional delay."

%feature("docstring") gr::filter::mmse_interp_differentiator_cc "Compute intermediate samples of the derivative of a signal between signal samples x(k*Ts)

This implements a Minimum Mean Squared Error interpolating differentiator with 8 taps. It is suitable for signals where the derivative of a signal has a bandwidth of interest in the range (-Fs/4, Fs/4), where Fs is the samples rate.

Although mu, the fractional delay, is specified as a float, in the range [0.0, 1.0], it is actually quantized. That is, mu is quantized in the differentiate method to 128th's of a sample."









%feature("docstring") gr::filter::mmse_interp_differentiator_cc::differentiate "compute a single interpolated differentiated output value.

must have ntaps() valid entries. input[0] .. input[ntaps() - 1] are referenced to compute the output value.

 must be in the range [0, 1] and specifies the fractional delay."

%feature("docstring") gr::filter::mmse_interp_differentiator_ff "Compute intermediate samples of the derivative of a signal between signal samples x(k*Ts)

This implements a Minimum Mean Squared Error interpolating differentiator with 8 taps. It is suitable for signals where the derivative of a signal has a bandwidth of interest in the range (-Fs/4, Fs/4), where Fs is the samples rate.

Although mu, the fractional delay, is specified as a float, in the range [0.0, 1.0], it is actually quantized. That is, mu is quantized in the differentiate method to 128th's of a sample."









%feature("docstring") gr::filter::mmse_interp_differentiator_ff::differentiate "compute a single interpolated differentiated output value.

must have ntaps() valid entries. input[0] .. input[ntaps() - 1] are referenced to compute the output value.

 must be in the range [0, 1] and specifies the fractional delay."



%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccc::create_diff_taps "Takes in the taps and convolves them with [-1,0,1], which creates a differential set of taps that are used in the difference filterbank."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccc::create_taps "Resets the filterbank's filter taps with the new prototype filter"

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccc::pfb_arb_resampler_ccc "Creates a kernel to perform arbitrary resampling on a set of samples."



%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccc::set_taps "Resets the filterbank's filter taps with the new prototype filter"

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccc::taps "Return a vector<vector<>> of the filterbank taps"

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccc::print_taps "Print all of the filterbank taps to screen."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccc::set_rate "Sets the resampling rate of the block."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccc::set_phase "Sets the current phase offset in radians (0 to 2pi)."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccc::phase "Gets the current phase of the resampler in radians (2 to 2pi)."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccc::taps_per_filter "Gets the number of taps per filter."







%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccc::group_delay "Get the group delay of the filter."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccc::phase_offset "Calculates the phase offset expected by a sine wave of frequency  and sampling rate  (assuming input sine wave has 0 degree phase)."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccc::filter "Performs the filter operation that resamples the signal.

This block takes in a stream of samples and outputs a resampled and filtered stream. This block should be called such that the output has  *  amount of space available in the  buffer."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccf "Polyphase filterbank arbitrary resampler with gr_complex input, gr_complex output and float taps.

This takes in a signal stream and performs arbitrary resampling. The resampling rate can be any real number . The resampling is done by constructing  filters where  is the interpolation rate. We then calculate  where .

Using  and , we can perform rational resampling where  is a rational number close to the input rate  where we have  filters and we cycle through them as a polyphase filterbank with a stride of  so that .

To get the arbitrary rate, we want to interpolate between two points. For each value out, we take an output from the current filter, , and the next filter  and then linearly interpolate between the two based on the real resampling rate we want.

The linear interpolation only provides us with an approximation to the real sampling rate specified. The error is a quantization error between the two filters we used as our interpolation points. To this end, the number of filters, , used determines the quantization error; the larger , the smaller the noise. You can design for a specified noise floor by setting the filter size (parameters ). The size defaults to 32 filters, which is about as good as most implementations need.

The trick with designing this filter is in how to specify the taps of the prototype filter. Like the PFB interpolator, the taps are specified using the interpolated filter rate. In this case, that rate is the input sample rate multiplied by the number of filters in the filterbank, which is also the interpolation rate. All other values should be relative to this rate.

For example, for a 32-filter arbitrary resampler and using the GNU Radio's firdes utility to build the filter, we build a low-pass filter with a sampling rate of , a 3-dB bandwidth of  and a transition bandwidth of . We can also specify the out-of-band attenuation to use, , and the filter window function (a Blackman-harris window in this case). The first input is the gain of the filter, which we specify here as the interpolation rate ().



The theory behind this block can be found in Chapter 7.5 of the following book:"

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccf::create_diff_taps "Takes in the taps and convolves them with [-1,0,1], which creates a differential set of taps that are used in the difference filterbank."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccf::create_taps "Resets the filterbank's filter taps with the new prototype filter"

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccf::pfb_arb_resampler_ccf "Creates a kernel to perform arbitrary resampling on a set of samples."



%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccf::set_taps "Resets the filterbank's filter taps with the new prototype filter"

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccf::taps "Return a vector<vector<>> of the filterbank taps"

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccf::print_taps "Print all of the filterbank taps to screen."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccf::set_rate "Sets the resampling rate of the block."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccf::set_phase "Sets the current phase offset in radians (0 to 2pi)."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccf::phase "Gets the current phase of the resampler in radians (2 to 2pi)."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccf::taps_per_filter "Gets the number of taps per filter."







%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccf::group_delay "Get the group delay of the filter."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccf::phase_offset "Calculates the phase offset expected by a sine wave of frequency  and sampling rate  (assuming input sine wave has 0 degree phase)."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_ccf::filter "Performs the filter operation that resamples the signal.

This block takes in a stream of samples and outputs a resampled and filtered stream. This block should be called such that the output has  *  amount of space available in the  buffer."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_fff "Polyphase filterbank arbitrary resampler with float input, float output and float taps.

This takes in a signal stream and performs arbitrary resampling. The resampling rate can be any real number . The resampling is done by constructing  filters where  is the interpolation rate. We then calculate  where .

Using  and , we can perform rational resampling where  is a rational number close to the input rate  where we have  filters and we cycle through them as a polyphase filterbank with a stride of  so that .

To get the arbitrary rate, we want to interpolate between two points. For each value out, we take an output from the current filter, , and the next filter  and then linearly interpolate between the two based on the real resampling rate we want.

The linear interpolation only provides us with an approximation to the real sampling rate specified. The error is a quantization error between the two filters we used as our interpolation points. To this end, the number of filters, , used determines the quantization error; the larger , the smaller the noise. You can design for a specified noise floor by setting the filter size (parameters ). The size defaults to 32 filters, which is about as good as most implementations need.

The trick with designing this filter is in how to specify the taps of the prototype filter. Like the PFB interpolator, the taps are specified using the interpolated filter rate. In this case, that rate is the input sample rate multiplied by the number of filters in the filterbank, which is also the interpolation rate. All other values should be relative to this rate.

For example, for a 32-filter arbitrary resampler and using the GNU Radio's firdes utility to build the filter, we build a low-pass filter with a sampling rate of , a 3-dB bandwidth of  and a transition bandwidth of . We can also specify the out-of-band attenuation to use, , and the filter window function (a Blackman-harris window in this case). The first input is the gain of the filter, which we specify here as the interpolation rate ().



The theory behind this block can be found in Chapter 7.5 of the following book:"

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_fff::create_diff_taps "Takes in the taps and convolves them with [-1,0,1], which creates a differential set of taps that are used in the difference filterbank."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_fff::create_taps "Resets the filterbank's filter taps with the new prototype filter"

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_fff::pfb_arb_resampler_fff "Creates a kernel to perform arbitrary resampling on a set of samples."



%feature("docstring") gr::filter::kernel::pfb_arb_resampler_fff::set_taps "Resets the filterbank's filter taps with the new prototype filter"

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_fff::taps "Return a vector<vector<>> of the filterbank taps"

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_fff::print_taps "Print all of the filterbank taps to screen."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_fff::set_rate "Sets the resampling rate of the block."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_fff::set_phase "Sets the current phase offset in radians (0 to 2pi)."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_fff::phase "Gets the current phase of the resampler in radians (2 to 2pi)."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_fff::taps_per_filter "Gets the number of taps per filter."







%feature("docstring") gr::filter::kernel::pfb_arb_resampler_fff::group_delay "Get the group delay of the filter."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_fff::phase_offset "Calculates the phase offset expected by a sine wave of frequency  and sampling rate  (assuming input sine wave has 0 degree phase)."

%feature("docstring") gr::filter::kernel::pfb_arb_resampler_fff::filter "Performs the filter operation that resamples the signal.

This block takes in a stream of samples and outputs a resampled and filtered stream. This block should be called such that the output has  *  amount of space available in the  buffer."

%feature("docstring") gr::filter::kernel::polyphase_filterbank "Polyphase filterbank parent class.

This block takes in complex inputs and channelizes it to  channels of equal bandwidth. Each of the resulting channels is decimated to the new rate that is the input sampling rate  divided by the number of channels, .

The PFB channelizer code takes the taps generated above and builds a set of filters. The set contains  filters and each filter contains ceil(taps.size()/decim) taps. Each tap from the filter prototype is sequentially inserted into the next filter. When all of the input taps are used, the remaining filters in the filterbank are filled out with 0's to make sure each filter has the same number of taps.

Each filter operates using the gr::filter::fir_filter_XXX class of GNU Radio, which takes the input stream at  and performs the inner product calculation to  where  is the number of filter taps. To efficiently handle this in the GNU Radio structure, each filter input must come from its own input stream. So the channelizer must be provided with  streams where the input stream has been deinterleaved. This is most easily done using the gr::blocks::stream_to_streams block.

The output is then produced as a vector, where index  in the vector is the next sample from the th channel. This is most easily handled by sending the output to a gr::blocks::vector_to_streams block to handle the conversion and passing  streams out.

The input and output formatting is done using a hier_block2 called pfb_channelizer_ccf. This can take in a single stream and outputs  streams based on the behavior described above.

The filter's taps should be based on the input sampling rate.

For example, using the GNU Radio's firdes utility to building filters, we build a low-pass filter with a sampling rate of , a 3-dB bandwidth of  and a transition bandwidth of . We can also specify the out-of-band attenuation to use, , and the filter window function (a Blackman-harris window in this case). The first input is the gain of the filter, which we specify here as unity.



More on the theory of polyphase filterbanks can be found in the following book:"

%feature("docstring") gr::filter::kernel::polyphase_filterbank::polyphase_filterbank "Build the polyphase filterbank decimator."



%feature("docstring") gr::filter::kernel::polyphase_filterbank::set_taps "Update the filterbank's filter taps from a prototype filter."

%feature("docstring") gr::filter::kernel::polyphase_filterbank::print_taps "Print all of the filterbank taps to screen."

%feature("docstring") gr::filter::kernel::polyphase_filterbank::taps "Return a vector<vector<>> of the filterbank taps"

%feature("docstring") gr::filter::single_pole_iir "class template for single pole IIR filter"

%feature("docstring") gr::filter::single_pole_iir::single_pole_iir "construct new single pole IIR with given alpha

computes y(i) = (1-alpha) * y(i-1) + alpha * x(i)"

%feature("docstring") gr::filter::single_pole_iir::filter "compute a single output value."

%feature("docstring") gr::filter::single_pole_iir::filterN "compute an array of N output values.  must have n valid entries."

%feature("docstring") gr::filter::single_pole_iir::set_taps "install  as the current taps."

%feature("docstring") gr::filter::single_pole_iir::reset "reset state to zero"





%feature("docstring") gr::filter::single_pole_iir< gr_complex, i_type, double >::single_pole_iir "construct new single pole IIR with given alpha

computes y(i) = (1-alpha) * y(i-1) + alpha * x(i)"

%feature("docstring") gr::filter::single_pole_iir< gr_complex, i_type, double >::filter "compute a single output value."

%feature("docstring") gr::filter::single_pole_iir< gr_complex, i_type, double >::filterN "compute an array of N output values.  must have n valid entries."

%feature("docstring") gr::filter::single_pole_iir< gr_complex, i_type, double >::set_taps "install  as the current taps."

%feature("docstring") gr::filter::single_pole_iir< gr_complex, i_type, double >::reset "reset state to zero"

