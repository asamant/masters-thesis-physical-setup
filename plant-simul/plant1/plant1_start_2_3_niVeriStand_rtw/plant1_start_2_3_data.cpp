#include "ni_modelframework.h"
#if defined VXWORKS || defined kNIOSLinux
#define plant1_start_2_3_P             plant1_start_2_3_P DataSection(".NIVS.defaultparams")
#endif

/*
 * plant1_start_2_3_data.cpp
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "plant1_start_2_3".
 *
 * Model version              : 1.21
 * Simulink Coder version : 8.14 (R2018a) 06-Feb-2018
 * C++ source code generated on : Tue Jul  7 13:43:35 2020
 *
 * Target selection: NIVeriStand.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: Intel->x86/Pentium
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */
#include "plant1_start_2_3.h"
#include "plant1_start_2_3_private.h"

/* Block parameters (default storage) */
P_plant1_start_2_3_T plant1_start_2_3_P = {
  /* Computed Parameter: Plant_A
   * Referenced by: '<Root>/Plant'
   */
  { 1.0, -2.0, 3.0 },

  /* Computed Parameter: Plant_B
   * Referenced by: '<Root>/Plant'
   */
  1.0,

  /* Computed Parameter: Plant_C
   * Referenced by: '<Root>/Plant'
   */
  { 1.0, 1.0 },

  /* Expression: [2 3]
   * Referenced by: '<Root>/Plant'
   */
  { 2.0, 3.0 },

  /* Expression: [1 -4]
   * Referenced by: '<Root>/Feeback input'
   */
  { 1.0, -4.0 }
};

/*========================================================================*
 * NI VeriStand Model Framework code generation
 *
 * Model : plant1_start_2_3
 * Model version : 1.21
 * VeriStand Model Framework version : 2019.0.0.0 (2019)
 * Source generated on : Tue Jul  7 13:43:34 2020
 *========================================================================*/
#if defined VXWORKS || defined kNIOSLinux

typedef struct {
  int32_t size;
  int32_t width;
  int32_t basetype;
} NI_ParamSizeWidth;

NI_ParamSizeWidth P_plant1_start_2_3_T_sizes[] DataSection(
  ".NIVS.defaultparamsizes") = {
  { sizeof(P_plant1_start_2_3_T), 1 },

  { sizeof(real_T), 3, 0 },

  { sizeof(real_T), 1, 0 },

  { sizeof(real_T), 2, 0 },

  { sizeof(real_T), 2, 0 },

  { sizeof(real_T), 2, 0 },
};

#endif
