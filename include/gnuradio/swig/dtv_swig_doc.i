
/*
 * This file was automatically generated using swig_doc.py.
 *
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") gr::dtv::atsc_deinterleaver "ATSC deinterleave RS encoded ATSC data ( atsc_mpeg_packet_rs_encoded > atsc_mpeg_packet_rs_encoded)

input: atsc_mpeg_packet_rs_encoded; output: atsc_mpeg_packet_rs_encoded.

Constructor Specific Documentation:

Make a new instance of gr::dtv::atsc_deinterleaver."

%feature("docstring") gr::dtv::atsc_deinterleaver::make "ATSC deinterleave RS encoded ATSC data ( atsc_mpeg_packet_rs_encoded > atsc_mpeg_packet_rs_encoded)

input: atsc_mpeg_packet_rs_encoded; output: atsc_mpeg_packet_rs_encoded.

Constructor Specific Documentation:

Make a new instance of gr::dtv::atsc_deinterleaver."

%feature("docstring") gr::dtv::atsc_depad "ATSC depad mpeg ts packets from 256 byte atsc_mpeg_packet to 188 byte char

input: atsc_mpeg_packet; output: unsigned char.

Constructor Specific Documentation:

Make a new instance of gr::dtv::atsc_depad."

%feature("docstring") gr::dtv::atsc_depad::make "ATSC depad mpeg ts packets from 256 byte atsc_mpeg_packet to 188 byte char

input: atsc_mpeg_packet; output: unsigned char.

Constructor Specific Documentation:

Make a new instance of gr::dtv::atsc_depad."

%feature("docstring") gr::dtv::atsc_derandomizer "ATSC \"dewhiten\" incoming mpeg transport stream packets

input: atsc_mpeg_packet_no_sync; output: atsc_mpeg_packet;.

Constructor Specific Documentation:

Make a new instance of gr::dtv::atsc_derandomizer."

%feature("docstring") gr::dtv::atsc_derandomizer::make "ATSC \"dewhiten\" incoming mpeg transport stream packets

input: atsc_mpeg_packet_no_sync; output: atsc_mpeg_packet;.

Constructor Specific Documentation:

Make a new instance of gr::dtv::atsc_derandomizer."

%feature("docstring") gr::dtv::atsc_equalizer "ATSC Receiver Equalizer.

Constructor Specific Documentation:

Make a new instance of gr::dtv::atsc_equalizer."





%feature("docstring") gr::dtv::atsc_equalizer::make "ATSC Receiver Equalizer.

Constructor Specific Documentation:

Make a new instance of gr::dtv::atsc_equalizer."

%feature("docstring") gr::dtv::atsc_field_sync_mux "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of dtv::atsc_field_sync_mux."

%feature("docstring") gr::dtv::atsc_field_sync_mux::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of dtv::atsc_field_sync_mux."

%feature("docstring") gr::dtv::atsc_fpll "ATSC Receiver FPLL.

This block is takes in a complex I/Q baseband stream from the receive filter and outputs the 8-level symbol stream.

It does this by first locally generating a pilot tone and complex mixing with the input signal. This results in the pilot tone shifting to DC and places the signal in the upper sideband.

As no information is encoded in the phase of the waveform, the Q channel is then discarded, producing a real signal with the lower sideband restored.

The 8-level symbol stream still has a DC offset, and still requires symbol timing recovery.

Constructor Specific Documentation:

Make a new instance of gr::dtv::atsc_fpll.

param rate Sample rate of incoming stream

Args:
    rate : "

%feature("docstring") gr::dtv::atsc_fpll::make "ATSC Receiver FPLL.

This block is takes in a complex I/Q baseband stream from the receive filter and outputs the 8-level symbol stream.

It does this by first locally generating a pilot tone and complex mixing with the input signal. This results in the pilot tone shifting to DC and places the signal in the upper sideband.

As no information is encoded in the phase of the waveform, the Q channel is then discarded, producing a real signal with the lower sideband restored.

The 8-level symbol stream still has a DC offset, and still requires symbol timing recovery.

Constructor Specific Documentation:

Make a new instance of gr::dtv::atsc_fpll.

param rate Sample rate of incoming stream

Args:
    rate : "

%feature("docstring") gr::dtv::atsc_fs_checker "ATSC Receiver FS_CHECKER.

Constructor Specific Documentation:

Make a new instance of gr::dtv::atsc_fs_checker."

%feature("docstring") gr::dtv::atsc_fs_checker::make "ATSC Receiver FS_CHECKER.

Constructor Specific Documentation:

Make a new instance of gr::dtv::atsc_fs_checker."

%feature("docstring") gr::dtv::atsc_interleaver "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of dtv::atsc_interleaver."

%feature("docstring") gr::dtv::atsc_interleaver::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of dtv::atsc_interleaver."

%feature("docstring") gr::dtv::atsc_pad "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of dtv::atsc_pad."

%feature("docstring") gr::dtv::atsc_pad::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of dtv::atsc_pad."

%feature("docstring") gr::dtv::atsc_randomizer "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of dtv::atsc_randomizer."

%feature("docstring") gr::dtv::atsc_randomizer::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of dtv::atsc_randomizer."

%feature("docstring") gr::dtv::atsc_rs_decoder "ATSC Receiver Reed-Solomon Decoder.

Constructor Specific Documentation:

Make a new instance of gr::dtv::atsc_rs_decoder."

%feature("docstring") gr::dtv::atsc_rs_decoder::num_errors_corrected "Returns the number of errors corrected by the decoder."

%feature("docstring") gr::dtv::atsc_rs_decoder::num_bad_packets "Returns the number of bad packets rejected by the decoder."

%feature("docstring") gr::dtv::atsc_rs_decoder::num_packets "Returns the total number of packets seen by the decoder."

%feature("docstring") gr::dtv::atsc_rs_decoder::make "ATSC Receiver Reed-Solomon Decoder.

Constructor Specific Documentation:

Make a new instance of gr::dtv::atsc_rs_decoder."

%feature("docstring") gr::dtv::atsc_rs_encoder "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of dtv::atsc_rs_encoder."

%feature("docstring") gr::dtv::atsc_rs_encoder::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of dtv::atsc_rs_encoder."

%feature("docstring") gr::dtv::atsc_sync "ATSC Receiver SYNC.

Constructor Specific Documentation:

Make a new instance of gr::dtv::atsc_sync.

param rate Sample rate of incoming stream

Args:
    rate : "

%feature("docstring") gr::dtv::atsc_sync::make "ATSC Receiver SYNC.

Constructor Specific Documentation:

Make a new instance of gr::dtv::atsc_sync.

param rate Sample rate of incoming stream

Args:
    rate : "

%feature("docstring") gr::dtv::atsc_trellis_encoder "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of dtv::atsc_trellis_encoder."

%feature("docstring") gr::dtv::atsc_trellis_encoder::make "<+description of block+>

Constructor Specific Documentation:

Return a shared_ptr to a new instance of dtv::atsc_trellis_encoder."

%feature("docstring") gr::dtv::atsc_viterbi_decoder "ATSC Viterbi Decoder.

Constructor Specific Documentation:

Make a new instance of gr::dtv::atsc_viterbi_decoder."

%feature("docstring") gr::dtv::atsc_viterbi_decoder::decoder_metrics "For each decoder, returns the current best state of the decoding metrics."

%feature("docstring") gr::dtv::atsc_viterbi_decoder::make "ATSC Viterbi Decoder.

Constructor Specific Documentation:

Make a new instance of gr::dtv::atsc_viterbi_decoder."

%feature("docstring") gr::dtv::catv_frame_sync_enc_bb "Frame Sync Encoder. Adds a 42-bit (64QAM) or 40-bit (256QAM) frame sync pattern with control word.

Input: Scrambled FEC Frame packets of 60 * 128 (64QAM) or 88 * 128 (256QAM) 7-bit symbols.
Output: Scrambled FEC Frame packets of 60 * 128 (64QAM) or 88 * 128 (256QAM) 7-bit symbols with 42-bit (64QAM) or 40-bit (256QAM) FSYNC word.

Constructor Specific Documentation:

Create an ITU-T J.83B Frame Sync Encoder.

Args:
    constellation : 64QAM or 256QAM constellation.
    ctrlword : convolutional interleaver control word."

%feature("docstring") gr::dtv::catv_frame_sync_enc_bb::make "Frame Sync Encoder. Adds a 42-bit (64QAM) or 40-bit (256QAM) frame sync pattern with control word.

Input: Scrambled FEC Frame packets of 60 * 128 (64QAM) or 88 * 128 (256QAM) 7-bit symbols.
Output: Scrambled FEC Frame packets of 60 * 128 (64QAM) or 88 * 128 (256QAM) 7-bit symbols with 42-bit (64QAM) or 40-bit (256QAM) FSYNC word.

Constructor Specific Documentation:

Create an ITU-T J.83B Frame Sync Encoder.

Args:
    constellation : 64QAM or 256QAM constellation.
    ctrlword : convolutional interleaver control word."

%feature("docstring") gr::dtv::catv_randomizer_bb "Randomizer, x^3 + x + alpha^3, 7-bit symbols.

Input: Interleaved MPEG-2 + RS parity bitstream packets of 128 7-bit symbols.
Output: Scrambled FEC Frame packets of 60 * 128 (64QAM) or 88 * 128 (256QAM) 7-bit symbols.

Constructor Specific Documentation:

Create an ITU-T J.83B randomizer.

Args:
    constellation : 64QAM or 256QAM constellation."

%feature("docstring") gr::dtv::catv_randomizer_bb::make "Randomizer, x^3 + x + alpha^3, 7-bit symbols.

Input: Interleaved MPEG-2 + RS parity bitstream packets of 128 7-bit symbols.
Output: Scrambled FEC Frame packets of 60 * 128 (64QAM) or 88 * 128 (256QAM) 7-bit symbols.

Constructor Specific Documentation:

Create an ITU-T J.83B randomizer.

Args:
    constellation : 64QAM or 256QAM constellation."

%feature("docstring") gr::dtv::catv_reed_solomon_enc_bb "Reed Solomon Encoder, t=3, (128,122), 7-bit symbols.

Input: MPEG-2 bitstream packets of 122 7-bit symbols.
Output: MPEG-2 + RS parity bitstream packets of 128 7-bit symbols.

Constructor Specific Documentation:

Create an ITU-T J.83B Reed Solomon encoder."

%feature("docstring") gr::dtv::catv_reed_solomon_enc_bb::make "Reed Solomon Encoder, t=3, (128,122), 7-bit symbols.

Input: MPEG-2 bitstream packets of 122 7-bit symbols.
Output: MPEG-2 + RS parity bitstream packets of 128 7-bit symbols.

Constructor Specific Documentation:

Create an ITU-T J.83B Reed Solomon encoder."

%feature("docstring") gr::dtv::catv_transport_framing_enc_bb "Transport Framing Encoder. Adds a parity checksum to MPEG-2 packets.

Input: MPEG-2 Transport Stream.
Output: MPEG-2 Transport Stream with parity checksum byte.

Constructor Specific Documentation:

Create an ITU-T J.83B Transport Framing Encoder."

%feature("docstring") gr::dtv::catv_transport_framing_enc_bb::make "Transport Framing Encoder. Adds a parity checksum to MPEG-2 packets.

Input: MPEG-2 Transport Stream.
Output: MPEG-2 Transport Stream with parity checksum byte.

Constructor Specific Documentation:

Create an ITU-T J.83B Transport Framing Encoder."

%feature("docstring") gr::dtv::catv_trellis_enc_bb "Trellis Encoder. 14/15 (64QAM) or 19/20 (256QAM) code rate.

Input: Scrambled FEC Frame packets of 60 * 128 (64QAM) or 88 * 128 (256QAM) 7-bit symbols with 42-bit (64QAM) or 40-bit (256QAM) FSYNC word.
Output: Four 7-bit symbols (28 bits) Trellis encoded to 30 bits (64QAM, 14/15 code rate) or 38 data bits Trellis encoded to 40 bits (256QAM, 19/20 code rate).

Constructor Specific Documentation:

Create an ITU-T J.83B Trellis Encoder.

Args:
    constellation : 64QAM or 256QAM constellation."

%feature("docstring") gr::dtv::catv_trellis_enc_bb::make "Trellis Encoder. 14/15 (64QAM) or 19/20 (256QAM) code rate.

Input: Scrambled FEC Frame packets of 60 * 128 (64QAM) or 88 * 128 (256QAM) 7-bit symbols with 42-bit (64QAM) or 40-bit (256QAM) FSYNC word.
Output: Four 7-bit symbols (28 bits) Trellis encoded to 30 bits (64QAM, 14/15 code rate) or 38 data bits Trellis encoded to 40 bits (256QAM, 19/20 code rate).

Constructor Specific Documentation:

Create an ITU-T J.83B Trellis Encoder.

Args:
    constellation : 64QAM or 256QAM constellation."

%feature("docstring") gr::dtv::dvb_bbheader_bb "Formats MPEG-2 Transport Stream packets into FEC baseband frames and adds a 10-byte header.

Input: 188-byte MPEG-2 Transport Stream packets. 
Output: Variable length FEC baseband frames (BBFRAME). The output frame length is based on the FEC rate.

Constructor Specific Documentation:

Create a baseband header formatter.

Args:
    standard : DVB standard (DVB-S2 or DVB-T2).
    framesize : FEC frame size (normal, medium or short).
    rate : FEC code rate.
    rolloff : DVB-S2 root-raised-cosine filter roll-off.
    mode : DVB-T2 input processing mode.
    inband : DVB-T2 Type B in-band signalling.
    fecblocks : DVB-T2 number of FEC block for in-band signalling.
    tsrate : DVB-T2 Transport Stream rate for in-band signalling."

%feature("docstring") gr::dtv::dvb_bbheader_bb::make "Formats MPEG-2 Transport Stream packets into FEC baseband frames and adds a 10-byte header.

Input: 188-byte MPEG-2 Transport Stream packets. 
Output: Variable length FEC baseband frames (BBFRAME). The output frame length is based on the FEC rate.

Constructor Specific Documentation:

Create a baseband header formatter.

Args:
    standard : DVB standard (DVB-S2 or DVB-T2).
    framesize : FEC frame size (normal, medium or short).
    rate : FEC code rate.
    rolloff : DVB-S2 root-raised-cosine filter roll-off.
    mode : DVB-T2 input processing mode.
    inband : DVB-T2 Type B in-band signalling.
    fecblocks : DVB-T2 number of FEC block for in-band signalling.
    tsrate : DVB-T2 Transport Stream rate for in-band signalling."

%feature("docstring") gr::dtv::dvb_bbscrambler_bb "Scrambles FEC baseband frames with a PRBS encoder.

Input: Variable length FEC baseband frames (BBFRAME). 
Output: Scrambled variable length FEC baseband frames (BBFRAME).

Constructor Specific Documentation:

Create a baseband frame scrambler.

Args:
    standard : DVB standard (DVB-S2 or DVB-T2).
    framesize : FEC frame size (normal, medium or short).
    rate : FEC code rate."

%feature("docstring") gr::dtv::dvb_bbscrambler_bb::make "Scrambles FEC baseband frames with a PRBS encoder.

Input: Variable length FEC baseband frames (BBFRAME). 
Output: Scrambled variable length FEC baseband frames (BBFRAME).

Constructor Specific Documentation:

Create a baseband frame scrambler.

Args:
    standard : DVB standard (DVB-S2 or DVB-T2).
    framesize : FEC frame size (normal, medium or short).
    rate : FEC code rate."

%feature("docstring") gr::dtv::dvb_bch_bb "Encodes a BCH ((Bose, Chaudhuri, Hocquenghem) FEC.

Input: Variable length FEC baseband frames (BBFRAME). 
Output: Variable length FEC baseband frames with appended BCH (BCHFEC).

Constructor Specific Documentation:

Create a baseband frame BCH encoder.

Args:
    standard : DVB standard (DVB-S2 or DVB-T2).
    framesize : FEC frame size (normal, medium or short).
    rate : FEC code rate."

%feature("docstring") gr::dtv::dvb_bch_bb::make "Encodes a BCH ((Bose, Chaudhuri, Hocquenghem) FEC.

Input: Variable length FEC baseband frames (BBFRAME). 
Output: Variable length FEC baseband frames with appended BCH (BCHFEC).

Constructor Specific Documentation:

Create a baseband frame BCH encoder.

Args:
    standard : DVB standard (DVB-S2 or DVB-T2).
    framesize : FEC frame size (normal, medium or short).
    rate : FEC code rate."

%feature("docstring") gr::dtv::dvb_ldpc_bb "Encodes a LDPC (Low-Density Parity-Check) FEC.

Input: Variable length FEC baseband frames with appended BCH (BCHFEC). 
Output: Normal, medium or short FEC baseband frames with appended LPDC (LDPCFEC).

Constructor Specific Documentation:

Create a baseband frame LDPC encoder.

Args:
    standard : DVB standard (DVB-S2 or DVB-T2).
    framesize : FEC frame size (normal, medium or short).
    rate : FEC code rate.
    constellation : DVB-S2 constellation."

%feature("docstring") gr::dtv::dvb_ldpc_bb::make "Encodes a LDPC (Low-Density Parity-Check) FEC.

Input: Variable length FEC baseband frames with appended BCH (BCHFEC). 
Output: Normal, medium or short FEC baseband frames with appended LPDC (LDPCFEC).

Constructor Specific Documentation:

Create a baseband frame LDPC encoder.

Args:
    standard : DVB standard (DVB-S2 or DVB-T2).
    framesize : FEC frame size (normal, medium or short).
    rate : FEC code rate.
    constellation : DVB-S2 constellation."

%feature("docstring") gr::dtv::dvbs2_interleaver_bb "Bit interleaves DVB-S2 FEC baseband frames.

Input: Normal or short FEC baseband frames with appended LPDC (LDPCFEC). 
Output: Bit interleaved baseband frames.

Constructor Specific Documentation:

Create a DVB-S2 bit interleaver.

Args:
    framesize : FEC frame size (normal or short).
    rate : FEC code rate.
    constellation : DVB-S2 constellation."

%feature("docstring") gr::dtv::dvbs2_interleaver_bb::make "Bit interleaves DVB-S2 FEC baseband frames.

Input: Normal or short FEC baseband frames with appended LPDC (LDPCFEC). 
Output: Bit interleaved baseband frames.

Constructor Specific Documentation:

Create a DVB-S2 bit interleaver.

Args:
    framesize : FEC frame size (normal or short).
    rate : FEC code rate.
    constellation : DVB-S2 constellation."

%feature("docstring") gr::dtv::dvbs2_modulator_bc "Modulates DVB-S2 frames.

Input: Bit interleaved baseband frames. 
Output: QPSK, 8PSK, 16APSK or 32APSK modulated complex IQ values (XFECFRAME).

Constructor Specific Documentation:

Create a DVB-S2 constellation modulator.

Args:
    framesize : FEC frame size (normal or short).
    rate : FEC code rate.
    constellation : DVB-S2 constellation.
    interpolation : 2X zero stuffing interpolation (on/off)."

%feature("docstring") gr::dtv::dvbs2_modulator_bc::make "Modulates DVB-S2 frames.

Input: Bit interleaved baseband frames. 
Output: QPSK, 8PSK, 16APSK or 32APSK modulated complex IQ values (XFECFRAME).

Constructor Specific Documentation:

Create a DVB-S2 constellation modulator.

Args:
    framesize : FEC frame size (normal or short).
    rate : FEC code rate.
    constellation : DVB-S2 constellation.
    interpolation : 2X zero stuffing interpolation (on/off)."

%feature("docstring") gr::dtv::dvbs2_physical_cc "Signals DVB-S2 physical layer frames.

Input: QPSK, 8PSK, 16APSK or 32APSK modulated complex IQ values (XFECFRAME). 
Output: DVB-S2 PLFRAME.

Constructor Specific Documentation:

Create a DVB-S2 physical layer framer.

Args:
    framesize : FEC frame size (normal or short).
    rate : FEC code rate.
    constellation : DVB-S2 constellation.
    pilots : pilot symbols (on/off).
    goldcode : physical layer scrambler Gold code (0 to 262141 inclusive)."

%feature("docstring") gr::dtv::dvbs2_physical_cc::make "Signals DVB-S2 physical layer frames.

Input: QPSK, 8PSK, 16APSK or 32APSK modulated complex IQ values (XFECFRAME). 
Output: DVB-S2 PLFRAME.

Constructor Specific Documentation:

Create a DVB-S2 physical layer framer.

Args:
    framesize : FEC frame size (normal or short).
    rate : FEC code rate.
    constellation : DVB-S2 constellation.
    pilots : pilot symbols (on/off).
    goldcode : physical layer scrambler Gold code (0 to 262141 inclusive)."

%feature("docstring") gr::dtv::dvbt2_cellinterleaver_cc "Cell and time interleaves QPSK/QAM modulated cells.

Input: QPSK, 16QAM, 64QAM or 256QAM modulated cells. 
Output: Cell and time interleaved QPSK, 16QAM, 64QAM or 256QAM modulated cells.

Constructor Specific Documentation:

Create a DVB-T2 cell and time interleaver.

Args:
    framesize : FEC frame size (normal or short).
    constellation : DVB-T2 constellation.
    fecblocks : number of FEC frames in a T2 frame.
    tiblocks : number of time interleaving blocks in a T2 frame."

%feature("docstring") gr::dtv::dvbt2_cellinterleaver_cc::make "Cell and time interleaves QPSK/QAM modulated cells.

Input: QPSK, 16QAM, 64QAM or 256QAM modulated cells. 
Output: Cell and time interleaved QPSK, 16QAM, 64QAM or 256QAM modulated cells.

Constructor Specific Documentation:

Create a DVB-T2 cell and time interleaver.

Args:
    framesize : FEC frame size (normal or short).
    constellation : DVB-T2 constellation.
    fecblocks : number of FEC frames in a T2 frame.
    tiblocks : number of time interleaving blocks in a T2 frame."

%feature("docstring") gr::dtv::dvbt2_framemapper_cc "Maps T2 frames.

Input: Cell and time interleaved QPSK, 16QAM, 64QAM or 256QAM modulated cells. 
Output: T2 frame.

Constructor Specific Documentation:

Create a DVB-T2 frame mapper.

Args:
    framesize : FEC frame size (normal or short).
    rate : FEC code rate.
    constellation : DVB-T2 constellation.
    rotation : DVB-T2 constellation rotation (on or off).
    fecblocks : number of FEC frames in a T2 frame.
    tiblocks : number of time interleaving blocks in a T2 frame.
    carriermode : number of carriers (normal or extended).
    fftsize : OFDM IFFT size.
    guardinterval : OFDM ISI guard interval.
    l1constellation : L1 constellation.
    pilotpattern : DVB-T2 pilot pattern (PP1 - PP8).
    t2frames : number of T2 frames in a super-frame.
    numdatasyms : number of OFDM symbols in a T2 frame.
    paprmode : PAPR reduction mode.
    version : DVB-T2 specification version.
    preamble : P1 symbol preamble format.
    inputmode : Baseband Header mode.
    reservedbiasbits : set all L1 bias bits to 1 (on or off).
    l1scrambled : scramble L1 post signalling (on or off).
    inband : In-band type B signalling (on or off)."

%feature("docstring") gr::dtv::dvbt2_framemapper_cc::make "Maps T2 frames.

Input: Cell and time interleaved QPSK, 16QAM, 64QAM or 256QAM modulated cells. 
Output: T2 frame.

Constructor Specific Documentation:

Create a DVB-T2 frame mapper.

Args:
    framesize : FEC frame size (normal or short).
    rate : FEC code rate.
    constellation : DVB-T2 constellation.
    rotation : DVB-T2 constellation rotation (on or off).
    fecblocks : number of FEC frames in a T2 frame.
    tiblocks : number of time interleaving blocks in a T2 frame.
    carriermode : number of carriers (normal or extended).
    fftsize : OFDM IFFT size.
    guardinterval : OFDM ISI guard interval.
    l1constellation : L1 constellation.
    pilotpattern : DVB-T2 pilot pattern (PP1 - PP8).
    t2frames : number of T2 frames in a super-frame.
    numdatasyms : number of OFDM symbols in a T2 frame.
    paprmode : PAPR reduction mode.
    version : DVB-T2 specification version.
    preamble : P1 symbol preamble format.
    inputmode : Baseband Header mode.
    reservedbiasbits : set all L1 bias bits to 1 (on or off).
    l1scrambled : scramble L1 post signalling (on or off).
    inband : In-band type B signalling (on or off)."

%feature("docstring") gr::dtv::dvbt2_freqinterleaver_cc "Frequency interleaves a T2 frame.

Input: T2 frame. 
Output: Frequency interleaved T2 frame.

Constructor Specific Documentation:

Create a DVB-T2 frequency interleaver.

Args:
    carriermode : number of carriers (normal or extended).
    fftsize : OFDM IFFT size.
    pilotpattern : DVB-T2 pilot pattern (PP1 - PP8).
    guardinterval : OFDM ISI guard interval.
    numdatasyms : number of OFDM symbols in a T2 frame.
    paprmode : PAPR reduction mode.
    version : DVB-T2 specification version.
    preamble : P1 symbol preamble format."

%feature("docstring") gr::dtv::dvbt2_freqinterleaver_cc::make "Frequency interleaves a T2 frame.

Input: T2 frame. 
Output: Frequency interleaved T2 frame.

Constructor Specific Documentation:

Create a DVB-T2 frequency interleaver.

Args:
    carriermode : number of carriers (normal or extended).
    fftsize : OFDM IFFT size.
    pilotpattern : DVB-T2 pilot pattern (PP1 - PP8).
    guardinterval : OFDM ISI guard interval.
    numdatasyms : number of OFDM symbols in a T2 frame.
    paprmode : PAPR reduction mode.
    version : DVB-T2 specification version.
    preamble : P1 symbol preamble format."

%feature("docstring") gr::dtv::dvbt2_interleaver_bb "Bit interleaves DVB-T2 FEC baseband frames.

Input: Normal or short FEC baseband frames with appended LPDC (LDPCFEC). 
Output: Bit interleaved (with column twist and bit to cell word de-multiplexed) cells.

Constructor Specific Documentation:

Create a DVB-T2 bit interleaver.

Args:
    framesize : FEC frame size (normal or short).
    rate : FEC code rate.
    constellation : DVB-T2 constellation."

%feature("docstring") gr::dtv::dvbt2_interleaver_bb::make "Bit interleaves DVB-T2 FEC baseband frames.

Input: Normal or short FEC baseband frames with appended LPDC (LDPCFEC). 
Output: Bit interleaved (with column twist and bit to cell word de-multiplexed) cells.

Constructor Specific Documentation:

Create a DVB-T2 bit interleaver.

Args:
    framesize : FEC frame size (normal or short).
    rate : FEC code rate.
    constellation : DVB-T2 constellation."

%feature("docstring") gr::dtv::dvbt2_miso_cc "Splits the stream for MISO (Multiple Input Single Output).

Input: Frequency interleaved T2 frame. 
Output1: Frequency interleaved T2 frame (copy of input). 
Output2: Frequency interleaved T2 frame with modified Alamouti processing.

Constructor Specific Documentation:

Create a MISO processor.

Args:
    carriermode : number of carriers (normal or extended).
    fftsize : OFDM IFFT size.
    pilotpattern : DVB-T2 pilot pattern (PP1 - PP8).
    guardinterval : OFDM ISI guard interval.
    numdatasyms : number of OFDM symbols in a T2 frame.
    paprmode : PAPR reduction mode."

%feature("docstring") gr::dtv::dvbt2_miso_cc::make "Splits the stream for MISO (Multiple Input Single Output).

Input: Frequency interleaved T2 frame. 
Output1: Frequency interleaved T2 frame (copy of input). 
Output2: Frequency interleaved T2 frame with modified Alamouti processing.

Constructor Specific Documentation:

Create a MISO processor.

Args:
    carriermode : number of carriers (normal or extended).
    fftsize : OFDM IFFT size.
    pilotpattern : DVB-T2 pilot pattern (PP1 - PP8).
    guardinterval : OFDM ISI guard interval.
    numdatasyms : number of OFDM symbols in a T2 frame.
    paprmode : PAPR reduction mode."

%feature("docstring") gr::dtv::dvbt2_modulator_bc "Modulates DVB-T2 cells.

Input: Bit interleaved (with column twist and bit to cell word de-multiplexing) cells. 
Output: QPSK, 16QAM, 64QAM or 256QAM modulated complex IQ values (cells).

Constructor Specific Documentation:

Create a DVB-T2 constellation modulator.

Args:
    framesize : FEC frame size (normal or short).
    constellation : DVB-T2 constellation.
    rotation : DVB-T2 constellation rotation (on or off)."

%feature("docstring") gr::dtv::dvbt2_modulator_bc::make "Modulates DVB-T2 cells.

Input: Bit interleaved (with column twist and bit to cell word de-multiplexing) cells. 
Output: QPSK, 16QAM, 64QAM or 256QAM modulated complex IQ values (cells).

Constructor Specific Documentation:

Create a DVB-T2 constellation modulator.

Args:
    framesize : FEC frame size (normal or short).
    constellation : DVB-T2 constellation.
    rotation : DVB-T2 constellation rotation (on or off)."

%feature("docstring") gr::dtv::dvbt2_p1insertion_cc "Inserts a P1 symbol.

Input: OFDM T2 frame. 
Output: OFDM T2 frame with P1 symbol.

Constructor Specific Documentation:

Create a P1 symbol inserter.

Args:
    carriermode : number of carriers (normal or extended).
    fftsize : OFDM IFFT size.
    guardinterval : OFDM ISI guard interval.
    numdatasyms : number of OFDM symbols in a T2 frame.
    preamble : P1 symbol preamble format.
    showlevels : print peak IQ levels.
    vclip : set peak IQ level threshold."

%feature("docstring") gr::dtv::dvbt2_p1insertion_cc::make "Inserts a P1 symbol.

Input: OFDM T2 frame. 
Output: OFDM T2 frame with P1 symbol.

Constructor Specific Documentation:

Create a P1 symbol inserter.

Args:
    carriermode : number of carriers (normal or extended).
    fftsize : OFDM IFFT size.
    guardinterval : OFDM ISI guard interval.
    numdatasyms : number of OFDM symbols in a T2 frame.
    preamble : P1 symbol preamble format.
    showlevels : print peak IQ levels.
    vclip : set peak IQ level threshold."

%feature("docstring") gr::dtv::dvbt2_paprtr_cc "Peak to Average Power Ratio (PAPR) reduction.

Input: A T2 frame of OFDM symbols. 
Output: A T2 frame of PAPR reduced OFDM symbols.

Constructor Specific Documentation:

Create a PAPR reducer.

Args:
    carriermode : number of carriers (normal or extended).
    fftsize : OFDM IFFT size.
    pilotpattern : DVB-T2 pilot pattern (PP1 - PP8).
    guardinterval : OFDM ISI guard interval.
    numdatasyms : number of OFDM symbols in a T2 frame.
    paprmode : PAPR reduction mode.
    version : DVB-T2 specification version.
    vclip : PAPR clipping level.
    iterations : PAPR algorithm number of iterations.
    vlength : input and output vector length."

%feature("docstring") gr::dtv::dvbt2_paprtr_cc::make "Peak to Average Power Ratio (PAPR) reduction.

Input: A T2 frame of OFDM symbols. 
Output: A T2 frame of PAPR reduced OFDM symbols.

Constructor Specific Documentation:

Create a PAPR reducer.

Args:
    carriermode : number of carriers (normal or extended).
    fftsize : OFDM IFFT size.
    pilotpattern : DVB-T2 pilot pattern (PP1 - PP8).
    guardinterval : OFDM ISI guard interval.
    numdatasyms : number of OFDM symbols in a T2 frame.
    paprmode : PAPR reduction mode.
    version : DVB-T2 specification version.
    vclip : PAPR clipping level.
    iterations : PAPR algorithm number of iterations.
    vlength : input and output vector length."

%feature("docstring") gr::dtv::dvbt2_pilotgenerator_cc "Adds pilots to T2 frames.

Input: Frequency interleaved T2 frame. 
Output: T2 frame with pilots (in time domain).

Constructor Specific Documentation:

Create a DVB-T2 pilot generator.

Args:
    carriermode : number of carriers (normal or extended).
    fftsize : OFDM IFFT size.
    pilotpattern : DVB-T2 pilot pattern (PP1 - PP8).
    guardinterval : OFDM ISI guard interval.
    numdatasyms : number of OFDM symbols in a T2 frame.
    paprmode : PAPR reduction mode.
    version : DVB-T2 specification version.
    preamble : P1 symbol preamble format.
    misogroup : MISO transmitter ID.
    equalization : sin(x)/x DAC equalization (on or off).
    bandwidth : sin(x)/x equalization bandwidth.
    vlength : output vector length."

%feature("docstring") gr::dtv::dvbt2_pilotgenerator_cc::make "Adds pilots to T2 frames.

Input: Frequency interleaved T2 frame. 
Output: T2 frame with pilots (in time domain).

Constructor Specific Documentation:

Create a DVB-T2 pilot generator.

Args:
    carriermode : number of carriers (normal or extended).
    fftsize : OFDM IFFT size.
    pilotpattern : DVB-T2 pilot pattern (PP1 - PP8).
    guardinterval : OFDM ISI guard interval.
    numdatasyms : number of OFDM symbols in a T2 frame.
    paprmode : PAPR reduction mode.
    version : DVB-T2 specification version.
    preamble : P1 symbol preamble format.
    misogroup : MISO transmitter ID.
    equalization : sin(x)/x DAC equalization (on or off).
    bandwidth : sin(x)/x equalization bandwidth.
    vlength : output vector length."

%feature("docstring") gr::dtv::dvbt_bit_inner_deinterleaver "Bit Inner deinterleaver.

ETSI EN 300 744 Clause 4.3.4.1 
Data Input format: 
000000B0B1 - QPSK. 
0000B0B1B2B3 - 16QAM. 
00B0B1B2B3B4B5 - 64QAM. 
Data Output format: 
000000X0X1 - QPSK. 
0000X0X1X2X3 - 16QAM. 
00X0X1X2X3X4X5 - 64QAM. 
bit deinterleaver block size is 126.

Constructor Specific Documentation:

Create a Bit Inner deinterleaver.

Args:
    nsize : length of input stream.
    constellation : constellation used.
    hierarchy : hierarchy used.
    transmission : transmission mode used."

%feature("docstring") gr::dtv::dvbt_bit_inner_deinterleaver::make "Bit Inner deinterleaver.

ETSI EN 300 744 Clause 4.3.4.1 
Data Input format: 
000000B0B1 - QPSK. 
0000B0B1B2B3 - 16QAM. 
00B0B1B2B3B4B5 - 64QAM. 
Data Output format: 
000000X0X1 - QPSK. 
0000X0X1X2X3 - 16QAM. 
00X0X1X2X3X4X5 - 64QAM. 
bit deinterleaver block size is 126.

Constructor Specific Documentation:

Create a Bit Inner deinterleaver.

Args:
    nsize : length of input stream.
    constellation : constellation used.
    hierarchy : hierarchy used.
    transmission : transmission mode used."

%feature("docstring") gr::dtv::dvbt_bit_inner_interleaver "Bit Inner interleaver.

ETSI EN 300 744 Clause 4.3.4.1 
Data Input format: 
000000X0X1 - QPSK. 
0000X0X1X2X3 - 16QAM. 
00X0X1X2X3X4X5 - 64QAM. 
Data Output format: 
000000B0B1 - QPSK. 
0000B0B1B2B3 - 16QAM. 
00B0B1B2B3B4B5 - 64QAM. 
bit interleaver block size is 126.

Constructor Specific Documentation:

Create a Bit Inner interleaver.

Args:
    nsize : length of input stream.
    constellation : constellation used.
    hierarchy : hierarchy used.
    transmission : transmission mode used."

%feature("docstring") gr::dtv::dvbt_bit_inner_interleaver::make "Bit Inner interleaver.

ETSI EN 300 744 Clause 4.3.4.1 
Data Input format: 
000000X0X1 - QPSK. 
0000X0X1X2X3 - 16QAM. 
00X0X1X2X3X4X5 - 64QAM. 
Data Output format: 
000000B0B1 - QPSK. 
0000B0B1B2B3 - 16QAM. 
00B0B1B2B3B4B5 - 64QAM. 
bit interleaver block size is 126.

Constructor Specific Documentation:

Create a Bit Inner interleaver.

Args:
    nsize : length of input stream.
    constellation : constellation used.
    hierarchy : hierarchy used.
    transmission : transmission mode used."

%feature("docstring") gr::dtv::dvbt_convolutional_deinterleaver "Convolutional deinterleaver.

ETSI EN 300 744 Clause 4.3.1 
Forney (Ramsey type III) convolutional deinterleaver. 
Data input: Stream of 1 byte elements. 
Data output: Blocks of I bytes size.

Constructor Specific Documentation:

Create a DVB-T convolutional deinterleaver.

Args:
    nsize : number of blocks to process.
    I : size of a block.
    M : depth length for each element in shift registers."

%feature("docstring") gr::dtv::dvbt_convolutional_deinterleaver::make "Convolutional deinterleaver.

ETSI EN 300 744 Clause 4.3.1 
Forney (Ramsey type III) convolutional deinterleaver. 
Data input: Stream of 1 byte elements. 
Data output: Blocks of I bytes size.

Constructor Specific Documentation:

Create a DVB-T convolutional deinterleaver.

Args:
    nsize : number of blocks to process.
    I : size of a block.
    M : depth length for each element in shift registers."

%feature("docstring") gr::dtv::dvbt_convolutional_interleaver "Convolutional interleaver.

ETSI EN 300 744 Clause 4.3.1 
Forney (Ramsey type III) convolutional interleaver. 
Input: Blocks of I bytes size. 
Output: Stream of 1 byte elements.

Constructor Specific Documentation:

Create a DVB-T convolutional interleaver.

Args:
    nsize : number of blocks to process.
    I : size of a block.
    M : depth length for each element in shift registers."

%feature("docstring") gr::dtv::dvbt_convolutional_interleaver::make "Convolutional interleaver.

ETSI EN 300 744 Clause 4.3.1 
Forney (Ramsey type III) convolutional interleaver. 
Input: Blocks of I bytes size. 
Output: Stream of 1 byte elements.

Constructor Specific Documentation:

Create a DVB-T convolutional interleaver.

Args:
    nsize : number of blocks to process.
    I : size of a block.
    M : depth length for each element in shift registers."

%feature("docstring") gr::dtv::dvbt_demap "DVB-T demapper.

ETSI EN 300 744 Clause 4.3.5. 
Data input format: 
complex(real(float), imag(float)). 
Data output format: 
000000Y0Y1 - QPSK. 
0000Y0Y1Y2Y3 - 16QAM. 
00Y0Y1Y2Y3Y4Y5 - 64QAM.

Constructor Specific Documentation:

Create a DVB-T demapper.

Args:
    nsize : length of input stream.
    constellation : constellation used.
    hierarchy : hierarchy used.
    transmission : transmission mode used.
    gain : gain of complex input stream."

%feature("docstring") gr::dtv::dvbt_demap::make "DVB-T demapper.

ETSI EN 300 744 Clause 4.3.5. 
Data input format: 
complex(real(float), imag(float)). 
Data output format: 
000000Y0Y1 - QPSK. 
0000Y0Y1Y2Y3 - 16QAM. 
00Y0Y1Y2Y3Y4Y5 - 64QAM.

Constructor Specific Documentation:

Create a DVB-T demapper.

Args:
    nsize : length of input stream.
    constellation : constellation used.
    hierarchy : hierarchy used.
    transmission : transmission mode used.
    gain : gain of complex input stream."

%feature("docstring") gr::dtv::dvbt_demod_reference_signals "Reference signals demodulator.

ETSI EN 300 744 Clause 4.5 
Data input format: 
complex(real(float), imag(float)). 
Data output format: 
complex(real(float), imag(float)).

Constructor Specific Documentation:

Create Reference signals demodulator.

Args:
    itemsize : size of an in/out item.
    ninput : input stream length.
    noutput : output stream length.
    constellation : constellation used.
    hierarchy : hierarchy used.
    code_rate_HP : high priority stream code rate.
    code_rate_LP : low priority stream code rate.
    guard_interval : guard interval used.
    transmission_mode : transmission mode used.
    include_cell_id : include or not Cell ID.
    cell_id : value of the Cell ID."

%feature("docstring") gr::dtv::dvbt_demod_reference_signals::make "Reference signals demodulator.

ETSI EN 300 744 Clause 4.5 
Data input format: 
complex(real(float), imag(float)). 
Data output format: 
complex(real(float), imag(float)).

Constructor Specific Documentation:

Create Reference signals demodulator.

Args:
    itemsize : size of an in/out item.
    ninput : input stream length.
    noutput : output stream length.
    constellation : constellation used.
    hierarchy : hierarchy used.
    code_rate_HP : high priority stream code rate.
    code_rate_LP : low priority stream code rate.
    guard_interval : guard interval used.
    transmission_mode : transmission mode used.
    include_cell_id : include or not Cell ID.
    cell_id : value of the Cell ID."

%feature("docstring") gr::dtv::dvbt_energy_descramble "Energy descramble

ETSI EN 300 744 - Clause 4.3.1. 
Input - Randomized MPEG-2 transport packets. 
Output - MPEG-2 transport packets (including sync - 0x47). 
We assume the first byte is a NSYNC. 
First sync in a row of 8 packets is reversed - 0xB8. 
Block size is 188 bytes.

Constructor Specific Documentation:

Create DVB-T Energy descramble.

Args:
    nblocks : number of blocks."

%feature("docstring") gr::dtv::dvbt_energy_descramble::make "Energy descramble

ETSI EN 300 744 - Clause 4.3.1. 
Input - Randomized MPEG-2 transport packets. 
Output - MPEG-2 transport packets (including sync - 0x47). 
We assume the first byte is a NSYNC. 
First sync in a row of 8 packets is reversed - 0xB8. 
Block size is 188 bytes.

Constructor Specific Documentation:

Create DVB-T Energy descramble.

Args:
    nblocks : number of blocks."

%feature("docstring") gr::dtv::dvbt_energy_dispersal "Energy dispersal.

ETSI EN 300 744 - Clause 4.3.1 
Input - MPEG-2 transport packets (including sync - 0x47). 
Output - Randomized MPEG-2 transport packets. 
If first byte is not a SYNC then look for it. 
First sync in a row of 8 packets is reversed - 0xB8. 
Block size is 188 bytes.

Constructor Specific Documentation:

Create DVB-T energy dispersal.

Args:
    nsize : number of blocks."

%feature("docstring") gr::dtv::dvbt_energy_dispersal::make "Energy dispersal.

ETSI EN 300 744 - Clause 4.3.1 
Input - MPEG-2 transport packets (including sync - 0x47). 
Output - Randomized MPEG-2 transport packets. 
If first byte is not a SYNC then look for it. 
First sync in a row of 8 packets is reversed - 0xB8. 
Block size is 188 bytes.

Constructor Specific Documentation:

Create DVB-T energy dispersal.

Args:
    nsize : number of blocks."

%feature("docstring") gr::dtv::dvbt_inner_coder "Inner coder with Puncturing.

ETSI EN 300 744 Clause 4.3.3 
Mother convolutional code with rate 1/2. 
k=1, n=2, K=6. 
Generator polynomial G1=171(OCT), G2=133(OCT). 
Punctured to obtain rates of 2/3, 3/4, 5/6, 7/8. 
Data Input format: Packed bytes (each bit is data). 
MSB - first, LSB last. 
Data Output format: 
000000X0X1 - QPSK. 
0000X0X1X2X3 - 16QAM. 
00X0X1X2X3X4X5 - 64QAM.

Constructor Specific Documentation:

Create an Inner coder with Puncturing.

Args:
    ninput : length of input.
    noutput : length of output.
    constellation : type of constellation.
    hierarchy : type of hierarchy used.
    coderate : coderate used."

%feature("docstring") gr::dtv::dvbt_inner_coder::make "Inner coder with Puncturing.

ETSI EN 300 744 Clause 4.3.3 
Mother convolutional code with rate 1/2. 
k=1, n=2, K=6. 
Generator polynomial G1=171(OCT), G2=133(OCT). 
Punctured to obtain rates of 2/3, 3/4, 5/6, 7/8. 
Data Input format: Packed bytes (each bit is data). 
MSB - first, LSB last. 
Data Output format: 
000000X0X1 - QPSK. 
0000X0X1X2X3 - 16QAM. 
00X0X1X2X3X4X5 - 64QAM.

Constructor Specific Documentation:

Create an Inner coder with Puncturing.

Args:
    ninput : length of input.
    noutput : length of output.
    constellation : type of constellation.
    hierarchy : type of hierarchy used.
    coderate : coderate used."

%feature("docstring") gr::dtv::dvbt_map "DVB-T mapper.

ETSI EN 300 744 Clause 4.3.5. 
Data input format: 
000000Y0Y1 - QPSK. 
0000Y0Y1Y2Y3 - 16QAM. 
00Y0Y1Y2Y3Y4Y5 - 64QAM. 
Data output format: 
complex(real(float), imag(float)).

Constructor Specific Documentation:

Create a DVB-T mapper.

Args:
    nsize : length of input stream.
    constellation : constellation used.
    hierarchy : hierarchy used.
    transmission : transmission mode used.
    gain : gain of complex output stream."

%feature("docstring") gr::dtv::dvbt_map::make "DVB-T mapper.

ETSI EN 300 744 Clause 4.3.5. 
Data input format: 
000000Y0Y1 - QPSK. 
0000Y0Y1Y2Y3 - 16QAM. 
00Y0Y1Y2Y3Y4Y5 - 64QAM. 
Data output format: 
complex(real(float), imag(float)).

Constructor Specific Documentation:

Create a DVB-T mapper.

Args:
    nsize : length of input stream.
    constellation : constellation used.
    hierarchy : hierarchy used.
    transmission : transmission mode used.
    gain : gain of complex output stream."

%feature("docstring") gr::dtv::dvbt_ofdm_sym_acquisition "OFDM symbol acquisition.

Data input format: 
complex(real(float), imag(float)). 
Data output format: 
complex(real(float), imag(float)).

Constructor Specific Documentation:

Create OFDM symbol acquisition.

Args:
    blocks : Always equal to 1.
    fft_length : FFT size, 2048 or 8192.
    occupied_tones : Active OFDM carriers, 1705 or 6817.
    cp_length : Length of Cyclic Prefix (FFT size / 32, 16, 8 or 4).
    snr : Initial Signal to Noise Ratio."

%feature("docstring") gr::dtv::dvbt_ofdm_sym_acquisition::make "OFDM symbol acquisition.

Data input format: 
complex(real(float), imag(float)). 
Data output format: 
complex(real(float), imag(float)).

Constructor Specific Documentation:

Create OFDM symbol acquisition.

Args:
    blocks : Always equal to 1.
    fft_length : FFT size, 2048 or 8192.
    occupied_tones : Active OFDM carriers, 1705 or 6817.
    cp_length : Length of Cyclic Prefix (FFT size / 32, 16, 8 or 4).
    snr : Initial Signal to Noise Ratio."

%feature("docstring") gr::dtv::dvbt_reed_solomon_dec "Reed Solomon decoder.

ETSI EN 300 744 Clause 4.3.2 
RS(N=204,K=239,T=8).

Constructor Specific Documentation:

Create a Reed Solomon decoder.

Args:
    p : characteristic of GF(p^m).
    m : we use GF(p^m).
    gfpoly : Generator Polynomial.
    n : length of codeword of RS coder.
    k : length of information sequence of RS decoder.
    t : number of corrected errors.
    s : shortened length.
    blocks : number of blocks to process at once."

%feature("docstring") gr::dtv::dvbt_reed_solomon_dec::make "Reed Solomon decoder.

ETSI EN 300 744 Clause 4.3.2 
RS(N=204,K=239,T=8).

Constructor Specific Documentation:

Create a Reed Solomon decoder.

Args:
    p : characteristic of GF(p^m).
    m : we use GF(p^m).
    gfpoly : Generator Polynomial.
    n : length of codeword of RS coder.
    k : length of information sequence of RS decoder.
    t : number of corrected errors.
    s : shortened length.
    blocks : number of blocks to process at once."

%feature("docstring") gr::dtv::dvbt_reed_solomon_enc "Reed Solomon encoder

ETSI EN 300 744 Clause 4.3.2 
RS(N=204,K=239,T=8).

Constructor Specific Documentation:

Create a Reed Solomon encoder.

Args:
    p : characteristic of GF(p^m).
    m : we use GF(p^m).
    gfpoly : Generator Polynomial.
    n : length of codeword of RS coder.
    k : length of information sequence of RS encoder.
    t : number of corrected errors.
    s : shortened length.
    blocks : number of blocks to process at once."

%feature("docstring") gr::dtv::dvbt_reed_solomon_enc::make "Reed Solomon encoder

ETSI EN 300 744 Clause 4.3.2 
RS(N=204,K=239,T=8).

Constructor Specific Documentation:

Create a Reed Solomon encoder.

Args:
    p : characteristic of GF(p^m).
    m : we use GF(p^m).
    gfpoly : Generator Polynomial.
    n : length of codeword of RS coder.
    k : length of information sequence of RS encoder.
    t : number of corrected errors.
    s : shortened length.
    blocks : number of blocks to process at once."

%feature("docstring") gr::dtv::dvbt_reference_signals "Reference signals generator.

ETSI EN 300 744 Clause 4.5 
Data input format: 
complex(real(float), imag(float)). 
Data output format: 
complex(real(float), imag(float)).

Constructor Specific Documentation:

Create Reference signals generator.

Args:
    itemsize : size of an in/out item.
    ninput : input stream length.
    noutput : output stream length.
    constellation : constellation used.
    hierarchy : hierarchy used.
    code_rate_HP : high priority stream code rate.
    code_rate_LP : low priority stream code rate.
    guard_interval : guard interval used.
    transmission_mode : transmission mode used.
    include_cell_id : include or not Cell ID.
    cell_id : value of the Cell ID."

%feature("docstring") gr::dtv::dvbt_reference_signals::make "Reference signals generator.

ETSI EN 300 744 Clause 4.5 
Data input format: 
complex(real(float), imag(float)). 
Data output format: 
complex(real(float), imag(float)).

Constructor Specific Documentation:

Create Reference signals generator.

Args:
    itemsize : size of an in/out item.
    ninput : input stream length.
    noutput : output stream length.
    constellation : constellation used.
    hierarchy : hierarchy used.
    code_rate_HP : high priority stream code rate.
    code_rate_LP : low priority stream code rate.
    guard_interval : guard interval used.
    transmission_mode : transmission mode used.
    include_cell_id : include or not Cell ID.
    cell_id : value of the Cell ID."

%feature("docstring") gr::dtv::dvbt_symbol_inner_interleaver "Symbol interleaver.

ETSI EN 300 744 Clause 4.3.4.2 
One block is 12 groups x 126 datawords = 1512 datawords.

Data Input format: 
000000I0I1 - QPSK. 
0000I0I1I2I3 - 16QAM. 
00I0I1I2I3I4I5 - 64QAM. 
Data Output format: 
000000Y0Y1 - QPSK. 
0000Y0Y1Y2Y3 - 16QAM. 
00Y0Y1Y2Y3Y4Y5 - 64QAM.

Constructor Specific Documentation:

Create a Symbol interleaver.

Args:
    ninput : length of input stream.
    transmission : transmission mode used
    direction : interleave or deinterleave."

%feature("docstring") gr::dtv::dvbt_symbol_inner_interleaver::make "Symbol interleaver.

ETSI EN 300 744 Clause 4.3.4.2 
One block is 12 groups x 126 datawords = 1512 datawords.

Data Input format: 
000000I0I1 - QPSK. 
0000I0I1I2I3 - 16QAM. 
00I0I1I2I3I4I5 - 64QAM. 
Data Output format: 
000000Y0Y1 - QPSK. 
0000Y0Y1Y2Y3 - 16QAM. 
00Y0Y1Y2Y3Y4Y5 - 64QAM.

Constructor Specific Documentation:

Create a Symbol interleaver.

Args:
    ninput : length of input stream.
    transmission : transmission mode used
    direction : interleave or deinterleave."

%feature("docstring") gr::dtv::dvbt_viterbi_decoder "DVB-T Viterbi decoder.

ETSI EN 300 744 Clause 4.3.3 
Mother convolutional code with rate 1/2. 
k=1, n=2, K=6. 
Generator polynomial G1=171(OCT), G2=133(OCT). 
Punctured to obtain rates of 2/3, 3/4, 5/6, 7/8. 
Data Input format: 
000000X0X1 - QPSK. 
0000X0X1X2X3 - 16QAM. 
00X0X1X2X3X4X5 - 64QAM. 
Data Output format: Packed bytes (each bit is data). 
MSB - first, LSB last.

Constructor Specific Documentation:

Create a DVB-T Viterbi decoder.

Args:
    constellation : constellation used.
    hierarchy : hierarchy used.
    coderate : coderate used.
    bsize : block size."

%feature("docstring") gr::dtv::dvbt_viterbi_decoder::make "DVB-T Viterbi decoder.

ETSI EN 300 744 Clause 4.3.3 
Mother convolutional code with rate 1/2. 
k=1, n=2, K=6. 
Generator polynomial G1=171(OCT), G2=133(OCT). 
Punctured to obtain rates of 2/3, 3/4, 5/6, 7/8. 
Data Input format: 
000000X0X1 - QPSK. 
0000X0X1X2X3 - 16QAM. 
00X0X1X2X3X4X5 - 64QAM. 
Data Output format: Packed bytes (each bit is data). 
MSB - first, LSB last.

Constructor Specific Documentation:

Create a DVB-T Viterbi decoder.

Args:
    constellation : constellation used.
    hierarchy : hierarchy used.
    coderate : coderate used.
    bsize : block size."