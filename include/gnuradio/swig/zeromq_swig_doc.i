
/*
 * This file was automatically generated using swig_doc.py.
 *
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") gr::zeromq::pub_msg_sink "Sink the contents of a msg port to a ZMQ PUB socket.

This block acts a message port receiver and writes individual messages to a ZMQ PUB socket. A PUB socket may have subscribers and will pass all incoming messages to each subscriber. Subscribers can be either another gr-zeromq source block or a non-GNU Radio ZMQ socket.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of zeromq::pub_msg_sink.

Args:
    address : ZMQ socket address specifier
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments"

%feature("docstring") gr::zeromq::pub_msg_sink::make "Sink the contents of a msg port to a ZMQ PUB socket.

This block acts a message port receiver and writes individual messages to a ZMQ PUB socket. A PUB socket may have subscribers and will pass all incoming messages to each subscriber. Subscribers can be either another gr-zeromq source block or a non-GNU Radio ZMQ socket.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of zeromq::pub_msg_sink.

Args:
    address : ZMQ socket address specifier
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments"

%feature("docstring") gr::zeromq::pub_sink "Sink the contents of a stream to a ZMQ PUB socket.

This block acts a a streaming sink for a GNU Radio flowgraph and writes its contents to a ZMQ PUB socket. A PUB socket may have subscribers and will pass all incoming stream data to each subscriber. Subscribers can be either another gr-zeromq source block or a non-GNU Radio ZMQ socket.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of zeromq::pub_sink.

Args:
    itemsize : Size of a stream item in bytes.
    vlen : Vector length of the input items. Note that one vector is one item.
    address : ZMQ socket address specifier.
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments.
    pass_tags : Whether sink will serialize and pass tags over the link.
    hwm : High Watermark to configure the socket to (-1 => zmq's default)"

%feature("docstring") gr::zeromq::pub_sink::make "Sink the contents of a stream to a ZMQ PUB socket.

This block acts a a streaming sink for a GNU Radio flowgraph and writes its contents to a ZMQ PUB socket. A PUB socket may have subscribers and will pass all incoming stream data to each subscriber. Subscribers can be either another gr-zeromq source block or a non-GNU Radio ZMQ socket.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of zeromq::pub_sink.

Args:
    itemsize : Size of a stream item in bytes.
    vlen : Vector length of the input items. Note that one vector is one item.
    address : ZMQ socket address specifier.
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments.
    pass_tags : Whether sink will serialize and pass tags over the link.
    hwm : High Watermark to configure the socket to (-1 => zmq's default)"

%feature("docstring") gr::zeromq::pull_msg_source "Receive messages on ZMQ PULL socket and output async messages.

This block will connect to a ZMQ PUSH socket, then convert received messages to outgoing async messages.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of gr::zeromq::pull_msg_source.

Args:
    address : ZMQ socket address specifier
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments"

%feature("docstring") gr::zeromq::pull_msg_source::make "Receive messages on ZMQ PULL socket and output async messages.

This block will connect to a ZMQ PUSH socket, then convert received messages to outgoing async messages.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of gr::zeromq::pull_msg_source.

Args:
    address : ZMQ socket address specifier
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments"

%feature("docstring") gr::zeromq::pull_source "Receive messages on ZMQ PULL socket and source stream.

This block will connect to a ZMQ PUSH socket, then produce all incoming messages as streaming output.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of gr::zeromq::pull_source.

Args:
    itemsize : Size of a stream item in bytes.
    vlen : Vector length of the input items. Note that one vector is one item.
    address : ZMQ socket address specifier.
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments.
    pass_tags : Whether source will look for and deserialize tags.
    hwm : High Watermark to configure the socket to (-1 => zmq's default)"

%feature("docstring") gr::zeromq::pull_source::make "Receive messages on ZMQ PULL socket and source stream.

This block will connect to a ZMQ PUSH socket, then produce all incoming messages as streaming output.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of gr::zeromq::pull_source.

Args:
    itemsize : Size of a stream item in bytes.
    vlen : Vector length of the input items. Note that one vector is one item.
    address : ZMQ socket address specifier.
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments.
    pass_tags : Whether source will look for and deserialize tags.
    hwm : High Watermark to configure the socket to (-1 => zmq's default)"

%feature("docstring") gr::zeromq::push_msg_sink "Sink the contents of a msg port to a ZMQ PUSH socket.

This block acts a message port receiver and writes individual messages to a ZMQ PUSH socket. The corresponding receiving ZMQ PULL socket can be either another gr-zeromq source block or a non-GNU Radio ZMQ socket.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of gr::zeromq::push_msg_sink.

Args:
    address : ZMQ socket address specifier
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments"

%feature("docstring") gr::zeromq::push_msg_sink::make "Sink the contents of a msg port to a ZMQ PUSH socket.

This block acts a message port receiver and writes individual messages to a ZMQ PUSH socket. The corresponding receiving ZMQ PULL socket can be either another gr-zeromq source block or a non-GNU Radio ZMQ socket.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of gr::zeromq::push_msg_sink.

Args:
    address : ZMQ socket address specifier
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments"

%feature("docstring") gr::zeromq::push_sink "Sink the contents of a stream to a ZMQ PUSH socket.

This block acts a a streaming sink for a GNU Radio flowgraph and writes its contents to a ZMQ PUSH socket. A PUSH socket will round-robin send its messages to each connected ZMQ PULL socket, either another gr-zeromq source block or a regular, non-GNU Radio ZMQ socket.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of gr::zeromq::push_sink.

Args:
    itemsize : Size of a stream item in bytes.
    vlen : Vector length of the input items. Note that one vector is one item.
    address : ZMQ socket address specifier.
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments.
    pass_tags : Whether sink will serialize and pass tags over the link.
    hwm : High Watermark to configure the socket to (-1 => zmq's default)"

%feature("docstring") gr::zeromq::push_sink::make "Sink the contents of a stream to a ZMQ PUSH socket.

This block acts a a streaming sink for a GNU Radio flowgraph and writes its contents to a ZMQ PUSH socket. A PUSH socket will round-robin send its messages to each connected ZMQ PULL socket, either another gr-zeromq source block or a regular, non-GNU Radio ZMQ socket.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of gr::zeromq::push_sink.

Args:
    itemsize : Size of a stream item in bytes.
    vlen : Vector length of the input items. Note that one vector is one item.
    address : ZMQ socket address specifier.
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments.
    pass_tags : Whether sink will serialize and pass tags over the link.
    hwm : High Watermark to configure the socket to (-1 => zmq's default)"

%feature("docstring") gr::zeromq::rep_msg_sink "Sink the contents of a msg port to a ZMQ REP socket.

This block acts a message port receiver and writes individual messages to a ZMQ REP socket. The corresponding receiving ZMQ REQ socket can be either another gr-zeromq source block or a non-GNU Radio ZMQ socket.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of zeromq::rep_msg_sink.

Args:
    address : ZMQ socket address specifier
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments"

%feature("docstring") gr::zeromq::rep_msg_sink::make "Sink the contents of a msg port to a ZMQ REP socket.

This block acts a message port receiver and writes individual messages to a ZMQ REP socket. The corresponding receiving ZMQ REQ socket can be either another gr-zeromq source block or a non-GNU Radio ZMQ socket.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of zeromq::rep_msg_sink.

Args:
    address : ZMQ socket address specifier
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments"

%feature("docstring") gr::zeromq::rep_sink "Sink the contents of a stream to a ZMQ REP socket.

This block acts a a streaming sink for a GNU Radio flowgraph and writes its contents to a ZMQ REP socket. A REP socket will only send its contents to an attached REQ socket when it requests items.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of zeromq::rep_sink.

Args:
    itemsize : Size of a stream item in bytes.
    vlen : Vector length of the input items. Note that one vector is one item.
    address : ZMQ socket address specifier.
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments.
    pass_tags : Whether sink will serialize and pass tags over the link.
    hwm : High Watermark to configure the socket to (-1 => zmq's default)"

%feature("docstring") gr::zeromq::rep_sink::make "Sink the contents of a stream to a ZMQ REP socket.

This block acts a a streaming sink for a GNU Radio flowgraph and writes its contents to a ZMQ REP socket. A REP socket will only send its contents to an attached REQ socket when it requests items.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of zeromq::rep_sink.

Args:
    itemsize : Size of a stream item in bytes.
    vlen : Vector length of the input items. Note that one vector is one item.
    address : ZMQ socket address specifier.
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments.
    pass_tags : Whether sink will serialize and pass tags over the link.
    hwm : High Watermark to configure the socket to (-1 => zmq's default)"

%feature("docstring") gr::zeromq::req_msg_source "Receive messages on ZMQ REQ socket output async messages.

This block will connect to a ZMQ REP socket, then resend all incoming messages as asynchronous messages.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of zeromq::req_msg_source.

Args:
    address : ZMQ socket address specifier
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments"

%feature("docstring") gr::zeromq::req_msg_source::make "Receive messages on ZMQ REQ socket output async messages.

This block will connect to a ZMQ REP socket, then resend all incoming messages as asynchronous messages.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of zeromq::req_msg_source.

Args:
    address : ZMQ socket address specifier
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments"

%feature("docstring") gr::zeromq::req_source "Receive messages on ZMQ REQ socket and source stream.

This block will connect to a ZMQ REP socket, then produce all incoming messages as streaming output.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of zeromq::req_source.

Args:
    itemsize : Size of a stream item in bytes.
    vlen : Vector length of the input items. Note that one vector is one item.
    address : ZMQ socket address specifier.
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments.
    pass_tags : Whether source will look for and deserialize tags.
    hwm : High Watermark to configure the socket to (-1 => zmq's default)"

%feature("docstring") gr::zeromq::req_source::make "Receive messages on ZMQ REQ socket and source stream.

This block will connect to a ZMQ REP socket, then produce all incoming messages as streaming output.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of zeromq::req_source.

Args:
    itemsize : Size of a stream item in bytes.
    vlen : Vector length of the input items. Note that one vector is one item.
    address : ZMQ socket address specifier.
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments.
    pass_tags : Whether source will look for and deserialize tags.
    hwm : High Watermark to configure the socket to (-1 => zmq's default)"

%feature("docstring") gr::zeromq::sub_msg_source "Receive messages on ZMQ SUB socket and output async messages.

This block will connect to a ZMQ PUB socket, then convert them to outgoing async messages

Constructor Specific Documentation:

Return a shared_ptr to a new instance of gr::zeromq::sub_msg_source.

Args:
    address : ZMQ socket address specifier
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments"

%feature("docstring") gr::zeromq::sub_msg_source::make "Receive messages on ZMQ SUB socket and output async messages.

This block will connect to a ZMQ PUB socket, then convert them to outgoing async messages

Constructor Specific Documentation:

Return a shared_ptr to a new instance of gr::zeromq::sub_msg_source.

Args:
    address : ZMQ socket address specifier
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments"

%feature("docstring") gr::zeromq::sub_source "Receive messages on ZMQ SUB socket and source stream.

This block will connect to a ZMQ PUB socket, then produce all incoming messages as streaming output.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of gr::zeromq::sub_source.

Args:
    itemsize : Size of a stream item in bytes.
    vlen : Vector length of the input items. Note that one vector is one item.
    address : ZMQ socket address specifier.
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments.
    pass_tags : Whether source will look for and deserialize tags.
    hwm : High Watermark to configure the socket to (-1 => zmq's default)"

%feature("docstring") gr::zeromq::sub_source::make "Receive messages on ZMQ SUB socket and source stream.

This block will connect to a ZMQ PUB socket, then produce all incoming messages as streaming output.

Constructor Specific Documentation:

Return a shared_ptr to a new instance of gr::zeromq::sub_source.

Args:
    itemsize : Size of a stream item in bytes.
    vlen : Vector length of the input items. Note that one vector is one item.
    address : ZMQ socket address specifier.
    timeout : Receive timeout in milliseconds, default is 100ms, 1us increments.
    pass_tags : Whether source will look for and deserialize tags.
    hwm : High Watermark to configure the socket to (-1 => zmq's default)"