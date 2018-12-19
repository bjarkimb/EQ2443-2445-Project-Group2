/* -*- c++ -*- */
/*
 * Copyright 2004,2012 Free Software Foundation, Inc.
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

#ifndef INCLUDED_TRELLIS_VITERBI_S_H
#define INCLUDED_TRELLIS_VITERBI_S_H

#include <gnuradio/trellis/api.h>
#include <gnuradio/trellis/fsm.h>
#include <gnuradio/trellis/core_algorithms.h>
#include <gnuradio/block.h>

namespace gr {
  namespace trellis {

    /*!
     *  \ingroup trellis_coding_blk
     */
    class TRELLIS_API viterbi_s : virtual public block
    {
    public:
      // gr::trellis::viterbi_s::sptr
      typedef boost::shared_ptr<viterbi_s> sptr;

      static sptr make(const fsm &FSM, int K,
		       int S0, int SK);

      virtual fsm FSM() const  = 0;
      virtual int K()  const = 0;
      virtual int S0()  const = 0;
      virtual int SK()  const = 0;

      virtual void set_FSM(const fsm &FSM) =0;
      virtual void set_K(int K) =0;
      virtual void set_S0(int S0) =0;
      virtual void set_SK(int SK) =0;
    };

  } /* namespace trellis */
} /* namespace gr */

#endif /* INCLUDED_TRELLIS_VITERBI_S_H */
