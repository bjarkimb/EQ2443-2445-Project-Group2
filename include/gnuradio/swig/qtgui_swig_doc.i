
/*
 * This file was automatically generated using swig_doc.py.
 *
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") gr::qtgui::ber_sink_b "

Constructor Specific Documentation:



Args:
    esnos : 
    curves : 
    berminerrors : 
    berLimit : 
    curvenames : 
    parent : "















































%feature("docstring") gr::qtgui::ber_sink_b::make "

Constructor Specific Documentation:



Args:
    esnos : 
    curves : 
    berminerrors : 
    berLimit : 
    curvenames : 
    parent : "

%feature("docstring") gr::qtgui::const_sink_c "A graphical sink to display the IQ constellation of multiple signals.

This is a QT-based graphical sink the takes set of a complex streams and plots them on an IQ constellation plot.

The sink supports plotting streaming complex data or messages. The message port is named \"in\". The two modes cannot be used simultaneously, and  should be set to 0 when using the message mode. GRC handles this issue by providing the \"Complex Message\" type that removes the streaming port(s).

This sink can plot messages that contain either uniform vectors of complex 32 values (pmt::is_c32vector) or PDUs where the data is a uniform vector of complex 32 values.

Constructor Specific Documentation:

Build a constellation plot sink.

Args:
    size : number of points to plot at once
    name : title for the plot
    nconnections : number of signals connected to sink
    parent : a QWidget parent object, if any"





























%feature("docstring") gr::qtgui::const_sink_c::set_trigger_mode "Set up a trigger for the sink to know when to start plotting. Useful to isolate events and avoid noise.

The trigger modes are Free, Auto, Normal, and Tag (see gr::qtgui::trigger_mode). The first three are like a normal oscope trigger function. Free means free running with no trigger, auto will trigger if the trigger event is seen, but will still plot otherwise, and normal will hold until the trigger event is observed. The Tag trigger mode allows us to trigger off a specific stream tag. The tag trigger is based only on the name of the tag, so when a tag of the given name is seen, the trigger is activated.

In auto and normal mode, we look for the slope of the magnitude of the signal. As a constellation sink, this only takes in complex numbers to plot. Given a gr::qtgui::trigger_slope as either Positive or Negative, if the magnitude between two samples moves in the given direction (x[1] > x[0] for Positive or x[1] < x[0] for Negative), then the trigger is activated."































%feature("docstring") gr::qtgui::const_sink_c::make "A graphical sink to display the IQ constellation of multiple signals.

This is a QT-based graphical sink the takes set of a complex streams and plots them on an IQ constellation plot.

The sink supports plotting streaming complex data or messages. The message port is named \"in\". The two modes cannot be used simultaneously, and  should be set to 0 when using the message mode. GRC handles this issue by providing the \"Complex Message\" type that removes the streaming port(s).

This sink can plot messages that contain either uniform vectors of complex 32 values (pmt::is_c32vector) or PDUs where the data is a uniform vector of complex 32 values.

Constructor Specific Documentation:

Build a constellation plot sink.

Args:
    size : number of points to plot at once
    name : title for the plot
    nconnections : number of signals connected to sink
    parent : a QWidget parent object, if any"

%feature("docstring") gr::qtgui::edit_box_msg "Create a QT Edit Box widget where the value is posted as a message.

This block creates a QT Edit Box widget that manages data through message passing interfaces. The 'msg' output port produces messages based on the text in the edit box and the data type set by the  argument (see gr::qtgui::data_type_t). The data types are checked, and WARN log messages are produced when the data is in the wrong format. Not all errors are explicitly checked for, only that conversions happen correctly. Failures are either produces as log messages or the action is simply silently dropped.

The value of the edit boxes can be programmatically updated through the 'val' input message port. It is also checked for the correct data type.

The  argument to the constructor determines if the edit box handles a key:value pair. If set to True, two edit boxes are created with the left for the key and right for the value. The key is always assumed to be a string and the value is restricted by the data type setting as above.

The block can take a default value. Because the block is capable of handling multiple different data types, we enter the default value as a string in the same way we expect the user to enter it into the Value edit box of the widget. We convert this default exactly the same way we convert the user-entered text in the edit box. See the next paragraph for an explanation for how to handle complex numbers.

Complex numbers are currently handled a bit differently than expected. Because we use the Boost lexical_cast function, complex numbers MUST be in the form \"(a,b)\" to represent \"a +
jb\". Note that you cannot even have a space after the comma, so \"(1.23,10.56)\" is correct while \"(1.23, 10.56)\" will not parse.

The 'static' mode prevents the user from changing the data type or the key used in the widget. If also in 'pair' mode, the key is not displayed and so must be set in the constructor. It is an error if using static and pair modes with no default key set.

Message Ports:

Constructor Specific Documentation:

Constructs the Edit box block.

Args:
    type : the data type of data in the value box.
    value : the default value of the message. This is entered as a string regardless of the type and converted internally  much like how the block extracts the value from the edit box and converts it.
    label : a label to identify the box on screen.
    is_pair : if we are using a key:value pair.
    is_static : sets the key edit box as a static text box (cannot be edited live).
    key : Set the key used in a key:value pair message.
    parent : a QWidget parent in the QT app."







%feature("docstring") gr::qtgui::edit_box_msg::make "Create a QT Edit Box widget where the value is posted as a message.

This block creates a QT Edit Box widget that manages data through message passing interfaces. The 'msg' output port produces messages based on the text in the edit box and the data type set by the  argument (see gr::qtgui::data_type_t). The data types are checked, and WARN log messages are produced when the data is in the wrong format. Not all errors are explicitly checked for, only that conversions happen correctly. Failures are either produces as log messages or the action is simply silently dropped.

The value of the edit boxes can be programmatically updated through the 'val' input message port. It is also checked for the correct data type.

The  argument to the constructor determines if the edit box handles a key:value pair. If set to True, two edit boxes are created with the left for the key and right for the value. The key is always assumed to be a string and the value is restricted by the data type setting as above.

The block can take a default value. Because the block is capable of handling multiple different data types, we enter the default value as a string in the same way we expect the user to enter it into the Value edit box of the widget. We convert this default exactly the same way we convert the user-entered text in the edit box. See the next paragraph for an explanation for how to handle complex numbers.

Complex numbers are currently handled a bit differently than expected. Because we use the Boost lexical_cast function, complex numbers MUST be in the form \"(a,b)\" to represent \"a +
jb\". Note that you cannot even have a space after the comma, so \"(1.23,10.56)\" is correct while \"(1.23, 10.56)\" will not parse.

The 'static' mode prevents the user from changing the data type or the key used in the widget. If also in 'pair' mode, the key is not displayed and so must be set in the constructor. It is an error if using static and pair modes with no default key set.

Message Ports:

Constructor Specific Documentation:

Constructs the Edit box block.

Args:
    type : the data type of data in the value box.
    value : the default value of the message. This is entered as a string regardless of the type and converted internally  much like how the block extracts the value from the edit box and converts it.
    label : a label to identify the box on screen.
    is_pair : if we are using a key:value pair.
    is_static : sets the key edit box as a static text box (cannot be edited live).
    key : Set the key used in a key:value pair message.
    parent : a QWidget parent in the QT app."

%feature("docstring") gr::qtgui::freq_sink_c "A graphical sink to display multiple signals in frequency.

This is a QT-based graphical sink the takes set of a complex streams and plots the PSD. Each signal is plotted with a different color, and the  and  functions can be used to change the lable and color for a given input number.

The sink supports plotting streaming complex data or messages. The message port is named \"in\". The two modes cannot be used simultaneously, and  should be set to 0 when using the message mode. GRC handles this issue by providing the \"Complex Message\" type that removes the streaming port(s).

This sink can plot messages that contain either uniform vectors of complex 32 values (pmt::is_c32vector) or PDUs where the data is a uniform vector of complex 32 values.

Message Ports:

Constructor Specific Documentation:

Build a complex PSD sink.

Args:
    fftsize : size of the FFT to compute and display. If using the PDU message port to plot samples, the length of each PDU must be a multiple of the FFT size.
    wintype : type of window to apply (see gr::fft::window::win_type)
    fc : center frequency of signal (use for x-axis labels)
    bw : bandwidth of signal (used to set x-axis labels)
    name : title for the plot
    nconnections : number of signals to be connected to the sink. The PDU message port is always available for a connection, and this value must be set to 0 if only the PDU message port is being used.
    parent : a QWidget parent object, if any"









































%feature("docstring") gr::qtgui::freq_sink_c::set_trigger_mode "Set up a trigger for the sink to know when to start plotting. Useful to isolate events and avoid noise.

The trigger modes are Free, Auto, Normal, and Tag (see gr::qtgui::trigger_mode). The first three are like a normal trigger function. Free means free running with no trigger, auto will trigger if the trigger event is seen, but will still plot otherwise, and normal will hold until the trigger event is observed. The Tag trigger mode allows us to trigger off a specific stream tag. The tag trigger is based only on the name of the tag, so when a tag of the given name is seen, the trigger is activated.

In auto and normal mode, we look to see if the magnitude of the any FFT point is over the set level."







































%feature("docstring") gr::qtgui::freq_sink_c::make "A graphical sink to display multiple signals in frequency.

This is a QT-based graphical sink the takes set of a complex streams and plots the PSD. Each signal is plotted with a different color, and the  and  functions can be used to change the lable and color for a given input number.

The sink supports plotting streaming complex data or messages. The message port is named \"in\". The two modes cannot be used simultaneously, and  should be set to 0 when using the message mode. GRC handles this issue by providing the \"Complex Message\" type that removes the streaming port(s).

This sink can plot messages that contain either uniform vectors of complex 32 values (pmt::is_c32vector) or PDUs where the data is a uniform vector of complex 32 values.

Message Ports:

Constructor Specific Documentation:

Build a complex PSD sink.

Args:
    fftsize : size of the FFT to compute and display. If using the PDU message port to plot samples, the length of each PDU must be a multiple of the FFT size.
    wintype : type of window to apply (see gr::fft::window::win_type)
    fc : center frequency of signal (use for x-axis labels)
    bw : bandwidth of signal (used to set x-axis labels)
    name : title for the plot
    nconnections : number of signals to be connected to the sink. The PDU message port is always available for a connection, and this value must be set to 0 if only the PDU message port is being used.
    parent : a QWidget parent object, if any"

%feature("docstring") gr::qtgui::freq_sink_f "A graphical sink to display multiple signals in frequency.

This is a QT-based graphical sink the takes set of a floating point streams and plots the PSD. Each signal is plotted with a different color, and the  and  functions can be used to change the lable and color for a given input number.

The sink supports plotting streaming float data or messages. The message port is named \"in\". The two modes cannot be used simultaneously, and  should be set to 0 when using the message mode. GRC handles this issue by providing the \"Float Message\" type that removes the streaming port(s).

This sink can plot messages that contain either uniform vectors of float 32 values (pmt::is_f32vector) or PDUs where the data is a uniform vector of float 32 values.

Message Ports:

Constructor Specific Documentation:

Build a floating point PSD sink.

Args:
    fftsize : size of the FFT to compute and display. If using the PDU message port to plot samples, the length of each PDU must be a multiple of the FFT size.
    wintype : type of window to apply (see gr::fft::window::win_type)
    fc : center frequency of signal (use for x-axis labels)
    bw : bandwidth of signal (used to set x-axis labels)
    name : title for the plot
    nconnections : number of signals to be connected to the sink. The PDU message port is always available for a connection, and this value must be set to 0 if only the PDU message port is being used.
    parent : a QWidget parent object, if any"









































%feature("docstring") gr::qtgui::freq_sink_f::set_plot_pos_half "Pass \"true\" to this function to only show the positive half of the spectrum. By default, this plotter shows the full spectrum (positive and negative halves)."

%feature("docstring") gr::qtgui::freq_sink_f::set_trigger_mode "Set up a trigger for the sink to know when to start plotting. Useful to isolate events and avoid noise.

The trigger modes are Free, Auto, Normal, and Tag (see gr::qtgui::trigger_mode). The first three are like a normal trigger function. Free means free running with no trigger, auto will trigger if the trigger event is seen, but will still plot otherwise, and normal will hold until the trigger event is observed. The Tag trigger mode allows us to trigger off a specific stream tag. The tag trigger is based only on the name of the tag, so when a tag of the given name is seen, the trigger is activated.

In auto and normal mode, we look to see if the magnitude of the any FFT point is over the set level."







































%feature("docstring") gr::qtgui::freq_sink_f::make "A graphical sink to display multiple signals in frequency.

This is a QT-based graphical sink the takes set of a floating point streams and plots the PSD. Each signal is plotted with a different color, and the  and  functions can be used to change the lable and color for a given input number.

The sink supports plotting streaming float data or messages. The message port is named \"in\". The two modes cannot be used simultaneously, and  should be set to 0 when using the message mode. GRC handles this issue by providing the \"Float Message\" type that removes the streaming port(s).

This sink can plot messages that contain either uniform vectors of float 32 values (pmt::is_f32vector) or PDUs where the data is a uniform vector of float 32 values.

Message Ports:

Constructor Specific Documentation:

Build a floating point PSD sink.

Args:
    fftsize : size of the FFT to compute and display. If using the PDU message port to plot samples, the length of each PDU must be a multiple of the FFT size.
    wintype : type of window to apply (see gr::fft::window::win_type)
    fc : center frequency of signal (use for x-axis labels)
    bw : bandwidth of signal (used to set x-axis labels)
    name : title for the plot
    nconnections : number of signals to be connected to the sink. The PDU message port is always available for a connection, and this value must be set to 0 if only the PDU message port is being used.
    parent : a QWidget parent object, if any"

%feature("docstring") gr::qtgui::histogram_sink_f "A graphical sink to display a histogram.

This is a QT-based graphical sink the displays a histogram of the data.

This histogram allows you to set and change at runtime the number of points to plot at once and the number of bins in the histogram. Both x and y-axis have their own auto-scaling behavior. By default, auto-scaling the y-axis is turned on and continuously updates the y-axis max value based on the currently plotted histogram.

The x-axis auto-scaling function only updates once when clicked. This resets the x-axis to the current range of minimum and maximum values represented in the histogram. It resets any values currently displayed because the location and width of the bins may have changed.

The histogram also has an accumulate function that simply accumulates the data between calls to work. When accumulate is activated, the y-axis autoscaling is turned on by default as the values will quickly grow in the this direction.

The sink supports plotting streaming float data or messages. The message port is named \"in\". The two modes cannot be used simultaneously, and  should be set to 0 when using the message mode. GRC handles this issue by providing the \"Float Message\" type that removes the streaming port(s).

This sink can plot messages that contain either uniform vectors of float 32 values (pmt::is_f32vector) or PDUs where the data is a uniform vector of float 32 values.

Constructor Specific Documentation:

Build floating point histogram sink.

Args:
    size : number of points to plot at once
    bins : number of bins to sort the data into
    xmin : minimum x-axis value
    xmax : maximum x-axis value
    name : title for the plot
    nconnections : number of signals connected to sink
    parent : a QWidget parent object, if any"







































































%feature("docstring") gr::qtgui::histogram_sink_f::make "A graphical sink to display a histogram.

This is a QT-based graphical sink the displays a histogram of the data.

This histogram allows you to set and change at runtime the number of points to plot at once and the number of bins in the histogram. Both x and y-axis have their own auto-scaling behavior. By default, auto-scaling the y-axis is turned on and continuously updates the y-axis max value based on the currently plotted histogram.

The x-axis auto-scaling function only updates once when clicked. This resets the x-axis to the current range of minimum and maximum values represented in the histogram. It resets any values currently displayed because the location and width of the bins may have changed.

The histogram also has an accumulate function that simply accumulates the data between calls to work. When accumulate is activated, the y-axis autoscaling is turned on by default as the values will quickly grow in the this direction.

The sink supports plotting streaming float data or messages. The message port is named \"in\". The two modes cannot be used simultaneously, and  should be set to 0 when using the message mode. GRC handles this issue by providing the \"Float Message\" type that removes the streaming port(s).

This sink can plot messages that contain either uniform vectors of float 32 values (pmt::is_f32vector) or PDUs where the data is a uniform vector of float 32 values.

Constructor Specific Documentation:

Build floating point histogram sink.

Args:
    size : number of points to plot at once
    bins : number of bins to sort the data into
    xmin : minimum x-axis value
    xmax : maximum x-axis value
    name : title for the plot
    nconnections : number of signals connected to sink
    parent : a QWidget parent object, if any"

%feature("docstring") gr::qtgui::number_sink "A graphical sink to display numerical values of input streams.

Displays the data stream in as a number in a simple text box GUI along with an optional bar graph. The bar graph can be set to horizontal (NUM_GRAPH_HORIZ), vertical (NUM_GRAPH_VERT), or no graph (NUM_GRAPH_NONE).

The displayed value can be the average of the input stream, in which case all items received are averaged. If not averaging, the display simply samples a value in the data stream based on the update time of this block.

Note that due to a flaw in the implementation, this block cannot receive integer value inputs. It will take chars, shorts, and floats and properly convert them by setting itemsize of the constructor to one of these three values (sizeof_char, sizeof_short, and sizeof_float, respectively). If using integers, the block treats these as floats. Instead, put the integer input stream through an gr::blocks::int_to_float converter block.

Constructor Specific Documentation:

Build a number sink.

Args:
    itemsize : Size of input item stream
    average : Averaging coefficient (0 - 1)
    graph_type : Type of graph to use (number_sink::graph_t)
    nconnections : number of signals connected to sink
    parent : a QWidget parent object, if any"





















































%feature("docstring") gr::qtgui::number_sink::make "A graphical sink to display numerical values of input streams.

Displays the data stream in as a number in a simple text box GUI along with an optional bar graph. The bar graph can be set to horizontal (NUM_GRAPH_HORIZ), vertical (NUM_GRAPH_VERT), or no graph (NUM_GRAPH_NONE).

The displayed value can be the average of the input stream, in which case all items received are averaged. If not averaging, the display simply samples a value in the data stream based on the update time of this block.

Note that due to a flaw in the implementation, this block cannot receive integer value inputs. It will take chars, shorts, and floats and properly convert them by setting itemsize of the constructor to one of these three values (sizeof_char, sizeof_short, and sizeof_float, respectively). If using integers, the block treats these as floats. Instead, put the integer input stream through an gr::blocks::int_to_float converter block.

Constructor Specific Documentation:

Build a number sink.

Args:
    itemsize : Size of input item stream
    average : Averaging coefficient (0 - 1)
    graph_type : Type of graph to use (number_sink::graph_t)
    nconnections : number of signals connected to sink
    parent : a QWidget parent object, if any"

%feature("docstring") gr::qtgui::sink_c "A graphical sink to display freq, spec, time, and const plots.

This is a QT-based graphical sink the takes a complex stream and plots it. The default action is to plot the signal as a PSD (FFT), spectrogram (waterfall), time domain I&Q, and constellation (I vs. Q) plots. The plots may be turned off by setting the appropriate boolean value in the constructor to False.

Message Ports:

Constructor Specific Documentation:

Build a complex qtgui sink.

Args:
    fftsize : size of the FFT to compute and display
    wintype : type of window to apply (see gnuradio/filter/firdes.h)
    fc : center frequency of signal (use for x-axis labels)
    bw : bandwidth of signal (used to set x-axis labels)
    name : title for the plot
    plotfreq : Toggle frequency plot on/off
    plotwaterfall : Toggle waterfall plot on/off
    plottime : Toggle time plot on/off
    plotconst : Toggle constellation plot on/off
    parent : a QWidget parent object, if any"



















%feature("docstring") gr::qtgui::sink_c::make "A graphical sink to display freq, spec, time, and const plots.

This is a QT-based graphical sink the takes a complex stream and plots it. The default action is to plot the signal as a PSD (FFT), spectrogram (waterfall), time domain I&Q, and constellation (I vs. Q) plots. The plots may be turned off by setting the appropriate boolean value in the constructor to False.

Message Ports:

Constructor Specific Documentation:

Build a complex qtgui sink.

Args:
    fftsize : size of the FFT to compute and display
    wintype : type of window to apply (see gnuradio/filter/firdes.h)
    fc : center frequency of signal (use for x-axis labels)
    bw : bandwidth of signal (used to set x-axis labels)
    name : title for the plot
    plotfreq : Toggle frequency plot on/off
    plotwaterfall : Toggle waterfall plot on/off
    plottime : Toggle time plot on/off
    plotconst : Toggle constellation plot on/off
    parent : a QWidget parent object, if any"

%feature("docstring") gr::qtgui::sink_f "A graphical sink to display freq, spec, and time.

This is a QT-based graphical sink the takes a float stream and plots it. The default action is to plot the signal as a PSD (FFT), spectrogram (waterfall), and time domain plots. The plots may be turned off by setting the appropriate boolean value in the constructor to False.

Message Ports:

Constructor Specific Documentation:

Build a floating point qtgui sink.

Args:
    fftsize : size of the FFT to compute and display
    wintype : type of window to apply (see gnuradio/filter/firdes.h)
    fc : center frequency of signal (use for x-axis labels)
    bw : bandwidth of signal (used to set x-axis labels)
    name : title for the plot
    plotfreq : Toggle frequency plot on/off
    plotwaterfall : Toggle waterfall plot on/off
    plottime : Toggle time plot on/off
    plotconst : Toggle constellation plot on/off
    parent : a QWidget parent object, if any"



















%feature("docstring") gr::qtgui::sink_f::make "A graphical sink to display freq, spec, and time.

This is a QT-based graphical sink the takes a float stream and plots it. The default action is to plot the signal as a PSD (FFT), spectrogram (waterfall), and time domain plots. The plots may be turned off by setting the appropriate boolean value in the constructor to False.

Message Ports:

Constructor Specific Documentation:

Build a floating point qtgui sink.

Args:
    fftsize : size of the FFT to compute and display
    wintype : type of window to apply (see gnuradio/filter/firdes.h)
    fc : center frequency of signal (use for x-axis labels)
    bw : bandwidth of signal (used to set x-axis labels)
    name : title for the plot
    plotfreq : Toggle frequency plot on/off
    plotwaterfall : Toggle waterfall plot on/off
    plottime : Toggle time plot on/off
    plotconst : Toggle constellation plot on/off
    parent : a QWidget parent object, if any"

%feature("docstring") gr::qtgui::time_raster_sink_b "A graphical sink to display multiple signals on a time_raster plot.

This is a QT-based graphical sink that takes in byte streams and plots a time_raster (spectrogram) plot.

Input stream: This expects a bit stream (0, 1 in the LSB of a byte). It will display packed bytes but the display will have to be autoscaled.

The sink supports plotting streaming byte/char data or messages. The message port is named \"in\". The two modes cannot be used simultaneously, and  should be set to 0 when using the message mode. GRC handles this issue by providing the \"Float Message\" type that removes the streaming port(s).

This sink can plot messages that contain either uniform vectors of byte/char values (pmt::is_{u,s}32vector) or PDUs where the data is a uniform vector of byte/char values.

Constructor Specific Documentation:

Build a bit time raster sink.

Args:
    samp_rate : sample rate of signal
    cols : number of cols to plot
    rows : number of rows to plot
    mult : vector of floats as a scaling multiplier for each input stream
    offset : vector of floats as an offset for each input stream
    name : title for the plot
    nconnections : number of streams connected
    parent : a QWidget parent object, if any"





































































%feature("docstring") gr::qtgui::time_raster_sink_b::make "A graphical sink to display multiple signals on a time_raster plot.

This is a QT-based graphical sink that takes in byte streams and plots a time_raster (spectrogram) plot.

Input stream: This expects a bit stream (0, 1 in the LSB of a byte). It will display packed bytes but the display will have to be autoscaled.

The sink supports plotting streaming byte/char data or messages. The message port is named \"in\". The two modes cannot be used simultaneously, and  should be set to 0 when using the message mode. GRC handles this issue by providing the \"Float Message\" type that removes the streaming port(s).

This sink can plot messages that contain either uniform vectors of byte/char values (pmt::is_{u,s}32vector) or PDUs where the data is a uniform vector of byte/char values.

Constructor Specific Documentation:

Build a bit time raster sink.

Args:
    samp_rate : sample rate of signal
    cols : number of cols to plot
    rows : number of rows to plot
    mult : vector of floats as a scaling multiplier for each input stream
    offset : vector of floats as an offset for each input stream
    name : title for the plot
    nconnections : number of streams connected
    parent : a QWidget parent object, if any"

%feature("docstring") gr::qtgui::time_raster_sink_f "A graphical sink to display multiple signals on a time_raster plot.

This is a QT-based graphical sink that takes set of a floating point streams and plots a time_raster (spectrogram) plot.

The sink supports plotting streaming float data or messages. The message port is named \"in\". The two modes cannot be used simultaneously, and  should be set to 0 when using the message mode. GRC handles this issue by providing the \"Float Message\" type that removes the streaming port(s).

This sink can plot messages that contain either uniform vectors of float 32 values (pmt::is_f32vector) or PDUs where the data is a uniform vector of float 32 values.

Constructor Specific Documentation:

Build a floating point time raster sink.

Args:
    samp_rate : sample rate of signal
    cols : number of cols to plot
    rows : number of rows to plot
    mult : vector of floats as a scaling multiplier for each input stream
    offset : vector of floats as an offset for each input stream
    name : title for the plot
    nconnections : number of streams connected
    parent : a QWidget parent object, if any"





































































%feature("docstring") gr::qtgui::time_raster_sink_f::make "A graphical sink to display multiple signals on a time_raster plot.

This is a QT-based graphical sink that takes set of a floating point streams and plots a time_raster (spectrogram) plot.

The sink supports plotting streaming float data or messages. The message port is named \"in\". The two modes cannot be used simultaneously, and  should be set to 0 when using the message mode. GRC handles this issue by providing the \"Float Message\" type that removes the streaming port(s).

This sink can plot messages that contain either uniform vectors of float 32 values (pmt::is_f32vector) or PDUs where the data is a uniform vector of float 32 values.

Constructor Specific Documentation:

Build a floating point time raster sink.

Args:
    samp_rate : sample rate of signal
    cols : number of cols to plot
    rows : number of rows to plot
    mult : vector of floats as a scaling multiplier for each input stream
    offset : vector of floats as an offset for each input stream
    name : title for the plot
    nconnections : number of streams connected
    parent : a QWidget parent object, if any"

%feature("docstring") gr::qtgui::time_sink_c "A graphical sink to display multiple signals in time.

This is a QT-based graphical sink the takes set of a complex streams and plots them in the time domain. For each signal, both the signal's I and Q parts are plotted, and they are all plotted with a different color, and the  and  functions can be used to change the lable and color for a given input number.

The sink supports plotting streaming complex data or messages. The message port is named \"in\". The two modes cannot be used simultaneously, and  should be set to 0 when using the message mode. GRC handles this issue by providing the \"Complex Message\" type that removes the streaming port(s).

This sink can plot messages that contain either uniform vectors of complex 32 values (pmt::is_c32vector) or PDUs where the data is a uniform vector of complex 32 values.

Constructor Specific Documentation:

Build complex time sink.

Args:
    size : number of points to plot at once
    samp_rate : sample rate (used to set x-axis labels)
    name : title for the plot
    nconnections : number of signals connected to sink
    parent : a QWidget parent object, if any"































%feature("docstring") gr::qtgui::time_sink_c::set_trigger_mode "Set up a trigger for the sink to know when to start plotting. Useful to isolate events and avoid noise.

The trigger modes are Free, Auto, Normal, and Tag (see gr::qtgui::trigger_mode). The first three are like a normal oscope trigger function. Free means free running with no trigger, auto will trigger if the trigger event is seen, but will still plot otherwise, and normal will hold until the trigger event is observed. The Tag trigger mode allows us to trigger off a specific stream tag. The tag trigger is based only on the name of the tag, so when a tag of the given name is seen, the trigger is activated.

In auto and normal mode, we look for the slope of the of the signal. Given a gr::qtgui::trigger_slope as either Positive or Negative, if the value between two samples moves in the given direction (x[1] > x[0] for Positive or x[1] < x[0] for Negative), then the trigger is activated.

With the complex time sink, each input has two lines drawn for the real and imaginary parts of the signal. When selecting the  value, channel 0 is the real signal and channel 1 is the imaginary signal. For more than 1 input stream, channel 2i is the real part of the ith input and channel (2i+1) is the imaginary part of the ith input channel.

The  value is specified in time based off the sample rate. If the sample rate of the block is set to 1, the delay is then also the sample number offset. This is the offset from the left-hand y-axis of the plot. It delays the signal to show the trigger event at the given delay along with some portion of the signal before the event. The delay must be within 0 - t_max where t_max is the maximum amount of time displayed on the time plot."









































%feature("docstring") gr::qtgui::time_sink_c::make "A graphical sink to display multiple signals in time.

This is a QT-based graphical sink the takes set of a complex streams and plots them in the time domain. For each signal, both the signal's I and Q parts are plotted, and they are all plotted with a different color, and the  and  functions can be used to change the lable and color for a given input number.

The sink supports plotting streaming complex data or messages. The message port is named \"in\". The two modes cannot be used simultaneously, and  should be set to 0 when using the message mode. GRC handles this issue by providing the \"Complex Message\" type that removes the streaming port(s).

This sink can plot messages that contain either uniform vectors of complex 32 values (pmt::is_c32vector) or PDUs where the data is a uniform vector of complex 32 values.

Constructor Specific Documentation:

Build complex time sink.

Args:
    size : number of points to plot at once
    samp_rate : sample rate (used to set x-axis labels)
    name : title for the plot
    nconnections : number of signals connected to sink
    parent : a QWidget parent object, if any"

%feature("docstring") gr::qtgui::time_sink_f "A graphical sink to display multiple signals in time.

This is a QT-based graphical sink the takes set of a float streams and plots them in the time domain. Each signal is plotted with a different color, and the  and  functions can be used to change the lable and color for a given input number.

The sink supports plotting streaming float data or messages. The message port is named \"in\". The two modes cannot be used simultaneously, and  should be set to 0 when using the message mode. GRC handles this issue by providing the \"Float Message\" type that removes the streaming port(s).

This sink can plot messages that contain either uniform vectors of float 32 values (pmt::is_f32vector) or PDUs where the data is a uniform vector of float 32 values.

Constructor Specific Documentation:

Build floating point time sink.

Args:
    size : number of points to plot at once
    samp_rate : sample rate (used to set x-axis labels)
    name : title for the plot
    nconnections : number of signals connected to sink
    parent : a QWidget parent object, if any"































%feature("docstring") gr::qtgui::time_sink_f::set_trigger_mode "Set up a trigger for the sink to know when to start plotting. Useful to isolate events and avoid noise.

The trigger modes are Free, Auto, Normal, and Tag (see gr::qtgui::trigger_mode). The first three are like a normal oscope trigger function. Free means free running with no trigger, auto will trigger if the trigger event is seen, but will still plot otherwise, and normal will hold until the trigger event is observed. The Tag trigger mode allows us to trigger off a specific stream tag. The tag trigger is based only on the name of the tag, so when a tag of the given name is seen, the trigger is activated.

In auto and normal mode, we look for the slope of the of the signal. Given a gr::qtgui::trigger_slope as either Positive or Negative, if the value between two samples moves in the given direction (x[1] > x[0] for Positive or x[1] < x[0] for Negative), then the trigger is activated.

The  value is specified in time based off the sample rate. If the sample rate of the block is set to 1, the delay is then also the sample number offset. This is the offset from the left-hand y-axis of the plot. It delays the signal to show the trigger event at the given delay along with some portion of the signal before the event. The delay must be within 0 - t_max where t_max is the maximum amount of time displayed on the time plot."









































%feature("docstring") gr::qtgui::time_sink_f::make "A graphical sink to display multiple signals in time.

This is a QT-based graphical sink the takes set of a float streams and plots them in the time domain. Each signal is plotted with a different color, and the  and  functions can be used to change the lable and color for a given input number.

The sink supports plotting streaming float data or messages. The message port is named \"in\". The two modes cannot be used simultaneously, and  should be set to 0 when using the message mode. GRC handles this issue by providing the \"Float Message\" type that removes the streaming port(s).

This sink can plot messages that contain either uniform vectors of float 32 values (pmt::is_f32vector) or PDUs where the data is a uniform vector of float 32 values.

Constructor Specific Documentation:

Build floating point time sink.

Args:
    size : number of points to plot at once
    samp_rate : sample rate (used to set x-axis labels)
    name : title for the plot
    nconnections : number of signals connected to sink
    parent : a QWidget parent object, if any"

%feature("docstring") gr::qtgui::vector_sink_f "A graphical sink to display multiple vector-based signals.

This is a QT-based graphical sink that plots vectors of data as-is. Each signal is plotted with a different color, and the set_title() and set_color() functions can be used to change the label and color for a given input number.

To specify units for the x- and y-axes, use the set_x_axis_units() and set_y_axis_units() functions. This does not change the x- and y-labels, which are either specified during construction, or by calling the set_x_axis_label() and set_y_axis_label() methods.

Constructor Specific Documentation:

Build a vector plotting sink.

Args:
    vlen : Vector length at input. This cannot be changed during operations.
    x_start : The x-Axis value of the first vector element
    x_step : The step with which x-Axis values increment
    x_axis_label : The X-Axis label
    y_axis_label : The Y-Axis label
    name : title for the plot
    nconnections : number of signals connected to sink
    parent : a QWidget parent object, if any"













%feature("docstring") gr::qtgui::vector_sink_f::set_x_axis "Update the values on the x-Axis."



%feature("docstring") gr::qtgui::vector_sink_f::set_ref_level "The ref level is a reference line."





%feature("docstring") gr::qtgui::vector_sink_f::set_x_axis_units "Change the units string on the x-Axis (e.g. 'm' if x-Axis label was 'Distance')"

%feature("docstring") gr::qtgui::vector_sink_f::set_y_axis_units "Change the units string on the y-Axis (e.g. 'V' if x-Axis label was 'Amplitude')"













































%feature("docstring") gr::qtgui::vector_sink_f::make "A graphical sink to display multiple vector-based signals.

This is a QT-based graphical sink that plots vectors of data as-is. Each signal is plotted with a different color, and the set_title() and set_color() functions can be used to change the label and color for a given input number.

To specify units for the x- and y-axes, use the set_x_axis_units() and set_y_axis_units() functions. This does not change the x- and y-labels, which are either specified during construction, or by calling the set_x_axis_label() and set_y_axis_label() methods.

Constructor Specific Documentation:

Build a vector plotting sink.

Args:
    vlen : Vector length at input. This cannot be changed during operations.
    x_start : The x-Axis value of the first vector element
    x_step : The step with which x-Axis values increment
    x_axis_label : The X-Axis label
    y_axis_label : The Y-Axis label
    name : title for the plot
    nconnections : number of signals connected to sink
    parent : a QWidget parent object, if any"

%feature("docstring") gr::qtgui::waterfall_sink_c "A graphical sink to display multiple signals on a waterfall (spectrogram) plot.

This is a QT-based graphical sink the takes set of a complex streams and plots a waterfall (spectrogram) plot.

Note that unlike the other qtgui sinks, this one does not support multiple input streams. We have yet to figure out a good way to display multiple, independent signals on this kind of a plot. If there are any suggestions or examples of this, we would love to see them. Otherwise, to display multiple signals here, it's probably best to sum the signals together and connect that here.

The sink supports plotting streaming complex data or messages. The message port is named \"in\". The two modes cannot be used simultaneously, and  should be set to 0 when using the message mode. GRC handles this issue by providing the \"Complex Message\" type that removes the streaming port(s).

This sink can plot messages that contain either uniform vectors of complex 32 values (pmt::is_c32vector) or PDUs where the data is a uniform vector of complex 32 values.

Message Ports:

Constructor Specific Documentation:

Build a complex waterfall sink.

Args:
    size : size of the FFT to compute and display. If using the PDU message port to plot samples, the length of each PDU must be a multiple of the FFT size.
    wintype : type of window to apply (see gr::fft::window::win_type)
    fc : center frequency of signal (use for x-axis labels)
    bw : bandwidth of signal (used to set x-axis labels)
    name : title for the plot
    nconnections : number of signals to be connected to the sink. The PDU message port is always available for a connection, and this value must be set to 0 if only the PDU message port is being used.
    parent : a QWidget parent object, if any"































































%feature("docstring") gr::qtgui::waterfall_sink_c::make "A graphical sink to display multiple signals on a waterfall (spectrogram) plot.

This is a QT-based graphical sink the takes set of a complex streams and plots a waterfall (spectrogram) plot.

Note that unlike the other qtgui sinks, this one does not support multiple input streams. We have yet to figure out a good way to display multiple, independent signals on this kind of a plot. If there are any suggestions or examples of this, we would love to see them. Otherwise, to display multiple signals here, it's probably best to sum the signals together and connect that here.

The sink supports plotting streaming complex data or messages. The message port is named \"in\". The two modes cannot be used simultaneously, and  should be set to 0 when using the message mode. GRC handles this issue by providing the \"Complex Message\" type that removes the streaming port(s).

This sink can plot messages that contain either uniform vectors of complex 32 values (pmt::is_c32vector) or PDUs where the data is a uniform vector of complex 32 values.

Message Ports:

Constructor Specific Documentation:

Build a complex waterfall sink.

Args:
    size : size of the FFT to compute and display. If using the PDU message port to plot samples, the length of each PDU must be a multiple of the FFT size.
    wintype : type of window to apply (see gr::fft::window::win_type)
    fc : center frequency of signal (use for x-axis labels)
    bw : bandwidth of signal (used to set x-axis labels)
    name : title for the plot
    nconnections : number of signals to be connected to the sink. The PDU message port is always available for a connection, and this value must be set to 0 if only the PDU message port is being used.
    parent : a QWidget parent object, if any"

%feature("docstring") gr::qtgui::waterfall_sink_f "A graphical sink to display multiple signals on a waterfall (spectrogram) plot.

This is a QT-based graphical sink the takes set of a floating point streams and plots a waterfall (spectrogram) plot.

Note that unlike the other qtgui sinks, this one does not support multiple input streams. We have yet to figure out a good way to display multiple, independent signals on this kind of a plot. If there are any suggestions or examples of this, we would love to see them. Otherwise, to display multiple signals here, it's probably best to sum the signals together and connect that here.

The sink supports plotting streaming float data or messages. The message port is named \"in\". The two modes cannot be used simultaneously, and  should be set to 0 when using the message mode. GRC handles this issue by providing the \"Float Message\" type that removes the streaming port(s).

This sink can plot messages that contain either uniform vectors of float 32 values (pmt::is_f32vector) or PDUs where the data is a uniform vector of float 32 values.

Message Ports:

Constructor Specific Documentation:

Build a floating point waterfall sink.

Args:
    size : size of the FFT to compute and display. If using the PDU message port to plot samples, the length of each PDU must be a multiple of the FFT size.
    wintype : type of window to apply (see gr::fft::window::win_type)
    fc : center frequency of signal (use for x-axis labels)
    bw : bandwidth of signal (used to set x-axis labels)
    name : title for the plot
    nconnections : number of signals to be connected to the sink. The PDU message port is always available for a connection, and this value must be set to 0 if only the PDU message port is being used.
    parent : a QWidget parent object, if any"







































%feature("docstring") gr::qtgui::waterfall_sink_f::set_plot_pos_half "Pass \"true\" to this function to only show the positive half of the spectrum. By default, this plotter shows the full spectrum (positive and negative halves)."

























%feature("docstring") gr::qtgui::waterfall_sink_f::make "A graphical sink to display multiple signals on a waterfall (spectrogram) plot.

This is a QT-based graphical sink the takes set of a floating point streams and plots a waterfall (spectrogram) plot.

Note that unlike the other qtgui sinks, this one does not support multiple input streams. We have yet to figure out a good way to display multiple, independent signals on this kind of a plot. If there are any suggestions or examples of this, we would love to see them. Otherwise, to display multiple signals here, it's probably best to sum the signals together and connect that here.

The sink supports plotting streaming float data or messages. The message port is named \"in\". The two modes cannot be used simultaneously, and  should be set to 0 when using the message mode. GRC handles this issue by providing the \"Float Message\" type that removes the streaming port(s).

This sink can plot messages that contain either uniform vectors of float 32 values (pmt::is_f32vector) or PDUs where the data is a uniform vector of float 32 values.

Message Ports:

Constructor Specific Documentation:

Build a floating point waterfall sink.

Args:
    size : size of the FFT to compute and display. If using the PDU message port to plot samples, the length of each PDU must be a multiple of the FFT size.
    wintype : type of window to apply (see gr::fft::window::win_type)
    fc : center frequency of signal (use for x-axis labels)
    bw : bandwidth of signal (used to set x-axis labels)
    name : title for the plot
    nconnections : number of signals to be connected to the sink. The PDU message port is always available for a connection, and this value must be set to 0 if only the PDU message port is being used.
    parent : a QWidget parent object, if any"

%feature("docstring") get_qt_style_sheet "From QSS file name, extracts the file contents and returns a QString that contains the QSS information. Designed to be passed to the qApplication. The QSS file is typically retrieved using the [qtgui] qss=<filename> section of the preferences files."



























































%feature("docstring") ConstellationDisplayForm "DisplayForm child for managing constellaton (I&Q) plots."



















%feature("docstring") ConstellationDisplayPlot "QWidget for displaying constellaton (I&Q) plots."





































%feature("docstring") DisplayForm "Base class for setting up and managing QTGUI plot forms."













%feature("docstring") DisplayPlot "QWidget base plot to build QTGUI plotting tools."

















































































































































%feature("docstring") FreqDisplayForm "DisplayForm child for managing frequency (PSD) plots."















































%feature("docstring") FrequencyDisplayPlot "QWidget for displaying frequency domain (PSD) plots."















































































%feature("docstring") HistogramDisplayForm "DisplayForm child for managing histogram domain plots."









%feature("docstring") HistogramDisplayPlot "QWidget for displaying time domain plots."























































































































%feature("docstring") NumberDisplayForm "DisplayForm child for managing number sink plots."

































































%feature("docstring") PlotTimeRaster "A plot item, which displays a time raster.

A time raster displays threedimenional data, where the 3rd dimension (the intensity) is displayed using colors. The colors are calculated from the values using a color map."

























%feature("docstring") PlotWaterfall "A plot item, which displays a waterfall spectrogram.

A waterfall displays threedimenional data, where the 3rd dimension (the intensity) is displayed using colors. The colors are calculated from the values using a color map."



























































































%feature("docstring") SpectrumGUIClass "QWidget class for controlling plotting."



















































































































%feature("docstring") TimeDisplayForm "DisplayForm child for managing time domain plots."





















%feature("docstring") TimeDomainDisplayPlot "QWidget for displaying time domain plots."

















































%feature("docstring") TimeRasterDisplayForm "DisplayForm child for managing time raster plots."



















%feature("docstring") TimeRasterDisplayPlot "QWidget for time raster (time vs. time) plots."













































































































































%feature("docstring") VectorDisplayForm "DisplayForm child for managing vector plots."





















%feature("docstring") VectorDisplayPlot "QWidget for displaying 1D-vector plots."

























































































%feature("docstring") WaterfallDisplayForm "DisplayForm child for managing waterfall (spectrogram) plots."





























%feature("docstring") WaterfallDisplayPlot "QWidget for displaying waterfall (spectrogram) plots."



























































