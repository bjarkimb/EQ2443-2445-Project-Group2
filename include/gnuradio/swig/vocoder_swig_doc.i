
/*
 * This file was automatically generated using swig_doc.py.
 *
 * Any changes to it will be lost next time it is regenerated.
 */




%feature("docstring") gr::vocoder::alaw_decode_bs "This block performs alaw audio decoding.

Constructor Specific Documentation:

Make alaw decoder block."

%feature("docstring") gr::vocoder::alaw_decode_bs::make "This block performs alaw audio decoding.

Constructor Specific Documentation:

Make alaw decoder block."

%feature("docstring") gr::vocoder::alaw_encode_sb "This block performs g.711 alaw audio encoding.

Constructor Specific Documentation:

Make alaw encoder block."

%feature("docstring") gr::vocoder::alaw_encode_sb::make "This block performs g.711 alaw audio encoding.

Constructor Specific Documentation:

Make alaw encoder block."

%feature("docstring") gr::vocoder::codec2_decode_ps "CODEC2 Vocoder Decoder

Input: A vector of unpacked bits forming a Codec2 frame.

Output: 16-bit short values of an audio signal with sampling rate 8 kHz.

See also gr::vocoder::codec2_encode_sp.

Constructor Specific Documentation:

Make Codec2 decoder block.

Args:
    mode : Encoded bit rate/mode"

%feature("docstring") gr::vocoder::codec2_decode_ps::make "CODEC2 Vocoder Decoder

Input: A vector of unpacked bits forming a Codec2 frame.

Output: 16-bit short values of an audio signal with sampling rate 8 kHz.

See also gr::vocoder::codec2_encode_sp.

Constructor Specific Documentation:

Make Codec2 decoder block.

Args:
    mode : Encoded bit rate/mode"

%feature("docstring") gr::vocoder::codec2_encode_sp "CODEC2 Vocoder Encoder

Input: Speech (audio) signal as 16-bit shorts, sampling rate 8 kHz.

Output: Vector of unpacked bits, forming one Codec2 frame, per 160 input samples (in 2400 and 3200 bps modes) or per 320 input samples (in 1200, 1300, 1400 and 1600 bps modes).

Constructor Specific Documentation:

Make Codec2 encoder block.

Args:
    mode : Encoded bit rate/mode"

%feature("docstring") gr::vocoder::codec2_encode_sp::make "CODEC2 Vocoder Encoder

Input: Speech (audio) signal as 16-bit shorts, sampling rate 8 kHz.

Output: Vector of unpacked bits, forming one Codec2 frame, per 160 input samples (in 2400 and 3200 bps modes) or per 320 input samples (in 1200, 1300, 1400 and 1600 bps modes).

Constructor Specific Documentation:

Make Codec2 encoder block.

Args:
    mode : Encoded bit rate/mode"

%feature("docstring") gr::vocoder::cvsd_decode_bs "This block performs CVSD audio decoding. Its design and implementation is modeled after the CVSD encoder/decoder specifications defined in the Bluetooth standard.

CVSD is a method for encoding speech that seeks to reduce the bandwidth required for digital voice transmission. CVSD takes advantage of strong correlation between samples, quantizing the difference in amplitude between two consecutive samples. This difference requires fewer quantization levels as compared to other methods that quantize the actual amplitude level, reducing the bandwidth. CVSD employs a two level quantizer (one bit) and an adaptive algorithm that allows for continuous step size adjustment.

The coder can represent low amplitude signals with accuracy without sacrificing performance on large amplitude signals, a trade off that occurs in some non-adaptive modulations.

The CVSD decoder effectively provides 1-to-8 decompression. More specifically, for each incoming input bit, the decoder outputs one audio sample. If the input is a \"1\" bit, the internal reference is increased appropriately and then outputted as the next estimated audio sample. If the input is a \"0\" bit, the internal reference is decreased appropriately and then likewise outputted as the next estimated audio sample. Grouping 8 input bits together, the encoder essentially produces 8 output audio samples for everyone one input byte.

This decoder requires that output audio samples are 2-byte short signed integers. The result bandwidth conversion, therefore, is 1 byte of encoded audio data to 16 output bytes of raw audio data.

The CVSD decoder module must be post-fixed by a down-converter to under-sample the audio data after decoding. The Bluetooth standard specifically calls for a 8-to-1 decimating down-converter. This is required so that so that output sampling rate equals the original input sampling rate present before the encoder. In all cases, the output down-converter rate must be the inverse of the input up-converter rate before the CVSD encoder.

