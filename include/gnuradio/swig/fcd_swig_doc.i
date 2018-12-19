
/*
 * This file was automatically generated using swig_doc.py.
 *
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") gr::fcd::source_c "Funcube Dongle source block.

This class provides a Funcube Dongle source block by wrapping the USB audio interface and the USB HID control interface of the Funcube Dongle into one convenient source block.

The Funcube Dongle needs to have firmware 18f or later for the control interface to work properly. As of early 2011, FCDs still come with firmware 18b. You can use qthid 2.2 (not 3) to upgrade the firmware:

Constructor Specific Documentation:

Return a shared_ptr to a new instance of fcd_source_c.

This is effectively the public constructor. To avoid accidental use of raw pointers, fcd_source_c's constructor is private. fcd_make_source_c is the public interface for creating new instances.

Args:
    device_name : "

%feature("docstring") gr::fcd::source_c::set_freq "Set frequency with Hz resolution.

Set the frequency of the Funcube Dongle with 1 Hz resolution applying the frequency correction set by set_freq_corr()."

%feature("docstring") gr::fcd::source_c::set_freq_khz "Set frequency with kHz resolution.

Sets the frequency of the Funcube Dongle with 1 kHz resolution applying the frequency correction set by set_freq_corr()."

%feature("docstring") gr::fcd::source_c::set_lna_gain "Set LNA gain.

Set the LNA gain in the FCD. Valid range is -5 to


By default the LNA gain is set to 20 dB and this is a good value for most cases. In noisy areas you may try to reduce the gain."

%feature("docstring") gr::fcd::source_c::set_mixer_gain "Set mixer gain.

Set the mixer gain in the FCD. Valid values are +4 and +12 dB.

By default the mixer gain is set to +12 dB and this is a good value for most cases. In noisy areas you may try to reduce the gain."

%feature("docstring") gr::fcd::source_c::set_freq_corr "Set new frequency correction.

Version 1.1 FCDs (S/N 810 or later) need a correction of -12 ppm. Earlier FCDs need roughly -120 ppm (default for gr-fcd).

Ref:"

%feature("docstring") gr::fcd::source_c::set_dc_corr "Set DC offset correction.

Set DC offset correction in the device. Default is 0.0."

%feature("docstring") gr::fcd::source_c::set_iq_corr "Set IQ phase and gain balance.

Set IQ phase and gain balance in the device. The default values are 0.0 for phase and 1.0 for gain."

%feature("docstring") gr::fcd::source_c::make "Funcube Dongle source block.

This class provides a Funcube Dongle source block by wrapping the USB audio interface and the USB HID control interface of the Funcube Dongle into one convenient source block.

The Funcube Dongle needs to have firmware 18f or later for the control interface to work properly. As of early 2011, FCDs still come with firmware 18b. You can use qthid 2.2 (not 3) to upgrade the firmware:

Constructor Specific Documentation:

Return a shared_ptr to a new instance of fcd_source_c.

This is effectively the public constructor. To avoid accidental use of raw pointers, fcd_source_c's constructor is private. fcd_make_source_c is the public interface for creating new instances.

Args:
    device_name : "