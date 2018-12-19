

/* this file was generated by volk template utils, do not edit! */

/*
 * Copyright 2011-2012 Free Software Foundation, Inc.
 *
 * This file is part of GNU Radio
 *
 * GNU Radio is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 *
 * GNU Radio is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with GNU Radio; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#ifndef INCLUDED_VOLK_TYPEDEFS
#define INCLUDED_VOLK_TYPEDEFS

#include <inttypes.h>
#include <volk/volk_complex.h>

typedef void (*p_16i_32fc_dot_prod_32fc)(lv_32fc_t* , const short* , const lv_32fc_t * , unsigned int );
typedef void (*p_16i_branch_4_state_8)(short* , short* , char** , short* , short* , short* );
typedef void (*p_16i_convert_8i)(int8_t* , const int16_t* , unsigned int );
typedef void (*p_16i_max_star_16i)(short* , short* , unsigned int );
typedef void (*p_16i_max_star_horizontal_16i)(int16_t* , int16_t* , unsigned int );
typedef void (*p_16i_permute_and_scalar_add)(short* , short* , short* , short* , short* , short* , short* , short* , unsigned int );
typedef void (*p_16i_s32f_convert_32f)(float* , const int16_t* , const float , unsigned int );
typedef void (*p_16i_x4_quad_max_star_16i)(short* , short* , short* , short* , short* , unsigned int );
typedef void (*p_16i_x5_add_quad_16i_x4)(short* , short* , short* , short* , short* , short* , short* , short* , short* , unsigned int );
typedef void (*p_16ic_convert_32fc)(lv_32fc_t* , const lv_16sc_t* , unsigned int );
typedef void (*p_16ic_deinterleave_16i_x2)(int16_t* , int16_t* , const lv_16sc_t* , unsigned int );
typedef void (*p_16ic_deinterleave_real_16i)(int16_t* , const lv_16sc_t* , unsigned int );
typedef void (*p_16ic_deinterleave_real_8i)(int8_t* , const lv_16sc_t* , unsigned int );
typedef void (*p_16ic_magnitude_16i)(int16_t* , const lv_16sc_t* , unsigned int );
typedef void (*p_16ic_s32f_deinterleave_32f_x2)(float* , float* , const lv_16sc_t* , const float , unsigned int );
typedef void (*p_16ic_s32f_deinterleave_real_32f)(float* , const lv_16sc_t* , const float , unsigned int );
typedef void (*p_16ic_s32f_magnitude_32f)(float* , const lv_16sc_t* , const float , unsigned int );
typedef void (*p_16ic_x2_dot_prod_16ic)(lv_16sc_t* , const lv_16sc_t* , const lv_16sc_t* , unsigned int );
typedef void (*p_16ic_x2_multiply_16ic)(lv_16sc_t* , const lv_16sc_t* , const lv_16sc_t* , unsigned int );
typedef void (*p_16u_byteswap)(uint16_t* , unsigned int );
typedef void (*p_16u_byteswappuppet_16u)(uint16_t*, uint16_t* , unsigned int );
typedef void (*p_32f_64f_add_64f)(double *, const float *, const double *, unsigned int );
typedef void (*p_32f_64f_multiply_64f)(double *, const float *, const double *, unsigned int );
typedef void (*p_32f_8u_polarbutterfly_32f)(float* , unsigned char* , const int , const int , const int , const int );
typedef void (*p_32f_8u_polarbutterflypuppet_32f)(float* , const float* , unsigned char* , const int );
typedef void (*p_32f_accumulator_s32f)(float* , const float* , unsigned int );
typedef void (*p_32f_acos_32f)(float* , const float* , unsigned int );
typedef void (*p_32f_asin_32f)(float* , const float* , unsigned int );
typedef void (*p_32f_atan_32f)(float* , const float* , unsigned int );
typedef void (*p_32f_binary_slicer_32i)(int* , const float* , unsigned int );
typedef void (*p_32f_binary_slicer_8i)(int8_t* , const float* , unsigned int );
typedef void (*p_32f_convert_64f)(double* , const float* , unsigned int );
typedef void (*p_32f_cos_32f)(float* , const float* , unsigned int );
typedef void (*p_32f_expfast_32f)(float* , const float* , unsigned int );
typedef void (*p_32f_index_max_16u)(uint16_t* , const float* , uint32_t );
typedef void (*p_32f_index_max_32u)(uint32_t* , const float* , uint32_t );
typedef void (*p_32f_invsqrt_32f)(float* , const float* , unsigned int );
typedef void (*p_32f_log2_32f)(float* , const float* , unsigned int );
typedef void (*p_32f_null_32f)(float* , const float* , unsigned int );
typedef void (*p_32f_s32f_32f_fm_detect_32f)(float* , const float* , const float , float* , unsigned int );
typedef void (*p_32f_s32f_calc_spectral_noise_floor_32f)(float* , const float* , const float , const unsigned int );
typedef void (*p_32f_s32f_convert_16i)(int16_t* , const float* , const float , unsigned int );
typedef void (*p_32f_s32f_convert_32i)(int32_t* , const float* , const float , unsigned int );
typedef void (*p_32f_s32f_convert_8i)(int8_t* , const float* , const float , unsigned int );
typedef void (*p_32f_s32f_mod_rangepuppet_32f)(float *, const float *, float , unsigned int );
typedef void (*p_32f_s32f_multiply_32f)(float* , const float* , const float , unsigned int );
typedef void (*p_32f_s32f_normalize)(float* , const float , unsigned int );
typedef void (*p_32f_s32f_power_32f)(float* , const float* , const float , unsigned int );
typedef void (*p_32f_s32f_s32f_mod_range_32f)(float* , const float* , const float , const float , unsigned int );
typedef void (*p_32f_s32f_stddev_32f)(float* , const float* , const float , unsigned int );
typedef void (*p_32f_sin_32f)(float* , const float* , unsigned int );
typedef void (*p_32f_sqrt_32f)(float* , const float* , unsigned int );
typedef void (*p_32f_stddev_and_mean_32f_x2)(float* , float* , const float* , unsigned int );
typedef void (*p_32f_tan_32f)(float* , const float* , unsigned int );
typedef void (*p_32f_tanh_32f)(float* , const float* , unsigned int );
typedef void (*p_32f_x2_add_32f)(float* , const float* , const float* , unsigned int );
typedef void (*p_32f_x2_divide_32f)(float* , const float* , const float* , unsigned int );
typedef void (*p_32f_x2_dot_prod_16i)(int16_t* , const float* , const float* , unsigned int );
typedef void (*p_32f_x2_dot_prod_32f)(float * , const float * , const float * , unsigned int );
typedef void (*p_32f_x2_fm_detectpuppet_32f)(float* , const float* , float* , unsigned int );
typedef void (*p_32f_x2_interleave_32fc)(lv_32fc_t* , const float* , const float* , unsigned int );
typedef void (*p_32f_x2_max_32f)(float* , const float* , const float* , unsigned int );
typedef void (*p_32f_x2_min_32f)(float* , const float* , const float* , unsigned int );
typedef void (*p_32f_x2_multiply_32f)(float* , const float* , const float* , unsigned int );
typedef void (*p_32f_x2_pow_32f)(float* , const float* , const float* , unsigned int );
typedef void (*p_32f_x2_s32f_interleave_16ic)(lv_16sc_t* , const float* , const float* , const float , unsigned int );
typedef void (*p_32f_x2_subtract_32f)(float* , const float* , const float* , unsigned int );
typedef void (*p_32f_x3_sum_of_poly_32f)(float* , float* , float* , float* , unsigned int );
typedef void (*p_32fc_32f_add_32fc)(lv_32fc_t* , const lv_32fc_t* , const float* , unsigned int );
typedef void (*p_32fc_32f_dot_prod_32fc)(lv_32fc_t* , const lv_32fc_t* , const float * , unsigned int );
typedef void (*p_32fc_32f_multiply_32fc)(lv_32fc_t* , const lv_32fc_t* , const float* , unsigned int );
typedef void (*p_32fc_conjugate_32fc)(lv_32fc_t* , const lv_32fc_t* , unsigned int );
typedef void (*p_32fc_convert_16ic)(lv_16sc_t* , const lv_32fc_t* , unsigned int );
typedef void (*p_32fc_deinterleave_32f_x2)(float* , float* , const lv_32fc_t* , unsigned int );
typedef void (*p_32fc_deinterleave_64f_x2)(double* , double* , const lv_32fc_t* , unsigned int );
typedef void (*p_32fc_deinterleave_imag_32f)(float* , const lv_32fc_t* , unsigned int );
typedef void (*p_32fc_deinterleave_real_32f)(float* , const lv_32fc_t* , unsigned int );
typedef void (*p_32fc_deinterleave_real_64f)(double* , const lv_32fc_t* , unsigned int );
typedef void (*p_32fc_index_max_16u)(uint16_t* , lv_32fc_t* , uint32_t );
typedef void (*p_32fc_index_max_32u)(uint32_t* , lv_32fc_t* , uint32_t );
typedef void (*p_32fc_magnitude_32f)(float* , const lv_32fc_t* , unsigned int );
typedef void (*p_32fc_magnitude_squared_32f)(float* , const lv_32fc_t* , unsigned int );
typedef void (*p_32fc_s32f_atan2_32f)(float* , const lv_32fc_t* , const float , unsigned int );
typedef void (*p_32fc_s32f_deinterleave_real_16i)(int16_t* , const lv_32fc_t* , const float , unsigned int );
typedef void (*p_32fc_s32f_magnitude_16i)(int16_t* , const lv_32fc_t* , const float , unsigned int );
typedef void (*p_32fc_s32f_power_32fc)(lv_32fc_t* , const lv_32fc_t* , const float , unsigned int );
typedef void (*p_32fc_s32f_power_spectrum_32f)(float* , const lv_32fc_t* , const float , unsigned int );
typedef void (*p_32fc_s32f_x2_power_spectral_density_32f)(float* , const lv_32fc_t* , const float , const float , unsigned int );
typedef void (*p_32fc_s32fc_multiply_32fc)(lv_32fc_t* , const lv_32fc_t* , const lv_32fc_t , unsigned int );
typedef void (*p_32fc_s32fc_rotatorpuppet_32fc)(lv_32fc_t* , const lv_32fc_t* , const lv_32fc_t , unsigned int );
typedef void (*p_32fc_s32fc_x2_rotator_32fc)(lv_32fc_t* , const lv_32fc_t* , const lv_32fc_t , lv_32fc_t* , unsigned int );
typedef void (*p_32fc_x2_add_32fc)(lv_32fc_t* , const lv_32fc_t* , const lv_32fc_t* , unsigned int );
typedef void (*p_32fc_x2_conjugate_dot_prod_32fc)(lv_32fc_t* , const lv_32fc_t* , const lv_32fc_t* , unsigned int );
typedef void (*p_32fc_x2_divide_32fc)(lv_32fc_t* , const lv_32fc_t* , const lv_32fc_t* , unsigned int );
typedef void (*p_32fc_x2_dot_prod_32fc)(lv_32fc_t* , const lv_32fc_t* , const lv_32fc_t* , unsigned int );
typedef void (*p_32fc_x2_multiply_32fc)(lv_32fc_t* , const lv_32fc_t* , const lv_32fc_t* , unsigned int );
typedef void (*p_32fc_x2_multiply_conjugate_32fc)(lv_32fc_t* , const lv_32fc_t* , const lv_32fc_t* , unsigned int );
typedef void (*p_32fc_x2_s32f_square_dist_scalar_mult_32f)(float* , lv_32fc_t* , lv_32fc_t* , float , unsigned int );
typedef void (*p_32fc_x2_square_dist_32f)(float* , lv_32fc_t* , lv_32fc_t* , unsigned int );
typedef void (*p_32i_s32f_convert_32f)(float* , const int32_t* , const float , unsigned int );
typedef void (*p_32i_x2_and_32i)(int32_t* , const int32_t* , const int32_t* , unsigned int );
typedef void (*p_32i_x2_or_32i)(int32_t* , const int32_t* , const int32_t* , unsigned int );
typedef void (*p_32u_byteswap)(uint32_t* , unsigned int );
typedef void (*p_32u_byteswappuppet_32u)(uint32_t*, uint32_t* , unsigned int );
typedef void (*p_32u_popcnt)(uint32_t* , const uint32_t );
typedef void (*p_32u_popcntpuppet_32u)(uint32_t* , const uint32_t* , unsigned int );
typedef void (*p_32u_reverse_32u)(uint32_t* , const uint32_t* , unsigned int );
typedef void (*p_64f_convert_32f)(float* , const double* , unsigned int );
typedef void (*p_64f_x2_add_64f)(double *, const double *, const double *, unsigned int );
typedef void (*p_64f_x2_max_64f)(double* , const double* , const double* , unsigned int );
typedef void (*p_64f_x2_min_64f)(double* , const double* , const double* , unsigned int );
typedef void (*p_64f_x2_multiply_64f)(double *, const double *, const double *, unsigned int );
typedef void (*p_64u_byteswap)(uint64_t* , unsigned int );
typedef void (*p_64u_byteswappuppet_64u)(uint64_t*, uint64_t* , unsigned int );
typedef void (*p_64u_popcnt)(uint64_t* , const uint64_t );
typedef void (*p_64u_popcntpuppet_64u)(uint64_t* , const uint64_t* , unsigned int );
typedef void (*p_8i_convert_16i)(int16_t* , const int8_t* , unsigned int );
typedef void (*p_8i_s32f_convert_32f)(float* , const int8_t* , const float , unsigned int );
typedef void (*p_8ic_deinterleave_16i_x2)(int16_t* , int16_t* , const lv_8sc_t* , unsigned int );
typedef void (*p_8ic_deinterleave_real_16i)(int16_t* , const lv_8sc_t* , unsigned int );
typedef void (*p_8ic_deinterleave_real_8i)(int8_t* , const lv_8sc_t* , unsigned int );
typedef void (*p_8ic_s32f_deinterleave_32f_x2)(float* , float* , const lv_8sc_t* , const float , unsigned int );
typedef void (*p_8ic_s32f_deinterleave_real_32f)(float* , const lv_8sc_t* , const float , unsigned int );
typedef void (*p_8ic_x2_multiply_conjugate_16ic)(lv_16sc_t* , const lv_8sc_t* , const lv_8sc_t* , unsigned int );
typedef void (*p_8ic_x2_s32f_multiply_conjugate_32fc)(lv_32fc_t* , const lv_8sc_t* , const lv_8sc_t* , const float , unsigned int );
typedef void (*p_8u_conv_k7_r2puppet_8u)(unsigned char* , unsigned char* , unsigned int );
typedef void (*p_8u_x2_encodeframepolar_8u)(unsigned char* , unsigned char* , unsigned int );
typedef void (*p_8u_x3_encodepolar_8u_x2)(unsigned char* , unsigned char* , const unsigned char* , const unsigned char* , const unsigned char* , unsigned int );
typedef void (*p_8u_x3_encodepolarpuppet_8u)(unsigned char* , unsigned char* , const unsigned char* , const unsigned char* , unsigned int );
typedef void (*p_8u_x4_conv_k7_r2_8u)(unsigned char* , unsigned char* , unsigned char* , unsigned char* , unsigned int , unsigned int , unsigned char* );

#endif /*INCLUDED_VOLK_TYPEDEFS*/