References:

Constructor Specific Documentation:

Constructor parameters to initialize the CVSD decoder. The default values are modeled after the Bluetooth standard and should not be changed, except by an advanced user.

Args:
    min_step : Minimum step size used to update the internal reference. Default: \"10\"
    max_step : Maximum step size used to update the internal reference. Default: \"1280\"
    step_decay : Decay factor applied to step size when there is not a run of J output 1s or 0s. Default: \"0.9990234375\" (i.e. 1-1/1024)
    accum_decay : Decay factor applied to the internal reference during every iteration of the codec. Default: \"0.96875\" (i.e. 1-1/32)
    K : Size of shift register; the number of output bits remembered by codec (must be <= to 32). Default: \"32\"
    J : Number of bits in the shift register that are equal; i.e. the size of a run of 1s, 0s. Default: \"4\"
    pos_accum_max : Maximum integer value allowed for the internal reference. Default: \"32767\" (2^15 - 1 or MAXSHORT)
    neg_accum_max : Minimum integer value allowed for the internal reference. Default: \"-32767\" (-2^15 + 1 or MINSHORT+1)"

















%feature("docstring") gr::vocoder::cvsd_decode_bs::make "This block performs CVSD audio decoding. Its design and implementation is modeled after the CVSD encoder/decoder specifications defined in the Bluetooth standard.

CVSD is a method for encoding speech that seeks to reduce the bandwidth required for digital voice transmission. CVSD takes advantage of strong correlation between samples, quantizing the difference in amplitude between two consecutive samples. This difference requires fewer quantization levels as compared to other methods that quantize the actual amplitude level, reducing the bandwidth. CVSD employs a two level quantizer (one bit) and an adaptive algorithm that allows for continuous step size adjustment.

The coder can represent low amplitude signals with accuracy without sacrificing performance on large amplitude signals, a trade off that occurs in some non-adaptive modulations.

The CVSD decoder effectively provides 1-to-8 decompression. More specifically, for each incoming input bit, the decoder outputs one audio sample. If the input is a \"1\" bit, the internal reference is increased appropriately and then outputted as the next estimated audio sample. If the input is a \"0\" bit, the internal reference is decreased appropriately and then likewise outputted as the next estimated audio sample. Grouping 8 input bits together, the encoder essentially produces 8 output audio samples for everyone one input byte.

This decoder requires that output audio samples are 2-byte short signed integers. The result bandwidth conversion, therefore, is 1 byte of encoded audio data to 16 output bytes of raw audio data.

The CVSD decoder module must be post-fixed by a down-converter to under-sample the audio data after decoding. The Bluetooth standard specifically calls for a 8-to-1 decimating down-converter. This is required so that so that output sampling rate equals the original input sampling rate present before the encoder. In all cases, the output down-converter rate must be the inverse of the input up-converter rate before the CVSD encoder.

References:

Constructor Specific Documentation:

Constructor parameters to initialize the CVSD decoder. The default values are modeled after the Bluetooth standard and should not be changed, except by an advanced user.

Args:
    min_step : Minimum step size used to update the internal reference. Default: \"10\"
    max_step : Maximum step size used to update the internal reference. Default: \"1280\"
    step_decay : Decay factor applied to step size when there is not a run of J output 1s or 0s. Default: \"0.9990234375\" (i.e. 1-1/1024)
    accum_decay : Decay factor applied to the internal reference during every iteration of the codec. Default: \"0.96875\" (i.e. 1-1/32)
    K : Size of shift register; the number of output bits remembered by codec (must be <= to 32). Default: \"32\"
    J : Number of bits in the shift register that are equal; i.e. the size of a run of 1s, 0s. Default: \"4\"
    pos_accum_max : Maximum integer value allowed for the internal reference. Default: \"32767\" (2^15 - 1 or MAXSHORT)
    neg_accum_max : Minimum integer value allowed for the internal reference. Default: \"-32767\" (-2^15 + 1 or MINSHORT+1)"

%feature("docstring") gr::vocoder::cvsd_encode_sb "This block performs CVSD audio encoding. Its design and implementation is modeled after the CVSD encoder/decoder specifications defined in the Bluetooth standard.

CVSD is a method for encoding speech that seeks to reduce the bandwidth required for digital voice transmission. CVSD takes advantage of strong correlation between samples, quantizing the difference in amplitude between two consecutive samples. This difference requires fewer quantization levels as compared to other methods that quantize the actual amplitude level, reducing the bandwidth. CVSD employs a two level quantizer (one bit) and an adaptive algorithm that allows for continuous step size adjustment.

