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
static const char *ng0 = "/home/hk-47/workspace/xilinx/_domaci/d2/prototype00/prototype00.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_2592010699_sub_207919886985903570_503743352(char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533721142_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3548214264_3212880686_p_0(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB7:    t17 = (t0 + 1512U);
    t18 = *((char **)t17);
    t17 = (t0 + 4280);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t18, 8U);
    xsi_driver_first_trans_fast_port(t17);

LAB2:    t23 = (t0 + 4136);
    *((int *)t23) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t1 = (t0 + 6664U);
    t7 = ieee_p_2592010699_sub_207919886985903570_503743352(IEEE_P_2592010699, t5, t6, t1);
    t8 = (t5 + 12U);
    t9 = *((unsigned int *)t8);
    t10 = (1U * t9);
    t11 = (8U != t10);
    if (t11 == 1)
        goto LAB5;

LAB6:    t12 = (t0 + 4280);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 8U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t10, 0);
    goto LAB6;

LAB8:    goto LAB2;

}

static void work_a_3548214264_3212880686_p_1(char *t0)
{
    char t1[16];
    char t7[16];
    char t15[16];
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(48, ng0);

LAB3:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (7 - 7);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 7;
    t9 = (t8 + 4U);
    *((int *)t9) = 4;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (4 - 7);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 1032U);
    t12 = *((char **)t9);
    t11 = (7 - 3);
    t13 = (t11 * 1U);
    t14 = (0 + t13);
    t9 = (t12 + t14);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 3;
    t17 = (t16 + 4U);
    *((int *)t17) = 0;
    t17 = (t16 + 8U);
    *((int *)t17) = -1;
    t18 = (0 - 3);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t19;
    t17 = ieee_p_3620187407_sub_1496620905533721142_3965413181(IEEE_P_3620187407, t1, t2, t7, t9, t15);
    t20 = (t1 + 12U);
    t19 = *((unsigned int *)t20);
    t21 = (1U * t19);
    t22 = (4U != t21);
    if (t22 == 1)
        goto LAB5;

LAB6:    t23 = (t0 + 4344);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t17, 4U);
    xsi_driver_first_trans_delta(t23, 4U, 4U, 0LL);

LAB2:    t28 = (t0 + 4152);
    *((int *)t28) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t21, 0);
    goto LAB6;

}

static void work_a_3548214264_3212880686_p_2(char *t0)
{
    char t6[16];
    char t14[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (7 - 7);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 7;
    t8 = (t7 + 4U);
    *((int *)t8) = 4;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (4 - 7);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t0 + 1032U);
    t11 = *((char **)t8);
    t10 = (7 - 3);
    t12 = (t10 * 1U);
    t13 = (0 + t12);
    t8 = (t11 + t13);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 3;
    t16 = (t15 + 4U);
    *((int *)t16) = 0;
    t16 = (t15 + 8U);
    *((int *)t16) = -1;
    t17 = (0 - 3);
    t18 = (t17 * -1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    t19 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t1, t6, t8, t14);
    if (t19 != 0)
        goto LAB3;

LAB4:
LAB5:    t24 = (t0 + 4408);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = (unsigned char)3;
    xsi_driver_first_trans_delta(t24, 3U, 1, 0LL);

LAB2:    t29 = (t0 + 4168);
    *((int *)t29) = 1;

LAB1:    return;
LAB3:    t16 = (t0 + 4408);
    t20 = (t16 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)2;
    xsi_driver_first_trans_delta(t16, 3U, 1, 0LL);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_3548214264_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 4472);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 3U);
    xsi_driver_first_trans_delta(t1, 0U, 3U, 0LL);

LAB2:    t7 = (t0 + 4184);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3548214264_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    unsigned char t23;
    char *t24;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned char t37;
    unsigned char t38;
    char *t39;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned char t52;
    unsigned char t53;
    char *t54;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned char t67;
    unsigned char t68;
    char *t69;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned char t82;
    unsigned char t83;
    char *t84;
    char *t86;
    char *t87;
    char *t88;
    char *t89;
    char *t90;
    char *t91;
    char *t92;
    int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned char t97;
    unsigned char t98;
    char *t99;
    char *t101;
    char *t102;
    char *t103;
    char *t104;
    char *t105;
    char *t106;
    char *t107;
    int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned char t112;
    unsigned char t113;
    char *t114;
    char *t116;
    char *t117;
    char *t118;
    char *t119;
    char *t120;
    char *t121;
    char *t123;
    char *t124;
    char *t125;
    char *t126;
    char *t127;
    char *t128;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (0 - 7);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB3;

LAB4:    t16 = (t0 + 1032U);
    t17 = *((char **)t16);
    t18 = (1 - 7);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t16 = (t17 + t21);
    t22 = *((unsigned char *)t16);
    t23 = (t22 == (unsigned char)3);
    if (t23 != 0)
        goto LAB5;

LAB6:    t31 = (t0 + 1032U);
    t32 = *((char **)t31);
    t33 = (2 - 7);
    t34 = (t33 * -1);
    t35 = (1U * t34);
    t36 = (0 + t35);
    t31 = (t32 + t36);
    t37 = *((unsigned char *)t31);
    t38 = (t37 == (unsigned char)3);
    if (t38 != 0)
        goto LAB7;

