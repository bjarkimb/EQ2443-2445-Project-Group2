/* -*- c++ -*- */
/*
 * Copyright 2004 Free Software Foundation, Inc.
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

// WARNING: this file is machine generated. Edits will be overwritten

#ifndef INCLUDED_TRELLIS_PCCC_DECODER_COMBINED_CI_H
#define INCLUDED_TRELLIS_PCCC_DECODER_COMBINED_CI_H

#include <gnuradio/trellis/api.h>
#include <gnuradio/trellis/fsm.h>
#include <gnuradio/trellis/interleaver.h>
#include <gnuradio/trellis/calc_metric.h>
#include <gnuradio/trellis/siso_type.h>
#include <gnuradio/block.h>
#include <vector>

namespace gr {
  namespace trellis {

    /*!
     *  \ingroup trellis_coding_blk
     */
    class TRELLIS_API pccc_decoder_combined_ci : virtual public block
    {
    public:
      // gr::trellis::pccc_decoder_combined_ci::sptr
      typedef boost::shared_ptr<pccc_decoder_combined_ci> sptr;

      static sptr make(const fsm &FSMo, int STo0, int SToK,
		       const fsm &FSMi, int STi0, int STiK,
		       const interleaver &INTERLEAVER,
		       int blocklength,
		       int repetitions,
		       siso_type_t SISO_TYPE,
		       int D,
		       const std::vector<gr_complex> &TABLE,
		       digital::trellis_metric_type_t METRIC_TYPE,
		       float scaling);

      virtual fsm FSM1() const = 0;
      virtual fsm FSM2() const = 0;
      virtual int ST10() const = 0;
      virtual int ST1K() const = 0;
      virtual int ST20() const = 0;
      virtual int ST2K() const = 0;
      virtual interleaver INTERLEAVER() const = 0;
      virtual int blocklength() const = 0;
      virtual int repetitions() const = 0;
      virtual int D() const = 0;
      virtual std::vector<gr_complex> TABLE() const = 0;
      virtual digital::trellis_metric_type_t METRIC_TYPE() const = 0;
      virtual siso_type_t SISO_TYPE() const = 0;
      virtual float scaling() const = 0;
      virtual void set_scaling(float scaling) = 0;
    };

  } /* namespace trellis */
} /* namespace gr */

#endif /* INCLUDED_TRELLIS_PCCC_DECODER_COMBINED_CI_H */