The coder can represent low amplitude signals with accuracy without sacrificing performance on large amplitude signals, a trade off that occurs in some non-adaptive modulations.

The CVSD encoder effectively provides 8-to-1 compression. More specifically, each incoming audio sample is compared to an internal reference value. If the input is greater or equal to the reference, the encoder outputs a \"1\" bit. If the input is less than the reference, the encoder outputs a \"0\" bit. The reference value is then updated accordingly based on the frequency of outputted \"1\" or \"0\" bits. By grouping 8 outputs bits together, the encoder essentially produce one output byte for every 8 input audio samples.

This encoder requires that input audio samples are 2-byte short signed integers. The result bandwidth conversion, therefore, is 16 input bytes of raw audio data to 1 output byte of encoded audio data.

The CVSD encoder module must be prefixed by an up-converter to over-sample the audio data prior to encoding. The Bluetooth standard specifically calls for a 1-to-8 interpolating up-converter. While this reduces the overall compression of the codec, this is required so that the encoder can accurately compute the slope between adjacent audio samples and correctly update its internal reference value.

References:

Constructor Specific Documentation:

Constructor parameters to initialize the CVSD encoder. The default values are modeled after the Bluetooth standard and should not be changed except by an advanced user.

Args:
    min_step : Minimum step size used to update the internal reference. Default: \"10\"
    max_step : Maximum step size used to update the internal reference. Default: \"1280\"
    step_decay : Decay factor applied to step size when there is not a run of J output 1s or 0s. Default: \"0.9990234375\" (i.e. 1-1/1024)
    accum_decay : Decay factor applied to the internal reference during every iteration of the codec. Default: \"0.96875\" (i.e. 1-1/32)
    K : Size of shift register; the number of output bits remembered by codec (must be <= to 32). Default: \"32\"
    J : Number of bits in the shift register that are equal; i.e. the size of a run of 1s, 0s. Default: \"4\"
    pos_accum_max : Maximum integer value allowed for the internal reference. Default: \"32767\" (2^15 - 1 or MAXSHORT)
    neg_accum_max : Minimum integer value allowed for the internal reference. Default: \"-32767\" (-2^15 + 1 or MINSHORT+1)"

















%feature("docstring") gr::vocoder::cvsd_encode_sb::make "This block performs CVSD audio encoding. Its design and implementation is modeled after the CVSD encoder/decoder specifications defined in the Bluetooth standard.

CVSD is a method for encoding speech that seeks to reduce the bandwidth required for digital voice transmission. CVSD takes advantage of strong correlation between samples, quantizing the difference in amplitude between two consecutive samples. This difference requires fewer quantization levels as compared to other methods that quantize the actual amplitude level, reducing the bandwidth. CVSD employs a two level quantizer (one bit) and an adaptive algorithm that allows for continuous step size adjustment.

The coder can represent low amplitude signals with accuracy without sacrificing performance on large amplitude signals, a trade off that occurs in some non-adaptive modulations.

The CVSD encoder effectively provides 8-to-1 compression. More specifically, each incoming audio sample is compared to an internal reference value. If the input is greater or equal to the reference, the encoder outputs a \"1\" bit. If the input is less than the reference, the encoder outputs a \"0\" bit. The reference value is then updated accordingly based on the frequency of outputted \"1\" or \"0\" bits. By grouping 8 outputs bits together, the encoder essentially produce one output byte for every 8 input audio samples.

This encoder requires that input audio samples are 2-byte short signed integers. The result bandwidth conversion, therefore, is 16 input bytes of raw audio data to 1 output byte of encoded audio data.

The CVSD encoder module must be prefixed by an up-converter to over-sample the audio data prior to encoding. The Bluetooth standard specifically calls for a 1-to-8 interpolating up-converter. While this reduces the overall compression of the codec, this is required so that the encoder can accurately compute the slope between adjacent audio samples and correctly update its internal reference value.

References:

Constructor Specific Documentation:

Constructor parameters to initialize the CVSD encoder. The default values are modeled after the Bluetooth standard and should not be changed except by an advanced user.

