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
static const char *ng0 = "/home/hk-47/workspace/xilinx/v12/z01/instr_rom.vhd";



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
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;

LAB0:    t1 = (t0 + 2504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 4916);
    t5 = xsi_mem_cmp(t2, t3, 5U);
    if (t5 == 1)
        goto LAB5;

LAB19:    t6 = (t0 + 4921);
    t8 = xsi_mem_cmp(t6, t3, 5U);
    if (t8 == 1)
        goto LAB6;

LAB20:    t9 = (t0 + 4926);
    t11 = xsi_mem_cmp(t9, t3, 5U);
    if (t11 == 1)
        goto LAB7;

LAB21:    t12 = (t0 + 4931);
    t14 = xsi_mem_cmp(t12, t3, 5U);
    if (t14 == 1)
        goto LAB8;

LAB22:    t15 = (t0 + 4936);
    t17 = xsi_mem_cmp(t15, t3, 5U);
    if (t17 == 1)
        goto LAB9;

LAB23:    t18 = (t0 + 4941);
    t20 = xsi_mem_cmp(t18, t3, 5U);
    if (t20 == 1)
        goto LAB10;

LAB24:    t21 = (t0 + 4946);
    t23 = xsi_mem_cmp(t21, t3, 5U);
    if (t23 == 1)
        goto LAB11;

LAB25:    t24 = (t0 + 4951);
    t26 = xsi_mem_cmp(t24, t3, 5U);
    if (t26 == 1)
        goto LAB12;

LAB26:    t27 = (t0 + 4956);
    t29 = xsi_mem_cmp(t27, t3, 5U);
    if (t29 == 1)
        goto LAB13;

LAB27:    t30 = (t0 + 4961);
    t32 = xsi_mem_cmp(t30, t3, 5U);
    if (t32 == 1)
        goto LAB14;

LAB28:    t33 = (t0 + 4966);
    t35 = xsi_mem_cmp(t33, t3, 5U);
    if (t35 == 1)
        goto LAB15;

LAB29:    t36 = (t0 + 4971);
    t38 = xsi_mem_cmp(t36, t3, 5U);
    if (t38 == 1)
        goto LAB16;

LAB30:    t39 = (t0 + 4976);
    t41 = xsi_mem_cmp(t39, t3, 5U);
    if (t41 == 1)
        goto LAB17;

LAB31:
LAB18:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5176);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);

LAB4:    xsi_set_current_line(43, ng0);

LAB35:    t2 = (t0 + 3072);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB36;

LAB1:    return;
LAB5:    xsi_set_current_line(44, ng0);
    t42 = (t0 + 4981);
    t44 = (t0 + 3168);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    t47 = (t46 + 56U);
    t48 = *((char **)t47);
    memcpy(t48, t42, 15U);
    xsi_driver_first_trans_fast(t44);
    goto LAB4;

LAB6:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 4996);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5011);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5026);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5041);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5056);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB11:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5071);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB12:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5086);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB13:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5101);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB14:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5116);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB15:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5131);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB16:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5146);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB17:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 5161);
    t4 = (t0 + 3168);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 15U);
    xsi_driver_first_trans_fast(t4);
    goto LAB4;

LAB32:;
LAB33:    t3 = (t0 + 3072);
    *((int *)t3) = 0;
    goto LAB2;

LAB34:    goto LAB33;

LAB36:    goto LAB34;

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

LAB0:    xsi_set_current_line(59, ng0);

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
	xsi_register_didat("work_a_0846763535_3212880686", "isim/z01_tb_isim_beh.exe.sim/work/a_0846763535_3212880686.didat");
	xsi_register_executes(pe);
}
