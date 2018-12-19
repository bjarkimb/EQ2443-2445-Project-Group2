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

/* WARNING: this file is machine generated. Edits will be overwritten */

#ifndef INCLUDED_DIGITAL_CHUNKS_TO_SYMBOLS_IC_H
#define INCLUDED_DIGITAL_CHUNKS_TO_SYMBOLS_IC_H

#include <gnuradio/digital/api.h>
#include <gnuradio/sync_interpolator.h>

namespace gr {
  namespace digital {
    
    /*!
     * \brief Map a stream of unpacked symbol indexes to stream of
     * float or complex constellation points in D dimensions (D = 1 by
     * default) \ingroup converter_blk
     *
     * \details
     * \li input: stream of int
     * \li output: stream of gr_complex
     *
     * \li out[n D + k] = symbol_table[in[n] D + k], k=0,1,...,D-1
     *
     * The combination of gr::blocks::packed_to_unpacked_XX followed
     * by gr::digital::chunks_to_symbols_XY handles the general case
     * of mapping from a stream of bytes or shorts into arbitrary
     * float or complex symbols.
     *
     * \sa gr::blocks::packed_to_unpacked_bb, gr::blocks::unpacked_to_packed_bb,
     * \sa gr::blocks::packed_to_unpacked_ss, gr::blocks::unpacked_to_packed_ss,
     * \sa gr::digital::chunks_to_symbols_bf, gr::digital::chunks_to_symbols_bc.
     * \sa gr::digital::chunks_to_symbols_sf, gr::digital::chunks_to_symbols_sc.
     */
    class DIGITAL_API chunks_to_symbols_ic : virtual public sync_interpolator
    {
    public:
      // gr::digital::chunks_to_symbols_ic::sptr
      typedef boost::shared_ptr<chunks_to_symbols_ic> sptr;

      /*!
       * Make a chunks-to-symbols block.
       *
       * \param symbol_table: list that maps chunks to symbols.
       * \param D: dimension of table.
       */
      static sptr make(const std::vector<gr_complex> &symbol_table, const int D = 1);

      virtual int D() const = 0;
      virtual std::vector<gr_complex> symbol_table() const = 0;
      virtual void set_symbol_table(const std::vector<gr_complex> &symbol_table) =0;
    };

  } /* namespace digital */
} /* namespace gr */

#endif /* INCLUDED_DIGITAL_CHUNKS_TO_SYMBOLS_IC_H */
