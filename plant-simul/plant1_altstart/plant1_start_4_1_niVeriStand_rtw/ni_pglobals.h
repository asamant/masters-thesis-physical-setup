/*========================================================================*
 * NI VeriStand Model Framework code generation
 *
 * Model : plant1_start_4_1
 * Model version : 1.22
 * VeriStand Model Framework version : 2019.0.0.0 (2019)
 * Source generated on : Tue Jul  7 13:42:14 2020
 *========================================================================*/

/*
 * Note:
 *   This file was generated by the main model, plant1_start_4_1.
 *   This file redirects parameter references to the NI VeriStand rtParameter buffer.
 *
 *   In a model reference configuration, this file defines the globally shared parameter structure
 *   across all model references. All models must share the same type definition for proper execution.
 *
 */
#if !defined(_DEFINED_TYPEDEF_FOR_niUrtParametersTypeDef_)
#define _DEFINED_TYPEDEF_FOR_niUrtParametersTypeDef_
#include "plant1_start_4_1_types.h"

/* Parameters typedef identifier */
#define NI_PARAM_TYPEDEF               P_plant1_start_4_1_T
#endif

#if defined(_NI_DEFINE_PARAMS_DBL_BUFFER_)
#undef _NI_DEFINE_PARAMS_DBL_BUFFER_
#ifdef MULTITASKING
#define NI_PARAM_BUFF                  (*param_lookup[tid][READSIDE])
#else
#define NI_PARAM_BUFF                  rtParameter[READSIDE]
#endif

#define plant1_start_4_1_P             NI_PARAM_BUFF
#elif defined(_NI_UNDEFINE_PARAMS_DBL_BUFFER_)
#undef _NI_UNDEFINE_PARAMS_DBL_BUFFER_
#undef plant1_start_4_1_P
#endif