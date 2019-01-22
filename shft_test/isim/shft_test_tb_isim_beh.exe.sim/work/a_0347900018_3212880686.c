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
static const char *ng0 = "/home/hk-47/workspace/xilinx/shft_test/shft_test.vhd";
extern char *IEEE_P_2592010699;



static void work_a_0347900018_3212880686_p_0(char *t0)
{
    char t21[16];
    char t29[16];
    char t31[16];
    char t36[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    char *t20;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t30;
    char *t32;
    char *t33;
    int t34;
    unsigned int t35;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned char t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;

LAB0:    t1 = (t0 + 2984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 6395);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t5 = (0 - 15);
    t9 = (t5 * -1);
    t10 = (1U * t9);
    t11 = (0 + t10);
    t2 = (t3 + t11);
    t12 = *((unsigned char *)t2);
    t4 = (t0 + 1032U);
    t6 = *((char **)t4);
    t8 = (15 - 15);
    t16 = (t8 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t4 = (t6 + t18);
    t19 = *((unsigned char *)t4);
    t13 = ((IEEE_P_2592010699) + 4000);
    t7 = xsi_base_array_concat(t7, t21, t13, (char)99, t12, (char)99, t19, (char)101);
    t14 = (t0 + 1032U);
    t20 = *((char **)t14);
    t25 = (15 - 15);
    t26 = (t25 * 1U);
    t27 = (0 + t26);
    t14 = (t20 + t27);
    t23 = ((IEEE_P_2592010699) + 4000);
    t24 = (t31 + 0U);
    t28 = (t24 + 0U);
    *((int *)t28) = 15;
    t28 = (t24 + 4U);
    *((int *)t28) = 1;
    t28 = (t24 + 8U);
    *((int *)t28) = -1;
    t15 = (1 - 15);
    t35 = (t15 * -1);
    t35 = (t35 + 1);
    t28 = (t24 + 12U);
    *((unsigned int *)t28) = t35;
    t22 = xsi_base_array_concat(t22, t29, t23, (char)97, t7, t21, (char)97, t14, t31, (char)101);
    t35 = (1U + 1U);
    t38 = (t35 + 15U);
    t40 = (17U != t38);
    if (t40 == 1)
        goto LAB11;

LAB12:    t28 = (t0 + 4176);
    t30 = (t28 + 56U);
    t32 = *((char **)t30);
    t33 = (t32 + 56U);
    t37 = *((char **)t33);
    memcpy(t37, t22, 17U);
    xsi_driver_first_trans_fast(t28);

LAB4:    xsi_set_current_line(46, ng0);

LAB15:    t2 = (t0 + 4048);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB16;

LAB1:    return;
LAB5:    xsi_set_current_line(47, ng0);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t8 = (14 - 15);
    t9 = (t8 * -1);
    t10 = (1U * t9);
    t11 = (0 + t10);
    t6 = (t7 + t11);
    t12 = *((unsigned char *)t6);
    t13 = (t0 + 1032U);
    t14 = *((char **)t13);
    t15 = (15 - 15);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t13 = (t14 + t18);
    t19 = *((unsigned char *)t13);
    t22 = ((IEEE_P_2592010699) + 4000);
    t20 = xsi_base_array_concat(t20, t21, t22, (char)99, t12, (char)99, t19, (char)101);
    t23 = (t0 + 1032U);
    t24 = *((char **)t23);
    t25 = (15 - 13);
    t26 = (t25 * 1U);
    t27 = (0 + t26);
    t23 = (t24 + t27);
    t30 = ((IEEE_P_2592010699) + 4000);
    t32 = (t31 + 0U);
    t33 = (t32 + 0U);
    *((int *)t33) = 13;
    t33 = (t32 + 4U);
    *((int *)t33) = 0;
    t33 = (t32 + 8U);
    *((int *)t33) = -1;
    t34 = (0 - 13);
    t35 = (t34 * -1);
    t35 = (t35 + 1);
    t33 = (t32 + 12U);
    *((unsigned int *)t33) = t35;
    t28 = xsi_base_array_concat(t28, t29, t30, (char)97, t20, t21, (char)97, t23, t31, (char)101);
    t37 = ((IEEE_P_2592010699) + 4000);
    t33 = xsi_base_array_concat(t33, t36, t37, (char)97, t28, t29, (char)99, (unsigned char)2, (char)101);
    t35 = (1U + 1U);
    t38 = (t35 + 14U);
    t39 = (t38 + 1U);
    t40 = (17U != t39);
    if (t40 == 1)
        goto LAB9;

LAB10:    t41 = (t0 + 4176);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memcpy(t45, t33, 17U);
    xsi_driver_first_trans_fast(t41);
    goto LAB4;

LAB8:;
LAB9:    xsi_size_not_matching(17U, t39, 0);
    goto LAB10;

LAB11:    xsi_size_not_matching(17U, t38, 0);
    goto LAB12;

LAB13:    t3 = (t0 + 4048);
    *((int *)t3) = 0;
    goto LAB2;

LAB14:    goto LAB13;

LAB16:    goto LAB14;

}

static void work_a_0347900018_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (16 - 15);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 4240);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 4064);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0347900018_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (15 - 16);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4304);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4080);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0347900018_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (16 - 16);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4368);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4096);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0347900018_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0347900018_3212880686_p_0,(void *)work_a_0347900018_3212880686_p_1,(void *)work_a_0347900018_3212880686_p_2,(void *)work_a_0347900018_3212880686_p_3};
	xsi_register_didat("work_a_0347900018_3212880686", "isim/shft_test_tb_isim_beh.exe.sim/work/a_0347900018_3212880686.didat");
	xsi_register_executes(pe);
}
