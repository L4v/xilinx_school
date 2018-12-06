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
static const char *ng0 = "/home/hk-47/workspace/xilinx/_domaci/d3/prototype00/prototype00.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );
char *ieee_p_3620187407_sub_2255506239096166994_3965413181(char *, char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_970019341842465249_3965413181(char *, char *, char *, int );


static void work_a_3548214264_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5096);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 8409);
    t6 = (t0 + 5240);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 25U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 5304);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2152U);
    t6 = *((char **)t2);
    t2 = (t0 + 5240);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 25U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5304);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t3;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB7:    t2 = (t0 + 2632U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

}

static void work_a_3548214264_3212880686_p_1(char *t0)
{
    char t12[16];
    char *t1;
    char *t2;
    int t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t13;
    unsigned int t14;

LAB0:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 8288U);
    t3 = (24 - 1);
    t4 = ieee_p_3620187407_sub_970019341842465249_3965413181(IEEE_P_3620187407, t2, t1, t3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 5432);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 8288U);
    t5 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t12, t2, t1, 1);
    t6 = (t12 + 12U);
    t13 = *((unsigned int *)t6);
    t14 = (1U * t13);
    t4 = (25U != t14);
    if (t4 == 1)
        goto LAB5;

LAB6:    t7 = (t0 + 5368);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 25U);
    xsi_driver_first_trans_fast(t7);

LAB3:    t1 = (t0 + 5112);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(63, ng0);
    t5 = (t0 + 8434);
    t7 = (t0 + 5368);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 25U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 5432);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_size_not_matching(25U, t14, 0);
    goto LAB6;

}

static void work_a_3548214264_3212880686_p_2(char *t0)
{
    char t20[16];
    char t21[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t22;
    char *t23;
    int t24;
    unsigned int t25;
    unsigned char t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5128);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 8459);
    t6 = (t0 + 5496);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 1992U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t11 = (t4 == (unsigned char)3);
    if (t11 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5496);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 2472U);
    t6 = *((char **)t2);
    t12 = (0 - 7);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t2 = (t6 + t15);
    t16 = *((unsigned char *)t2);
    t7 = (t0 + 2472U);
    t8 = *((char **)t7);
    t17 = (7 - 7);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t7 = (t8 + t19);
    t10 = ((IEEE_P_2592010699) + 4000);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 7;
    t23 = (t22 + 4U);
    *((int *)t23) = 1;
    t23 = (t22 + 8U);
    *((int *)t23) = -1;
    t24 = (1 - 7);
    t25 = (t24 * -1);
    t25 = (t25 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t25;
    t9 = xsi_base_array_concat(t9, t20, t10, (char)99, t16, (char)97, t7, t21, (char)101);
    t25 = (1U + 7U);
    t26 = (8U != t25);
    if (t26 == 1)
        goto LAB10;

LAB11:    t23 = (t0 + 5496);
    t27 = (t23 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t9, 8U);
    xsi_driver_first_trans_fast(t23);
    goto LAB8;

LAB10:    xsi_size_not_matching(8U, t25, 0);
    goto LAB11;

}

static void work_a_3548214264_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;

LAB0:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 5144);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 5560);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t9 = (t4 == (unsigned char)2);
    if (t9 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB10;

LAB12:
LAB11:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 5560);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB10:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t9 = *((unsigned char *)t5);
    t11 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t9);
    t1 = (t0 + 5560);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = t11;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

}

static void work_a_3548214264_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(101, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5624);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5160);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3548214264_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3548214264_3212880686_p_0,(void *)work_a_3548214264_3212880686_p_1,(void *)work_a_3548214264_3212880686_p_2,(void *)work_a_3548214264_3212880686_p_3,(void *)work_a_3548214264_3212880686_p_4};
	xsi_register_didat("work_a_3548214264_3212880686", "isim/prototype00_tb_isim_beh.exe.sim/work/a_3548214264_3212880686.didat");
	xsi_register_executes(pe);
}
