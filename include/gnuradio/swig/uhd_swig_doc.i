
/*
 * This file was automatically generated using swig_doc.py.
 *
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") gr::uhd::amsg_source "

Constructor Specific Documentation:

Make a new USRP asynchronous message-based source block.

Args:
    device_addr : 
    msgq : "

%feature("docstring") gr::uhd::amsg_source::~amsg_source "Destructor.

This must be explicitly defined because there is no block inheritance for this class, and thus no virtual destructor pulled into the class hierarchy for sub-classes."

%feature("docstring") gr::uhd::amsg_source::msg_to_async_metadata_t "Convert a raw asynchronous message to an asynchronous metatdata object."

%feature("docstring") gr::uhd::amsg_source::make "

Constructor Specific Documentation:

Make a new USRP asynchronous message-based source block.

Args:
    device_addr : 
    msgq : "

%feature("docstring") gr::uhd::usrp_sink "USRP Sink  Radio Transmitter

The USRP sink block reads a stream and transmits the samples. The sink block also provides API calls for transmitter settings. See also gr::uhd::usrp_block for more public API calls.


TX Stream tagging
The following tag keys will be consumed by the work function:


Any other tag will be ignored.



Bursty Transmission
There are multiple ways to do bursty transmission without triggering underruns:


The sob and eob (start and end of burst) tag values are pmt booleans. When present, burst tags should be set to true (pmt::PMT_T).

If  is not an empty string, all \"tx_sob\" and \"tx_eob\" tags will be ignored, and the input is assumed to a tagged stream.

If sob/eob tags or length tags are used, this block understands that the data is bursty, and will configure the USRP to make sure there's no underruns after transmitting the final sample of a burst.



Timestamps
The timestamp tag value is a PMT tuple of the following: (uint64 seconds, double fractional seconds).

The tx_freq tag has to be a double or a pair of form (channel, frequency), with frequency being a double and channel being an integer. This tag will trigger a tune command to the USRP to the given frequency, if possible. Note that oscillators need some time to stabilize after this! Don't expect clean data to be sent immediately after this command. If channel is omitted, and only a double is given, it will set this frequency to all channels.

The command tag can carry a PMT command. See the following section.



Command interface
There are two ways of passing commands to this block:


In both cases, the payload of the command is a PMT command, as described in Section uhd_command_syntax.

For a more general description of the gr-uhd components, see page_uhd.

Constructor Specific Documentation:

DEPRECATED Make a new USRP sink block using the deprecated io_type_t.

This function will be removed in the future. Please use the other make function, gr::uhd::usrp_sink::make(const ::uhd::device_addr_t, const ::uhd::stream_args_t, const std::string).

Args:
    device_addr : 
    io_type : 
    num_channels : "

%feature("docstring") gr::uhd::usrp_sink::set_start_time "Set the start time for outgoing samples. To control when samples are transmitted, set this value before starting the flow graph. The value is cleared after each run. When not specified, the start time will be:"

%feature("docstring") gr::uhd::usrp_sink::get_usrp_info "Returns identifying information about this USRP's configuration. Returns motherboard ID, name, and serial. Returns daughterboard TX ID, subdev name and spec, serial, and antenna."

%feature("docstring") gr::uhd::usrp_sink::set_dc_offset "Set a constant DC offset value. The value is complex to control both I and Q."

%feature("docstring") gr::uhd::usrp_sink::set_iq_balance "Set the RX frontend IQ imbalance correction. Use this to adjust the magnitude and phase of I and Q."

%feature("docstring") gr::uhd::usrp_sink::make "USRP Sink  Radio Transmitter

The USRP sink block reads a stream and transmits the samples. The sink block also provides API calls for transmitter settings. See also gr::uhd::usrp_block for more public API calls.


TX Stream tagging
The following tag keys will be consumed by the work function:


Any other tag will be ignored.



Bursty Transmission
There are multiple ways to do bursty transmission without triggering underruns:


The sob and eob (start and end of burst) tag values are pmt booleans. When present, burst tags should be set to true (pmt::PMT_T).

If  is not an empty string, all \"tx_sob\" and \"tx_eob\" tags will be ignored, and the input is assumed to a tagged stream.

If sob/eob tags or length tags are used, this block understands that the data is bursty, and will configure the USRP to make sure there's no underruns after transmitting the final sample of a burst.



Timestamps
The timestamp tag value is a PMT tuple of the following: (uint64 seconds, double fractional seconds).

The tx_freq tag has to be a double or a pair of form (channel, frequency), with frequency being a double and channel being an integer. This tag will trigger a tune command to the USRP to the given frequency, if possible. Note that oscillators need some time to stabilize after this! Don't expect clean data to be sent immediately after this command. If channel is omitted, and only a double is given, it will set this frequency to all channels.

The command tag can carry a PMT command. See the following section.



Command interface
There are two ways of passing commands to this block:


In both cases, the payload of the command is a PMT command, as described in Section uhd_command_syntax.

For a more general description of the gr-uhd components, see page_uhd.

Constructor Specific Documentation:

DEPRECATED Make a new USRP sink block using the deprecated io_type_t.

This function will be removed in the future. Please use the other make function, gr::uhd::usrp_sink::make(const ::uhd::device_addr_t, const ::uhd::stream_args_t, const std::string).

Args:
    device_addr : 
    io_type : 
    num_channels : "

%feature("docstring") gr::uhd::usrp_source "USRP Source  Radio Receiver

The USRP source block receives samples and writes to a stream. The source block also provides API calls for receiver settings. See also gr::uhd::usrp_block for more public API calls.

RX Stream tagging:

The following tag keys will be produced by the work function:


The timestamp tag value is a pmt tuple of the following: (uint64 seconds, and double fractional seconds). A timestamp tag is produced at start() and after overflows.


Command interface
This block has a message port, which consumes UHD PMT commands. For a description of the command syntax, see Section uhd_command_syntax.

For a more general description of the gr-uhd components, see page_uhd.

Constructor Specific Documentation:

DEPRECATED Make a new USRP source block using the deprecated io_type_t.

This function will be removed in the future. Please use the other make function, gr::uhd::make(const ::uhd::device_addr_t, const ::uhd::stream_args_t, const std::string).

Args:
    device_addr : 
    io_type : 
    num_channels : "

%feature("docstring") gr::uhd::usrp_source::set_start_time "Set the start time for incoming samples. To control when samples are received, set this value before starting the flow graph. The value is cleared after each run. When not specified, the start time will be:"

%feature("docstring") gr::uhd::usrp_source::issue_stream_cmd "Issue a stream command to all channels in this source block.

This method is intended to override the default \"always on\" behavior. After starting the flow graph, the user should call stop() on this block, then issue any desired arbitrary stream_cmd_t structs to the device. The USRP will be able to enqueue several stream commands in the FPGA."

%feature("docstring") gr::uhd::usrp_source::set_recv_timeout "Configure the timeout value on the UHD recv() call

This is an advanced use parameter. Changing the timeout value affects the latency of this block; a high timeout value can be more optimal for high-throughput applications (e.g., 1 second) and setting it to zero will have the best latency. Changing the timeout value may also be useful for custom FPGA modifications, where traffic might not be continuously streaming. For specialized high-performance use cases, twiddling these knobs may improve performance, but changes are not generally applicable.

Note that UHD's recv() call may block until the timeout is over, which means this block might also block for up to the timeout value."

%feature("docstring") gr::uhd::usrp_source::get_usrp_info "Returns identifying information about this USRP's configuration. Returns motherboard ID, name, and serial. Returns daughterboard RX ID, subdev name and spec, serial, and antenna."

%feature("docstring") gr::uhd::usrp_source::get_lo_names "Get a list of possible LO stage names"

%feature("docstring") gr::uhd::usrp_source::set_lo_source "Set the LO source for the usrp device. For usrps that support selectable LOs, this function allows switching between them. Typical options for source: internal, external."

%feature("docstring") gr::uhd::usrp_source::get_lo_source "Get the currently set LO source."

%feature("docstring") gr::uhd::usrp_source::get_lo_sources "Get a list of possible LO sources."

%feature("docstring") gr::uhd::usrp_source::set_lo_export_enabled "Set whether the LO used by the usrp device is exported For usrps that support exportable LOs, this function configures if the LO used by chan is exported or not."

%feature("docstring") gr::uhd::usrp_source::get_lo_export_enabled "Returns true if the currently selected LO is being exported."

%feature("docstring") gr::uhd::usrp_source::set_lo_freq "Set the RX LO frequency (Advanced)."

%feature("docstring") gr::uhd::usrp_source::get_lo_freq "Get the current RX LO frequency (Advanced)."

%feature("docstring") gr::uhd::usrp_source::get_lo_freq_range "Get the LO frequency range of the RX LO."

%feature("docstring") gr::uhd::usrp_source::set_auto_dc_offset "Enable/disable the automatic DC offset correction. The automatic correction subtracts out the long-run average.

When disabled, the averaging option operation is halted. Once halted, the average value will be held constant until the user re-enables the automatic correction or overrides the value by manually setting the offset."

%feature("docstring") gr::uhd::usrp_source::set_dc_offset "Set a constant DC offset value. The value is complex to control both I and Q. Only set this when automatic correction is disabled."

%feature("docstring") gr::uhd::usrp_source::set_auto_iq_balance "Enable/Disable the RX frontend IQ imbalance correction."

%feature("docstring") gr::uhd::usrp_source::set_iq_balance "Set the RX frontend IQ imbalance correction. Use this to adjust the magnitude and phase of I and Q."

%feature("docstring") gr::uhd::usrp_source::finite_acquisition "Convenience function for finite data acquisition. This is not to be used with the scheduler; rather, one can request samples from the USRP in python. //TODO assumes fc32"

%feature("docstring") gr::uhd::usrp_source::finite_acquisition_v "Convenience function for finite data acquisition. This is the multi-channel version of finite_acquisition; This is not to be used with the scheduler; rather, one can request samples from the USRP in python. //TODO assumes fc32"

%feature("docstring") gr::uhd::usrp_source::make "USRP Source  Radio Receiver

The USRP source block receives samples and writes to a stream. The source block also provides API calls for receiver settings. See also gr::uhd::usrp_block for more public API calls.

RX Stream tagging:

The following tag keys will be produced by the work function:


The timestamp tag value is a pmt tuple of the following: (uint64 seconds, and double fractional seconds). A timestamp tag is produced at start() and after overflows.


Command interface
This block has a message port, which consumes UHD PMT commands. For a description of the command syntax, see Section uhd_command_syntax.

For a more general description of the gr-uhd components, see page_uhd.

Constructor Specific Documentation:

DEPRECATED Make a new USRP source block using the deprecated io_type_t.

This function will be removed in the future. Please use the other make function, gr::uhd::make(const ::uhd::device_addr_t, const ::uhd::stream_args_t, const std::string).

Args:
    device_addr : 
    io_type : 
    num_channels : "

































%feature("docstring") gr::uhd::usrp_block "Base class for USRP blocks.

Note that many of the functions defined here differ between Rx and Tx configurations. As an example, set_center_freq() will set the Rx frequency for a usrp_source object, and the Tx frequency on a usrp_sink object."



%feature("docstring") gr::uhd::usrp_block::set_subdev_spec "Set the frontend specification."

%feature("docstring") gr::uhd::usrp_block::get_subdev_spec "Get the frontend specification."

%feature("docstring") gr::uhd::usrp_block::get_num_mboards "Return the number of motherboards in this configuration."

%feature("docstring") gr::uhd::usrp_block::set_samp_rate "Set the sample rate for this connection to the USRP."

%feature("docstring") gr::uhd::usrp_block::get_samp_rate "Get the sample rate for this connection to the USRP. This is the actual sample rate and may differ from the rate set."

%feature("docstring") gr::uhd::usrp_block::get_samp_rates "Get the possible sample rates for this connection."

%feature("docstring") gr::uhd::usrp_block::set_center_freq "Tune the selected channel to the desired center frequency."

%feature("docstring") gr::uhd::usrp_block::get_center_freq "Get the center frequency."

%feature("docstring") gr::uhd::usrp_block::get_freq_range "Get the tunable frequency range."

%feature("docstring") gr::uhd::usrp_block::set_gain "Set the gain for the selected channel."

%feature("docstring") gr::uhd::usrp_block::set_normalized_gain "Set the normalized gain.

The normalized gain is always in [0, 1], regardless of the device. 0 corresponds to minimum gain (usually 0 dB, but make sure to read the device notes in the UHD manual) and 1 corresponds to maximum gain. This will work for any UHD device. Use get_gain() to see which dB value the normalized gain value corresponds to.

Note that it is not possible to specify a gain name for this function."

%feature("docstring") gr::uhd::usrp_block::get_gain "Get the actual dboard gain setting."

%feature("docstring") gr::uhd::usrp_block::get_normalized_gain "Returns the normalized gain.

The normalized gain is always in [0, 1], regardless of the device. See also set_normalized_gain().

Note that it is not possible to specify a gain name for this function, the result is over the entire gain chain."

%feature("docstring") gr::uhd::usrp_block::get_gain_names "Get the actual dboard gain setting of named stage."

%feature("docstring") gr::uhd::usrp_block::get_gain_range "Get the settable gain range."

%feature("docstring") gr::uhd::usrp_block::set_antenna "Set the antenna to use for a given channel."

%feature("docstring") gr::uhd::usrp_block::get_antenna "Get the antenna in use."

%feature("docstring") gr::uhd::usrp_block::get_antennas "Get a list of possible antennas on a given channel."

%feature("docstring") gr::uhd::usrp_block::set_bandwidth "Set the bandpass filter on the RF frontend."

%feature("docstring") gr::uhd::usrp_block::get_bandwidth "Get the bandpass filter setting on the RF frontend."

%feature("docstring") gr::uhd::usrp_block::get_bandwidth_range "Get the bandpass filter range of the RF frontend."

%feature("docstring") gr::uhd::usrp_block::get_sensor "Get an RF frontend sensor value."

%feature("docstring") gr::uhd::usrp_block::get_sensor_names "Get a list of possible RF frontend sensor names."

%feature("docstring") gr::uhd::usrp_block::get_dboard_sensor "DEPRECATED use get_sensor."

%feature("docstring") gr::uhd::usrp_block::get_dboard_sensor_names "DEPRECATED use get_sensor_names."

%feature("docstring") gr::uhd::usrp_block::get_mboard_sensor "Get a motherboard sensor value."

%feature("docstring") gr::uhd::usrp_block::get_mboard_sensor_names "Get a list of possible motherboard sensor names."

%feature("docstring") gr::uhd::usrp_block::get_time_source "Get the currently set time source."

%feature("docstring") gr::uhd::usrp_block::get_time_sources "Get a list of possible time sources."

%feature("docstring") gr::uhd::usrp_block::set_clock_source "Set the clock source for the usrp device.

This sets the source for a 10 MHz reference clock. Typical options for source: internal, external, MIMO."

%feature("docstring") gr::uhd::usrp_block::get_clock_source "Get the currently set clock source."

%feature("docstring") gr::uhd::usrp_block::get_clock_sources "Get a list of possible clock sources."

%feature("docstring") gr::uhd::usrp_block::get_clock_rate "Get the master clock rate."

%feature("docstring") gr::uhd::usrp_block::set_clock_rate "Set the master clock rate."

%feature("docstring") gr::uhd::usrp_block::get_time_now "Get the current time registers."

%feature("docstring") gr::uhd::usrp_block::get_time_last_pps "Get the time when the last pps pulse occurred."

%feature("docstring") gr::uhd::usrp_block::set_time_now "Sets the time registers immediately."

%feature("docstring") gr::uhd::usrp_block::set_time_next_pps "Set the time registers at the next pps."

%feature("docstring") gr::uhd::usrp_block::set_time_unknown_pps "Sync the time registers with an unknown pps edge."

%feature("docstring") gr::uhd::usrp_block::set_command_time "Set the time at which the control commands will take effect.

A timed command will back-pressure all subsequent timed commands, assuming that the subsequent commands occur within the time-window. If the time spec is late, the command will be activated upon arrival."

%feature("docstring") gr::uhd::usrp_block::clear_command_time "Clear the command time so future commands are sent ASAP."

%feature("docstring") gr::uhd::usrp_block::get_dboard_iface "Get access to the underlying uhd dboard iface object."

%feature("docstring") gr::uhd::usrp_block::get_device "Get access to the underlying uhd device object.

NOTE: This function is only available in C++."

%feature("docstring") gr::uhd::usrp_block::set_user_register "Perform write on the user configuration register bus. These only exist if the user has implemented custom setting registers in the device FPGA."

%feature("docstring") gr::uhd::usrp_block::set_clock_config "Set the clock configuration.

DEPRECATED for set_time/clock_source."

%feature("docstring") gr::uhd::usrp_block::set_time_source "Set the time source for the USRP device.

This sets the method of time synchronization, typically a pulse per second or an encoded time. Typical options for source: external, MIMO."

%feature("docstring") gr::uhd::usrp_block::set_stream_args "Update the stream args for this device.

This update will only take effect after a restart of the streaming, or before streaming and after construction. This will also delete the current streamer. Note you cannot change the I/O signature of this block using this function, or it will throw.

It is possible to leave the 'channels' fields of  unset. In this case, the previous channels field is used."

%feature("docstring") gr::uhd::usrp_block::get_gpio_banks "Enumerate GPIO banks on the current device."

%feature("docstring") gr::uhd::usrp_block::set_gpio_attr "Set a GPIO attribute on a particular GPIO bank. Possible attribute names:"

%feature("docstring") gr::uhd::usrp_block::get_gpio_attr "Get a GPIO attribute on a particular GPIO bank. Possible attribute names:"