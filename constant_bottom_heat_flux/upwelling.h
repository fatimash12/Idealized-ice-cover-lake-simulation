/*
** svn $Id: upwelling.h 1100 2022-01-06 21:19:26Z arango $
*******************************************************************************
** Copyright (c) 2002-2022 The ROMS/TOMS Group                               **
**   Licensed under a MIT/X style license                                    **
**   See License_ROMS.txt                                                    **
*******************************************************************************
**
** Options for Upwelling Test.
**
** Application flag:   UPWELLING
** Input script:       roms_upwelling.in
*/

#define UV_ADV
#define UV_COR
#undef DJ_GRADPS
#define SPLINES_VDIFF
#define SPLINES_VVISC
#undef UV_SADVECTION
#define NONLIN_EOS
#define ANA_BTFLUX
#define SALINITY
#define SOLVE3D
#define ANA_SMFLUX
#define ANA_STFLUX
#define ANA_SSFLUX
#define ANA_BSFLUX
#define ANA_SPFLUX

#undef ANA_GRID
#undef ANA_INITIAL

#if defined GLS_MIXING || defined MY25_MIXING
# define KANTHA_CLAYSON
# define N2S2_HORAVG
# define RI_SPLINES
#else
# undef ANA_VMIX
#endif
#undef BIO_FENNEL
#if defined BIO_FENNEL  || defined ECOSIM      || \
    defined NEMURO      || defined NPZD_FRANKS || \
    defined NPZD_IRON   || defined NPZD_POWELL 
# define ANA_BIOLOGY
# define ANA_SPFLUX
# define ANA_BPFLUX
# define ANA_SRFLUX
# ifdef NPZD_IRON
#  define IRON_LIMIT
#  define IRON_RELAX
# endif
#endif
#undef NEMURO
#if defined NEMURO
# define HOLLING_GRAZING
# undef  IVLEV_EXPLICIT
#endif

#ifdef BIO_FENNEL
# define CARBON
# define OXYGEN
# define DENITRIFICATION
# define BIO_SEDIMENT
# define DIAGNOSTICS_BIO
#endif
#undef ECOSIM
#ifdef ECOSIM
# define ANA_CLOUD
# define ANA_HUMIDITY
# define ANA_PAIR
# define ANA_TAIR
# define ANA_WINDS
#endif
