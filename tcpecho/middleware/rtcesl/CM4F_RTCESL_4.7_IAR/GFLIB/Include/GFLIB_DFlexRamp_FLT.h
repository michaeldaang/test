/*******************************************************************************
*
 * Copyright (c) 2013 - 2016, Freescale Semiconductor, Inc.
 * Copyright 2016-2021 NXP
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * o Redistributions of source code must retain the above copyright notice, this list
 *   of conditions and the following disclaimer.
 * o Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 *
 * o Neither the name of the copyright holder nor the names of its
 *   contributors may be used to endorse or promote products derived from this
 *   software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
* 
*
****************************************************************************//*!
*
* @brief  Float dynamic flex ramp functions 
* 
*******************************************************************************/
#ifndef _GFLIB_DFLEXRAMP_FLT_H_
#define _GFLIB_DFLEXRAMP_FLT_H_

#if defined(__cplusplus) 
extern "C" { 
#endif 
/******************************************************************************
* Includes
******************************************************************************/
#include "mlib_FP.h"
    
/******************************************************************************
* Macros 
******************************************************************************/
#define GFLIB_DFlexRampInit_FLT_C(fltInitVal, psParam)                                                 \
        GFLIB_DFlexRampInit_FLT_FC(fltInitVal, psParam)
#define GFLIB_DFlexRampCalcIncr_FLT_C(fltTarget, fltDuration, fltIncrSatMot, fltIncrSatGen, psParam)   \
        GFLIB_DFlexRampCalcIncr_FLT_FC(fltTarget, fltDuration, fltIncrSatMot, fltIncrSatGen, psParam)
#define GFLIB_DFlexRamp_FLT_C(fltInstant, pbStopFlagMot, pbStopFlagGen, psParam)                       \
        GFLIB_DFlexRamp_FLT_FC(fltInstant, pbStopFlagMot, pbStopFlagGen, psParam)

/******************************************************************************
* Types
******************************************************************************/
/* Flex dynamic ramp structure */
typedef struct
{
    float_t fltState; 
    float_t fltIncr; 
    float_t fltIncrSatMot;
    float_t fltIncrSatGen;
    float_t fltTarget; 
    float_t fltTs;
    float_t fltIncrMax; 
    bool_t bReachFlag; 
} GFLIB_DFLEXRAMP_T_FLT;

/******************************************************************************
* Exported function prototypes
******************************************************************************/
extern void GFLIB_DFlexRampCalcIncr_FLT_FC(float_t fltTarget,
                                           float_t fltDuration,
                                           float_t fltIncrSatMot,
                                           float_t fltIncrSatGen,
                                           GFLIB_DFLEXRAMP_T_FLT *psParam);

extern float_t GFLIB_DFlexRamp_FLT_FC(float_t fltInstant,
                                      const bool_t *pbStopFlagMot,
                                      const bool_t *pbStopFlagGen,
                                      GFLIB_DFLEXRAMP_T_FLT *psParam);


/******************************************************************************
* Inline functions
******************************************************************************/

/***************************************************************************//*!
*
* @brief  Float dynamic flex ramp initialization
*         
* @param  in  float_t fltInitVal - Measured instant value in float_t
*         
* @param  ptr GFLIB_FLEXRAMP_T_FLT *psParam
*               - fltState: State variable keeping the last state, assigned by GFLIB_DFlexRampInit_FLT
*               - fltIncr: Increment - calculated by GFLIB_DFlexRampCalcIncr_FLT function
*               - fltIncrSatMot: Motor mode saturation mode increment - assigned by user(positive value), 
*                                sign can be changed by GFLIB_DFlexRampCalcIncr_FLT
*               - fltIncrSatGen: Generator mode saturation mode increment - assigned by user(positive value),
*                                sign can be changed by GFLIB_DFlexRampCalcIncr_FLT
*               - fltTarget: Target value - assigned by GFLIB_DFlexRampCalcIncr_FLT function
*               - fltTs: Sample time [s] - assigned by user(positive value)
*               - fltIncrMax: Maximum increment - assigned by user(positive value)
*               - bReachFlag: Flag is set to TRUE if the desired value is achieved
*         
* @return void
*       
* @remarks The initialization value is stored into the fltState variable and the bReachFlag flag is cleared.
*
****************************************************************************/
static inline void GFLIB_DFlexRampInit_FLT_FC(register float_t fltInitVal,
                                              register GFLIB_DFLEXRAMP_T_FLT *psParam)
{
    psParam -> fltState = fltInitVal;
    psParam -> bReachFlag = FALSE;   
}
 
#if defined(__cplusplus) 
} 
#endif 

#endif /* _GFLIB_DFLEXRAMP_FLT_H_ */
