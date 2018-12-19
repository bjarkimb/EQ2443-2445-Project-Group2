
/*
 * This file was automatically generated using swig_doc.py.
 *
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") gr::channels::cfo_model "channel simulator

This block implements a carrier frequency offset model that can be used to simulate carrier frequency drift typically from mixer LO drift on either transmit or receive hardware.

A clipped gaussian random walk process is used.

Constructor Specific Documentation:

Build the carrier frequency offset model.

Args:
    sample_rate_hz : Sample rate of the input signal in Hz
    std_dev_hz : Desired standard deviation of the random walk process every sample in Hz
    max_dev_hz : Maximum carrier frequency deviation in Hz.
    noise_seed : A random number generator seed for the noise source."













%feature("docstring") gr::channels::cfo_model::make "channel simulator

This block implements a carrier frequency offset model that can be used to simulate carrier frequency drift typically from mixer LO drift on either transmit or receive hardware.

A clipped gaussian random walk process is used.

Constructor Specific Documentation:

Build the carrier frequency offset model.

Args:
    sample_rate_hz : Sample rate of the input signal in Hz
    std_dev_hz : Desired standard deviation of the random walk process every sample in Hz
    max_dev_hz : Maximum carrier frequency deviation in Hz.
    noise_seed : A random number generator seed for the noise source."

%feature("docstring") gr::channels::channel_model "Basic channel simulator.

This block implements a basic channel model simulator that can be used to help evaluate, design, and test various signals, waveforms, and algorithms.

This model allows the user to set the voltage of an AWGN noise source (), a (normalized) frequency offset (), a sample timing offset (), and a seed () to randomize or make reproducible the AWGN noise source.

Multipath can be approximated in this model by using a FIR filter representation of a multipath delay profile with the parameter .

To simulate a channel with time-variant channel, use gr::channels::channel_model2.

Constructor Specific Documentation:

Build the channel simulator.

Args:
    noise_voltage : The AWGN noise level as a voltage (to be calculated externally to meet, say, a desired SNR).
    frequency_offset : The normalized frequency offset. 0 is no offset; 0.25 would be, for a digital modem, one quarter of the symbol rate.
    epsilon : The sample timing offset to emulate the different rates between the sample clocks of the transmitter and receiver. 1.0 is no difference.
    taps : Taps of a FIR filter to emulate a multipath delay profile.
    noise_seed : A random number generator seed for the noise source.
    block_tags : If true, tags will not be able to propagate through this block."

















%feature("docstring") gr::channels::channel_model::make "Basic channel simulator.

This block implements a basic channel model simulator that can be used to help evaluate, design, and test various signals, waveforms, and algorithms.

This model allows the user to set the voltage of an AWGN noise source (), a (normalized) frequency offset (), a sample timing offset (), and a seed () to randomize or make reproducible the AWGN noise source.

Multipath can be approximated in this model by using a FIR filter representation of a multipath delay profile with the parameter .

To simulate a channel with time-variant channel, use gr::channels::channel_model2.

Constructor Specific Documentation:

Build the channel simulator.

Args:
    noise_voltage : The AWGN noise level as a voltage (to be calculated externally to meet, say, a desired SNR).
    frequency_offset : The normalized frequency offset. 0 is no offset; 0.25 would be, for a digital modem, one quarter of the symbol rate.
    epsilon : The sample timing offset to emulate the different rates between the sample clocks of the transmitter and receiver. 1.0 is no difference.
    taps : Taps of a FIR filter to emulate a multipath delay profile.
    noise_seed : A random number generator seed for the noise source.
    block_tags : If true, tags will not be able to propagate through this block."

%feature("docstring") gr::channels::channel_model2 "Basic channel simulator allowing time-varying frequency and timing inputs.

This block implements a basic channel model simulator that can be used to help evaluate, design, and test various signals, waveforms, and algorithms.

This model allows the user to set the voltage of an AWGN noise source (), an initial timing offset (), and a seed () to randomize the AWGN noise source.

Multipath can be approximated in this model by using a FIR filter representation of a multipath delay profile with the parameter .

Unlike gr::channels::channel_model, this block is designed to enable time-varying frequency and timing offsets.


Since the models for frequency and timing offset may vary and what we are trying to model may be different for different simulations, we provide the time-varying nature as an input function that is user-defined. If only constant frequency and timing offsets are required, it is easier and less expensive to use gr::channels::channel_model.

Constructor Specific Documentation:

Build the channel simulator.

Args:
    noise_voltage : The AWGN noise level as a voltage (to be calculated externally to meet, say, a desired SNR).
    epsilon : The initial sample timing offset to emulate the different rates between the sample clocks of the transmitter and receiver. 1.0 is no difference.
    taps : Taps of a FIR filter to emulate a multipath delay profile.
    noise_seed : A random number generator seed for the noise source.
    block_tags : If true, tags will not be able to propagate through this block."













%feature("docstring") gr::channels::channel_model2::make "Basic channel simulator allowing time-varying frequency and timing inputs.

This block implements a basic channel model simulator that can be used to help evaluate, design, and test various signals, waveforms, and algorithms.

This model allows the user to set the voltage of an AWGN noise source (), an initial timing offset (), and a seed () to randomize the AWGN noise source.

Multipath can be approximated in this model by using a FIR filter representation of a multipath delay profile with the parameter .

Unlike gr::channels::channel_model, this block is designed to enable time-varying frequency and timing offsets.


Since the models for frequency and timing offset may vary and what we are trying to model may be different for different simulations, we provide the time-varying nature as an input function that is user-defined. If only constant frequency and timing offsets are required, it is easier and less expensive to use gr::channels::channel_model.

Constructor Specific Documentation:

Build the channel simulator.

Args:
    noise_voltage : The AWGN noise level as a voltage (to be calculated externally to meet, say, a desired SNR).
    epsilon : The initial sample timing offset to emulate the different rates between the sample clocks of the transmitter and receiver. 1.0 is no difference.
    taps : Taps of a FIR filter to emulate a multipath delay profile.
    noise_seed : A random number generator seed for the noise source.
    block_tags : If true, tags will not be able to propagate through this block."

%feature("docstring") gr::channels::dynamic_channel_model "dynamic channel simulator

This block implements a dynamic channel model simulator that can be used to help evaluate, design, and test various signals, waveforms, and algorithms.

This model allows the user to set up an AWGN noise cource, a random walk process to simulate carrier frequency drift, a random walk process to simulate sample rate offset drive, and a frequency selective fading channel response that is either Rayleigh or Ricean for a user specified power delay profile.

Constructor Specific Documentation:

Build the dynamic channel simulator.

Args:
    samp_rate : Input sample rate in Hz
    sro_std_dev : sample rate drift process standard deviation per sample in Hz
    sro_max_dev : maximum sample rate offset in Hz
    cfo_std_dev : carrier frequnecy drift process standard deviation per sample in Hz
    cfo_max_dev : maximum carrier frequency offset in Hz
    N : number of sinusoids used in frequency selective fading simulation
    doppler_freq : maximum doppler frequency used in fading simulation in Hz
    LOS_model : defines whether the fading model should include a line of site component. LOS->Rician, NLOS->Rayleigh
    K : Rician K-factor, the ratio of specular to diffuse power in the model
    delays : A list of fractional sample delays making up the power delay profile
    mags : A list of magnitudes corresponding to each delay time in the power delay profile
    ntaps_mpath : The length of the filter to interpolate the power delay profile over. Delays in the PDP must lie between 0 and ntaps_mpath, fractional delays will be sinc-interpolated only to the width of this filter.
    noise_amp : Specifies the standard deviation of the AWGN process
    noise_seed : A random number generator seed for the noise source."

































%feature("docstring") gr::channels::dynamic_channel_model::make "dynamic channel simulator

This block implements a dynamic channel model simulator that can be used to help evaluate, design, and test various signals, waveforms, and algorithms.

This model allows the user to set up an AWGN noise cource, a random walk process to simulate carrier frequency drift, a random walk process to simulate sample rate offset drive, and a frequency selective fading channel response that is either Rayleigh or Ricean for a user specified power delay profile.

Constructor Specific Documentation:

Build the dynamic channel simulator.

Args:
    samp_rate : Input sample rate in Hz
    sro_std_dev : sample rate drift process standard deviation per sample in Hz
    sro_max_dev : maximum sample rate offset in Hz
    cfo_std_dev : carrier frequnecy drift process standard deviation per sample in Hz
    cfo_max_dev : maximum carrier frequency offset in Hz
    N : number of sinusoids used in frequency selective fading simulation
    doppler_freq : maximum doppler frequency used in fading simulation in Hz
    LOS_model : defines whether the fading model should include a line of site component. LOS->Rician, NLOS->Rayleigh
    K : Rician K-factor, the ratio of specular to diffuse power in the model
    delays : A list of fractional sample delays making up the power delay profile
    mags : A list of magnitudes corresponding to each delay time in the power delay profile
    ntaps_mpath : The length of the filter to interpolate the power delay profile over. Delays in the PDP must lie between 0 and ntaps_mpath, fractional delays will be sinc-interpolated only to the width of this filter.
    noise_amp : Specifies the standard deviation of the AWGN process
    noise_seed : A random number generator seed for the noise source."

%feature("docstring") gr::channels::fading_model "fading simulator

This block implements a basic fading model simulator that can be used to help evaluate, design, and test various signals, waveforms, and algorithms.

Constructor Specific Documentation:

Build the channel simulator.

Args:
    N : the number of sinusoids to use in simulating the channel; 8 is a good value
    fDTs : normalized maximum Doppler frequency, fD * Ts
    LOS : include Line-of-Site path? selects between Rayleigh (NLOS) and Rician (LOS) models
    K : Rician factor (ratio of the specular power to the scattered power)
    seed : a random number to seed the noise generators"













%feature("docstring") gr::channels::fading_model::make "fading simulator

This block implements a basic fading model simulator that can be used to help evaluate, design, and test various signals, waveforms, and algorithms.

Constructor Specific Documentation:

Build the channel simulator.

Args:
    N : the number of sinusoids to use in simulating the channel; 8 is a good value
    fDTs : normalized maximum Doppler frequency, fD * Ts
    LOS : include Line-of-Site path? selects between Rayleigh (NLOS) and Rician (LOS) models
    K : Rician factor (ratio of the specular power to the scattered power)
    seed : a random number to seed the noise generators"

%feature("docstring") gr::channels::selective_fading_model "fading simulator

This block implements a basic fading model simulator that can be used to help evaluate, design, and test various signals, waveforms, and algorithms.

Constructor Specific Documentation:

Build the channel simulator.

Args:
    N : the number of sinusoids to use in simulating the channel; 8 is a good value
    fDTs : normalized maximum Doppler frequency, fD * Ts
    LOS : include Line-of-Site path? selects between Rayleigh (NLOS) and Rician (LOS) models
    K : Rician factor (ratio of the specular power to the scattered power)
    seed : a random number to seed the noise generators
    delays : a vector of values that specify the time delay of each impulse
    mags : a vector of values that specify the magnitude of each impulse
    ntaps : the number of filter taps"













%feature("docstring") gr::channels::selective_fading_model::make "fading simulator

This block implements a basic fading model simulator that can be used to help evaluate, design, and test various signals, waveforms, and algorithms.

Constructor Specific Documentation:

Build the channel simulator.

Args:
    N : the number of sinusoids to use in simulating the channel; 8 is a good value
    fDTs : normalized maximum Doppler frequency, fD * Ts
    LOS : include Line-of-Site path? selects between Rayleigh (NLOS) and Rician (LOS) models
    K : Rician factor (ratio of the specular power to the scattered power)
    seed : a random number to seed the noise generators
    delays : a vector of values that specify the time delay of each impulse
    mags : a vector of values that specify the magnitude of each impulse
    ntaps : the number of filter taps"

%feature("docstring") gr::channels::sro_model "Sample Rate Offset Model.

This block implements a model that varies sample rate offset with respect to time by performing a random walk on the interpolation rate.

Constructor Specific Documentation:

Build the sample rate offset model.

Args:
    sample_rate_hz : Sample rate of the input signal in Hz
    std_dev_hz : Desired standard deviation of the random walk process every sample in Hz
    max_dev_hz : Maximum sample rate deviation from zero in Hz.
    noise_seed : A random number generator seed for the noise source."













%feature("docstring") gr::channels::sro_model::make "Sample Rate Offset Model.

This block implements a model that varies sample rate offset with respect to time by performing a random walk on the interpolation rate.

Constructor Specific Documentation:

Build the sample rate offset model.

Args:
    sample_rate_hz : Sample rate of the input signal in Hz
    std_dev_hz : Desired standard deviation of the random walk process every sample in Hz
    max_dev_hz : Maximum sample rate deviation from zero in Hz.
    noise_seed : A random number generator seed for the noise source."