LAB8:    t46 = (t0 + 1032U);
    t47 = *((char **)t46);
    t48 = (3 - 7);
    t49 = (t48 * -1);
    t50 = (1U * t49);
    t51 = (0 + t50);
    t46 = (t47 + t51);
    t52 = *((unsigned char *)t46);
    t53 = (t52 == (unsigned char)3);
    if (t53 != 0)
        goto LAB9;

LAB10:    t61 = (t0 + 1032U);
    t62 = *((char **)t61);
    t63 = (4 - 7);
    t64 = (t63 * -1);
    t65 = (1U * t64);
    t66 = (0 + t65);
    t61 = (t62 + t66);
    t67 = *((unsigned char *)t61);
    t68 = (t67 == (unsigned char)3);
    if (t68 != 0)
        goto LAB11;

LAB12:    t76 = (t0 + 1032U);
    t77 = *((char **)t76);
    t78 = (5 - 7);
    t79 = (t78 * -1);
    t80 = (1U * t79);
    t81 = (0 + t80);
    t76 = (t77 + t81);
    t82 = *((unsigned char *)t76);
    t83 = (t82 == (unsigned char)3);
    if (t83 != 0)
        goto LAB13;

LAB14:    t91 = (t0 + 1032U);
    t92 = *((char **)t91);
    t93 = (6 - 7);
    t94 = (t93 * -1);
    t95 = (1U * t94);
    t96 = (0 + t95);
    t91 = (t92 + t96);
    t97 = *((unsigned char *)t91);
    t98 = (t97 == (unsigned char)3);
    if (t98 != 0)
        goto LAB15;

LAB16:    t106 = (t0 + 1032U);
    t107 = *((char **)t106);
    t108 = (7 - 7);
    t109 = (t108 * -1);
    t110 = (1U * t109);
    t111 = (0 + t110);
    t106 = (t107 + t111);
    t112 = *((unsigned char *)t106);
    t113 = (t112 == (unsigned char)3);
    if (t113 != 0)
        goto LAB17;

LAB18:
LAB19:    t121 = (t0 + 6780);
    t123 = (t0 + 4536);
    t124 = (t123 + 56U);
    t125 = *((char **)t124);
    t126 = (t125 + 56U);
    t127 = *((char **)t126);
    memcpy(t127, t121, 3U);
    xsi_driver_first_trans_fast(t123);

LAB2:    t128 = (t0 + 4200);
    *((int *)t128) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 6756);
    t11 = (t0 + 4536);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t9, 3U);
    xsi_driver_first_trans_fast(t11);
    goto LAB2;

LAB5:    t24 = (t0 + 6759);
    t26 = (t0 + 4536);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t24, 3U);
    xsi_driver_first_trans_fast(t26);
    goto LAB2;

LAB7:    t39 = (t0 + 6762);
    t41 = (t0 + 4536);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memcpy(t45, t39, 3U);
    xsi_driver_first_trans_fast(t41);
    goto LAB2;

LAB9:    t54 = (t0 + 6765);
    t56 = (t0 + 4536);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    t59 = (t58 + 56U);
    t60 = *((char **)t59);
    memcpy(t60, t54, 3U);
    xsi_driver_first_trans_fast(t56);
    goto LAB2;

LAB11:    t69 = (t0 + 6768);
    t71 = (t0 + 4536);
    t72 = (t71 + 56U);
    t73 = *((char **)t72);
    t74 = (t73 + 56U);
    t75 = *((char **)t74);
    memcpy(t75, t69, 3U);
    xsi_driver_first_trans_fast(t71);
    goto LAB2;

LAB13:    t84 = (t0 + 6771);
    t86 = (t0 + 4536);
    t87 = (t86 + 56U);
    t88 = *((char **)t87);
    t89 = (t88 + 56U);
    t90 = *((char **)t89);
    memcpy(t90, t84, 3U);
    xsi_driver_first_trans_fast(t86);
    goto LAB2;

LAB15:    t99 = (t0 + 6774);
    t101 = (t0 + 4536);
    t102 = (t101 + 56U);
    t103 = *((char **)t102);
    t104 = (t103 + 56U);
    t105 = *((char **)t104);
    memcpy(t105, t99, 3U);
    xsi_driver_first_trans_fast(t101);
    goto LAB2;

LAB17:    t114 = (t0 + 6777);
    t116 = (t0 + 4536);
    t117 = (t116 + 56U);
    t118 = *((char **)t117);
    t119 = (t118 + 56U);
    t120 = *((char **)t119);
    memcpy(t120, t114, 3U);
    xsi_driver_first_trans_fast(t116);
    goto LAB2;

LAB20:    goto LAB2;

}


extern void work_a_3548214264_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3548214264_3212880686_p_0,(void *)work_a_3548214264_3212880686_p_1,(void *)work_a_3548214264_3212880686_p_2,(void *)work_a_3548214264_3212880686_p_3,(void *)work_a_3548214264_3212880686_p_4};
	xsi_register_didat("work_a_3548214264_3212880686", "isim/prototype00_tb_isim_beh.exe.sim/work/a_3548214264_3212880686.didat");
	xsi_register_executes(pe);
}
