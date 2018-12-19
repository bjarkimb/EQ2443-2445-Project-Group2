
/*
 * This file was automatically generated using swig_doc.py.
 *
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") gr::wxgui::histo_sink_f "Histogram module.

Constructor Specific Documentation:



Args:
    msgq : "









%feature("docstring") gr::wxgui::histo_sink_f::make "Histogram module.

Constructor Specific Documentation:



Args:
    msgq : "

%feature("docstring") gr::wxgui::oscope_sink_f "Building block for python oscilloscope module.

Accepts multiple float streams.

Constructor Specific Documentation:



Args:
    sampling_rate : 
    msgq : "

%feature("docstring") gr::wxgui::oscope_sink_f::make "Building block for python oscilloscope module.

Accepts multiple float streams.

Constructor Specific Documentation:



Args:
    sampling_rate : 
    msgq : "

%feature("docstring") gr::wxgui::oscope_guts "guts of oscilloscope trigger and buffer module

This module processes sets of samples provided the  method. When appropriate given the updateRate, sampleRate and trigger conditions, process_sample will periodically write output records of captured data to output_fd. For each trigger event, nchannels records will be written. Each record consists of get_samples_per_output_record binary floats. The trigger instant occurs at the 1/2 way point in the buffer. Thus, output records consist of 50% pre-trigger data and 50% post-trigger data."



























































%feature("docstring") gr::wxgui::oscope_sink_x "Abstract class for python oscilloscope module.

Don't instantiate this. Use gr::blocks::oscope_sink_f instead."









