Args:
    min_step : Minimum step size used to update the internal reference. Default: \"10\"
    max_step : Maximum step size used to update the internal reference. Default: \"1280\"
    step_decay : Decay factor applied to step size when there is not a run of J output 1s or 0s. Default: \"0.9990234375\" (i.e. 1-1/1024)
    accum_decay : Decay factor applied to the internal reference during every iteration of the codec. Default: \"0.96875\" (i.e. 1-1/32)
    K : Size of shift register; the number of output bits remembered by codec (must be <= to 32). Default: \"32\"
    J : Number of bits in the shift register that are equal; i.e. the size of a run of 1s, 0s. Default: \"4\"
    pos_accum_max : Maximum integer value allowed for the internal reference. Default: \"32767\" (2^15 - 1 or MAXSHORT)
    neg_accum_max : Minimum integer value allowed for the internal reference. Default: \"-32767\" (-2^15 + 1 or MINSHORT+1)"

%feature("docstring") gr::vocoder::g721_decode_bs "This block performs g721 audio decoding.

Constructor Specific Documentation:

Make G721 decoder block."

%feature("docstring") gr::vocoder::g721_decode_bs::make "This block performs g721 audio decoding.

Constructor Specific Documentation:

Make G721 decoder block."

%feature("docstring") gr::vocoder::g721_encode_sb "This block performs g721 audio encoding.

Constructor Specific Documentation:

Make G721 encoder block."

%feature("docstring") gr::vocoder::g721_encode_sb::make "This block performs g721 audio encoding.

Constructor Specific Documentation:

Make G721 encoder block."

%feature("docstring") gr::vocoder::g723_24_decode_bs "This block performs g723_24 audio decoding.

Constructor Specific Documentation:

Make G722_24 decoder block."

%feature("docstring") gr::vocoder::g723_24_decode_bs::make "This block performs g723_24 audio decoding.

Constructor Specific Documentation:

Make G722_24 decoder block."

%feature("docstring") gr::vocoder::g723_24_encode_sb "This block performs g723_24 audio encoding.

Constructor Specific Documentation:

Make G722_24 encoder block."

%feature("docstring") gr::vocoder::g723_24_encode_sb::make "This block performs g723_24 audio encoding.

Constructor Specific Documentation:

Make G722_24 encoder block."

%feature("docstring") gr::vocoder::g723_40_decode_bs "This block performs g723_40 audio decoding.

Constructor Specific Documentation:

Make G722_40 decoder block."

%feature("docstring") gr::vocoder::g723_40_decode_bs::make "This block performs g723_40 audio decoding.

Constructor Specific Documentation:

Make G722_40 decoder block."

%feature("docstring") gr::vocoder::g723_40_encode_sb "This block performs g723_40 audio encoding.

Constructor Specific Documentation:

Make G722_40 encoder block."

%feature("docstring") gr::vocoder::g723_40_encode_sb::make "This block performs g723_40 audio encoding.

Constructor Specific Documentation:

Make G722_40 encoder block."

%feature("docstring") gr::vocoder::gsm_fr_decode_ps "GSM 06.10 Full Rate Vocoder Decoder

Input: Vector of 33 bytes per 160 input samples Output: 16-bit shorts representing speech samples.

Constructor Specific Documentation:

Make GSM decoder block."

%feature("docstring") gr::vocoder::gsm_fr_decode_ps::make "GSM 06.10 Full Rate Vocoder Decoder

Input: Vector of 33 bytes per 160 input samples Output: 16-bit shorts representing speech samples.

Constructor Specific Documentation:

Make GSM decoder block."

%feature("docstring") gr::vocoder::gsm_fr_encode_sp "GSM 06.10 Full Rate Vocoder Encoder

Input: 16-bit shorts representing speech samples Output: Vector of 33 bytes per 160 input samples.

Constructor Specific Documentation:

Make GSM encoder block."

%feature("docstring") gr::vocoder::gsm_fr_encode_sp::make "GSM 06.10 Full Rate Vocoder Encoder

Input: 16-bit shorts representing speech samples Output: Vector of 33 bytes per 160 input samples.

Constructor Specific Documentation:

Make GSM encoder block."

%feature("docstring") gr::vocoder::ulaw_decode_bs "This block performs ulaw audio decoding.

Constructor Specific Documentation:

Make ulaw decoder block."

%feature("docstring") gr::vocoder::ulaw_decode_bs::make "This block performs ulaw audio decoding.

Constructor Specific Documentation:

Make ulaw decoder block."

%feature("docstring") gr::vocoder::ulaw_encode_sb "This block performs g.711 ulaw audio encoding.

Constructor Specific Documentation:

Make ulaw encoder block."

%feature("docstring") gr::vocoder::ulaw_encode_sb::make "This block performs g.711 ulaw audio encoding.

Constructor Specific Documentation:

Make ulaw encoder block."

