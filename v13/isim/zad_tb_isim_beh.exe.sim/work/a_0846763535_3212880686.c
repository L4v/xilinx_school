/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/hk-47/workspace/xilinx/v13/instr_rom.vhd";



static void work_a_0846763535_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    int t35;
    char *t36;
    int t38;
    char *t39;
    int t41;
    char *t42;
    int t44;
    char *t45;
    int t47;
    char *t48;
    int t50;
    char *t51;
    int t53;
    char *t54;
    int t56;
    char *t57;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;

LAB0:    t1 = (t0 + 2504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 4884);
    t5 = xsi_mem_cmp(t2, t3, 5U);
    if (t5 == 1)
        goto LAB5;

LAB24:    t6 = (t0 + 4889);
    t8 = xsi_mem_cmp(t6, t3, 5U);
    if (t8 == 1)
        goto LAB6;

LAB25:    t9 = (t0 + 4894);
    t11 = xsi_mem_cmp(t9, t3, 5U);
    if (t11 == 1)
        goto LAB7;

LAB26:    t12 = (t0 + 4899);
    t14 = xsi_mem_cmp(t12, t3, 5U);
    if (t14 == 1)
        goto LAB8;

LAB27:    t15 = (t0 + 4904);
    t17 = xsi_mem_cmp(t15, t3, 5U);
    if (t17 == 1)
        goto LAB9;

LAB28:    t18 = (t0 + 4909);
    t20 = xsi_mem_cmp(t18, t3, 5U);
    if (t20 == 1)
        goto LAB10;

LAB29:    t21 = (t0 + 4914);
    t23 = xsi_mem_cmp(t21, t3, 5U);
    if (t23 == 1)
        goto LAB11;

LAB30:    t24 = (t0 + 4919);
    t26 = xsi_mem_cmp(t24, t3, 5U);
    if (t26 == 1)
        goto LAB12;

LAB31:    t27 = (t0 + 4924);
    t29 = xsi_mem_cmp(t27, t3, 5U);
    if (t29 == 1)
        goto LAB13;

LAB32:    t30 = (t0 + 4929);
    t32 = xsi_mem_cmp(t30, t3, 5U);
    if (t32 == 1)
        goto LAB14;

LAB33:    t33 = (t0 + 4934);
    t35 = xsi_mem_cmp(t33, t3, 5U);
    if (t35 == 1)
        goto LAB15;

LAB34:    t36 = (t0 + 4939);
    t38 = xsi_mem_cmp(t36, t3, 5U);
    if (t38 == 1)
        goto LAB16;

LAB35:    t39 = (t0 + 4944);
    t41 = xsi_mem_cmp(t39, t3, 5U);
    if (t41 == 1)
        goto LAB17;

LAB36:    t42 = (t0 + 4949);
    t44 = xsi_mem_cmp(t42, t3, 5U);
    if (t44 == 1)
        goto LAB18;

LAB37:    t45 = (t0 + 4954);
    t47 = xsi_mem_cmp(t45, t3, 5U);
    if (t47 == 1)
        goto LAB19;

LAB38:    t48 = (t0 + 4959);
    t50 = xsi_mem_cmp(t48, t3, 5U);
    if (t50 == 1)
        goto LAB20;

LAB39:    t51 = (t0 + 4964);
    t53 = xsi_mem_cmp(t51, t3, 5U);
    if (t53 == 1)
        goto LAB21;

LAB40:    t54 = (t0 + 4969);
    t56 = xsi_mem_cmp(t54, t3, 5U);
    if (t56 == 1)
        goto LAB22;

LAB41:
LAB23:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5244);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);

LAB4:    xsi_set_current_line(43, ng0);

LAB45:    t2 = (t0 + 3072);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB46;

LAB1:    return;
LAB5:    xsi_set_current_line(44, ng0);
    t57 = (t0 + 4974);
    t59 = (t0 + 3168);
    t60 = (t59 + 56U);
    t61 = *((char **)t60);
    t62 = (t61 + 56U);
    t63 = *((char **)t62);
    memcpy(t63, t57, 15U);
    xsi_driver_first_trans_fast(t59);
    goto LAB4;

LAB6:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 4989);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5004);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5019);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5034);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5049);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB11:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5064);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB12:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5079);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB13:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5094);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB14:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5109);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB15:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5124);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB16:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5139);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB17:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5154);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB18:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5169);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB19:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5184);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB20:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5199);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB21:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5214);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB22:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5229);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB42:;
LAB43:    t3 = (t0 + 3072);
    *((int *)t3) = 0;
    goto LAB2;

LAB44:    goto LAB43;

LAB46:    goto LAB44;

}

static void work_a_0846763535_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(64, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 3232);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 15U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3088);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0846763535_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0846763535_3212880686_p_0,(void *)work_a_0846763535_3212880686_p_1};
	xsi_register_didat("work_a_0846763535_3212880686", "isim/zad_tb_isim_beh.exe.sim/work/a_0846763535_3212880686.didat");
	xsi_register_executes(pe);
}
