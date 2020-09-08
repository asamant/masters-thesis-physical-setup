#include "ni_modelframework.h"
#if defined VXWORKS || defined kNIOSLinux
#define plant2_start_2_3_P             plant2_start_2_3_P DataSection(".NIVS.defaultparams")
#endif

/*
 * plant2_start_2_3_data.cpp
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "plant2_start_2_3".
 *
 * Model version              : 1.8
 * Simulink Coder version : 8.14 (R2018a) 06-Feb-2018
 * C++ source code generated on : Tue Jul  7 13:43:03 2020
 *
 * Target selection: NIVeriStand.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: Intel->x86/Pentium
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */
#include "plant2_start_2_3.h"
#include "plant2_start_2_3_private.h"

/* Block parameters (default storage) */
P_plant2_start_2_3_T plant2_start_2_3_P = {
  /* Computed Parameter: Plant_A
   * Referenced by: '<Root>/Plant'
   */
  { -0.5, 3.5 },

  /* Computed Parameter: Plant_B
   * Referenced by: '<Root>/Plant'
   */
  { 1.0, 1.0 },

  /* Computed Parameter: Plant_C
   * Referenced by: '<Root>/Plant'
   */
  { 1.0, 1.0 },

  /* Expression: [2 3]
   * Referenced by: '<Root>/Plant'
   */
  { 2.0, 3.0 },

  /* Expression: [1.02 -5.62]
   * Referenced by: '<Root>/Feedback gain'
   */
  { 1.02, -5.62 }
};

/*========================================================================*
 * NI VeriStand Model Framework code generation
 *
 * Model : plant2_start_2_3
 * Model version : 1.8
 * VeriStand Model Framework version : 2019.0.0.0 (2019)
 * Source generated on : Tue Jul  7 13:43:02 2020
 *========================================================================*/
#if defined VXWORKS || defined kNIOSLinux

typedef struct {
  int32_t size;
  int32_t width;
  int32_t basetype;
} NI_ParamSizeWidth;

NI_ParamSizeWidth P_plant2_start_2_3_T_sizes[] DataSection(
  ".NIVS.defaultparamsizes") = {
  { sizeof(P_plant2_start_2_3_T), 1 },

  { sizeof(real_T), 2, 0 },

  { sizeof(real_T), 2, 0 },

  { sizeof(real_T), 2, 0 },

  { sizeof(real_T), 2, 0 },

  { sizeof(real_T), 2, 0 },
};

#endif
