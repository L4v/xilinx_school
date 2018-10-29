<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_5" />
        <signal name="iA0" />
        <signal name="iB0" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="oS0" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="oS1" />
        <signal name="iA1" />
        <signal name="iB1" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="oS2" />
        <signal name="iA2" />
        <signal name="iB2" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="oS3" />
        <signal name="iA3" />
        <signal name="iB3" />
        <signal name="XLXN_46" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="oC" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <port polarity="Input" name="iA0" />
        <port polarity="Input" name="iB0" />
        <port polarity="Output" name="oS0" />
        <port polarity="Output" name="oS1" />
        <port polarity="Input" name="iA1" />
        <port polarity="Input" name="iB1" />
        <port polarity="Output" name="oS2" />
        <port polarity="Input" name="iA2" />
        <port polarity="Input" name="iB2" />
        <port polarity="Output" name="oS3" />
        <port polarity="Input" name="iA3" />
        <port polarity="Input" name="iB3" />
        <port polarity="Output" name="oC" />
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="iB0" name="I0" />
            <blockpin signalname="iA0" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="XLXN_57" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="oS0" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_57" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="iB0" name="I0" />
            <blockpin signalname="iA0" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="XLXN_9" name="I0" />
            <blockpin signalname="XLXN_10" name="I1" />
            <blockpin signalname="XLXN_55" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_11">
            <blockpin signalname="iB1" name="I0" />
            <blockpin signalname="iA1" name="I1" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_12">
            <blockpin signalname="XLXN_55" name="I0" />
            <blockpin signalname="XLXN_32" name="I1" />
            <blockpin signalname="oS1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_13">
            <blockpin signalname="XLXN_55" name="I0" />
            <blockpin signalname="XLXN_32" name="I1" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="iB1" name="I0" />
            <blockpin signalname="iA1" name="I1" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_15">
            <blockpin signalname="XLXN_27" name="I0" />
            <blockpin signalname="XLXN_26" name="I1" />
            <blockpin signalname="XLXN_52" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_16">
            <blockpin signalname="iB2" name="I0" />
            <blockpin signalname="iA2" name="I1" />
            <blockpin signalname="XLXN_39" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_17">
            <blockpin signalname="XLXN_52" name="I0" />
            <blockpin signalname="XLXN_39" name="I1" />
            <blockpin signalname="oS2" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_18">
            <blockpin signalname="XLXN_52" name="I0" />
            <blockpin signalname="XLXN_39" name="I1" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_19">
            <blockpin signalname="iB2" name="I0" />
            <blockpin signalname="iA2" name="I1" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_20">
            <blockpin signalname="XLXN_34" name="I0" />
            <blockpin signalname="XLXN_33" name="I1" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_21">
            <blockpin signalname="iB3" name="I0" />
            <blockpin signalname="iA3" name="I1" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_22">
            <blockpin signalname="XLXN_53" name="I0" />
            <blockpin signalname="XLXN_46" name="I1" />
            <blockpin signalname="oS3" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_23">
            <blockpin signalname="XLXN_53" name="I0" />
            <blockpin signalname="XLXN_46" name="I1" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_24">
            <blockpin signalname="iB3" name="I0" />
            <blockpin signalname="iA3" name="I1" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_25">
            <blockpin signalname="XLXN_41" name="I0" />
            <blockpin signalname="XLXN_40" name="I1" />
            <blockpin signalname="oC" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_26">
            <blockpin signalname="XLXN_57" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="256" y="304" name="XLXI_1" orien="R0" />
        <instance x="736" y="336" name="XLXI_2" orien="R0" />
        <instance x="608" y="592" name="XLXI_3" orien="R0" />
        <instance x="320" y="784" name="XLXI_4" orien="R0" />
        <instance x="960" y="704" name="XLXI_5" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="592" y1="208" y2="208" x1="512" />
            <wire x2="736" y1="208" y2="208" x1="592" />
            <wire x2="592" y1="208" y2="464" x1="592" />
            <wire x2="608" y1="464" y2="464" x1="592" />
        </branch>
        <branch name="iA0">
            <wire x2="208" y1="176" y2="176" x1="80" />
            <wire x2="256" y1="176" y2="176" x1="208" />
            <wire x2="208" y1="176" y2="656" x1="208" />
            <wire x2="320" y1="656" y2="656" x1="208" />
        </branch>
        <branch name="iB0">
            <wire x2="176" y1="240" y2="240" x1="80" />
            <wire x2="256" y1="240" y2="240" x1="176" />
            <wire x2="176" y1="240" y2="720" x1="176" />
            <wire x2="320" y1="720" y2="720" x1="176" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="768" y1="688" y2="688" x1="576" />
            <wire x2="768" y1="640" y2="688" x1="768" />
            <wire x2="960" y1="640" y2="640" x1="768" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="912" y1="496" y2="496" x1="864" />
            <wire x2="912" y1="496" y2="576" x1="912" />
            <wire x2="960" y1="576" y2="576" x1="912" />
        </branch>
        <branch name="oS0">
            <wire x2="1152" y1="240" y2="240" x1="992" />
        </branch>
        <iomarker fontsize="28" x="80" y="176" name="iA0" orien="R180" />
        <iomarker fontsize="28" x="80" y="240" name="iB0" orien="R180" />
        <iomarker fontsize="28" x="1152" y="240" name="oS0" orien="R0" />
        <branch name="XLXN_26">
            <wire x2="2240" y1="432" y2="432" x1="2176" />
            <wire x2="2240" y1="432" y2="512" x1="2240" />
            <wire x2="2304" y1="512" y2="512" x1="2240" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="2160" y1="640" y2="640" x1="2032" />
            <wire x2="2160" y1="576" y2="640" x1="2160" />
            <wire x2="2304" y1="576" y2="576" x1="2160" />
        </branch>
        <branch name="oS1">
            <wire x2="2496" y1="160" y2="160" x1="2352" />
        </branch>
        <branch name="iA1">
            <wire x2="1552" y1="96" y2="96" x1="1472" />
            <wire x2="1584" y1="96" y2="96" x1="1552" />
            <wire x2="1552" y1="96" y2="608" x1="1552" />
            <wire x2="1776" y1="608" y2="608" x1="1552" />
        </branch>
        <branch name="iB1">
            <wire x2="1536" y1="160" y2="160" x1="1472" />
            <wire x2="1584" y1="160" y2="160" x1="1536" />
            <wire x2="1536" y1="160" y2="672" x1="1536" />
            <wire x2="1776" y1="672" y2="672" x1="1536" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="1936" y1="128" y2="128" x1="1840" />
            <wire x2="2096" y1="128" y2="128" x1="1936" />
            <wire x2="1936" y1="128" y2="320" x1="1936" />
            <wire x2="1840" y1="320" y2="400" x1="1840" />
            <wire x2="1920" y1="400" y2="400" x1="1840" />
            <wire x2="1936" y1="320" y2="320" x1="1840" />
        </branch>
        <instance x="1584" y="224" name="XLXI_11" orien="R0" />
        <instance x="2096" y="256" name="XLXI_12" orien="R0" />
        <instance x="1920" y="528" name="XLXI_13" orien="R0" />
        <instance x="1776" y="736" name="XLXI_14" orien="R0" />
        <instance x="2304" y="640" name="XLXI_15" orien="R0" />
        <branch name="XLXN_33">
            <wire x2="3392" y1="448" y2="448" x1="3328" />
            <wire x2="3392" y1="448" y2="528" x1="3392" />
            <wire x2="3456" y1="528" y2="528" x1="3392" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="3312" y1="656" y2="656" x1="3184" />
            <wire x2="3312" y1="592" y2="656" x1="3312" />
            <wire x2="3456" y1="592" y2="592" x1="3312" />
        </branch>
        <branch name="oS2">
            <wire x2="3696" y1="176" y2="176" x1="3504" />
        </branch>
        <branch name="iA2">
            <wire x2="2704" y1="112" y2="112" x1="2624" />
            <wire x2="2736" y1="112" y2="112" x1="2704" />
            <wire x2="2704" y1="112" y2="624" x1="2704" />
            <wire x2="2928" y1="624" y2="624" x1="2704" />
        </branch>
        <branch name="iB2">
            <wire x2="2688" y1="176" y2="176" x1="2624" />
            <wire x2="2736" y1="176" y2="176" x1="2688" />
            <wire x2="2688" y1="176" y2="688" x1="2688" />
            <wire x2="2928" y1="688" y2="688" x1="2688" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="3088" y1="144" y2="144" x1="2992" />
            <wire x2="3248" y1="144" y2="144" x1="3088" />
            <wire x2="3088" y1="144" y2="336" x1="3088" />
            <wire x2="2992" y1="336" y2="416" x1="2992" />
            <wire x2="3072" y1="416" y2="416" x1="2992" />
            <wire x2="3088" y1="336" y2="336" x1="2992" />
        </branch>
        <instance x="2736" y="240" name="XLXI_16" orien="R0" />
        <instance x="3248" y="272" name="XLXI_17" orien="R0" />
        <instance x="3072" y="544" name="XLXI_18" orien="R0" />
        <instance x="2928" y="752" name="XLXI_19" orien="R0" />
        <instance x="3456" y="656" name="XLXI_20" orien="R0" />
        <branch name="XLXN_40">
            <wire x2="4576" y1="464" y2="464" x1="4512" />
            <wire x2="4576" y1="464" y2="544" x1="4576" />
            <wire x2="4640" y1="544" y2="544" x1="4576" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="4496" y1="672" y2="672" x1="4368" />
            <wire x2="4496" y1="608" y2="672" x1="4496" />
            <wire x2="4640" y1="608" y2="608" x1="4496" />
        </branch>
        <branch name="oS3">
            <wire x2="4880" y1="192" y2="192" x1="4688" />
        </branch>
        <branch name="iA3">
            <wire x2="3888" y1="128" y2="128" x1="3808" />
            <wire x2="3920" y1="128" y2="128" x1="3888" />
            <wire x2="3888" y1="128" y2="640" x1="3888" />
            <wire x2="4112" y1="640" y2="640" x1="3888" />
        </branch>
        <branch name="iB3">
            <wire x2="3872" y1="192" y2="192" x1="3808" />
            <wire x2="3920" y1="192" y2="192" x1="3872" />
            <wire x2="3872" y1="192" y2="704" x1="3872" />
            <wire x2="4112" y1="704" y2="704" x1="3872" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="4272" y1="160" y2="160" x1="4176" />
            <wire x2="4432" y1="160" y2="160" x1="4272" />
            <wire x2="4272" y1="160" y2="352" x1="4272" />
            <wire x2="4176" y1="352" y2="432" x1="4176" />
            <wire x2="4256" y1="432" y2="432" x1="4176" />
            <wire x2="4272" y1="352" y2="352" x1="4176" />
        </branch>
        <instance x="3920" y="256" name="XLXI_21" orien="R0" />
        <instance x="4432" y="288" name="XLXI_22" orien="R0" />
        <instance x="4256" y="560" name="XLXI_23" orien="R0" />
        <instance x="4112" y="768" name="XLXI_24" orien="R0" />
        <instance x="4640" y="672" name="XLXI_25" orien="R0" />
        <iomarker fontsize="28" x="1472" y="96" name="iA1" orien="R180" />
        <iomarker fontsize="28" x="1472" y="160" name="iB1" orien="R180" />
        <branch name="XLXN_52">
            <wire x2="2816" y1="544" y2="544" x1="2560" />
            <wire x2="2816" y1="480" y2="544" x1="2816" />
            <wire x2="3008" y1="480" y2="480" x1="2816" />
            <wire x2="3072" y1="480" y2="480" x1="3008" />
            <wire x2="3248" y1="208" y2="208" x1="3008" />
            <wire x2="3008" y1="208" y2="480" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="2624" y="112" name="iA2" orien="R180" />
        <iomarker fontsize="28" x="2496" y="160" name="oS1" orien="R0" />
        <iomarker fontsize="28" x="2624" y="176" name="iB2" orien="R180" />
        <iomarker fontsize="28" x="3808" y="128" name="iA3" orien="R180" />
        <iomarker fontsize="28" x="3808" y="192" name="iB3" orien="R180" />
        <iomarker fontsize="28" x="3696" y="176" name="oS2" orien="R0" />
        <branch name="XLXN_53">
            <wire x2="3984" y1="560" y2="560" x1="3712" />
            <wire x2="3984" y1="496" y2="560" x1="3984" />
            <wire x2="4176" y1="496" y2="496" x1="3984" />
            <wire x2="4256" y1="496" y2="496" x1="4176" />
            <wire x2="4096" y1="224" y2="480" x1="4096" />
            <wire x2="4176" y1="480" y2="480" x1="4096" />
            <wire x2="4176" y1="480" y2="496" x1="4176" />
            <wire x2="4432" y1="224" y2="224" x1="4096" />
        </branch>
        <iomarker fontsize="28" x="4880" y="192" name="oS3" orien="R0" />
        <branch name="oC">
            <wire x2="5088" y1="576" y2="576" x1="4896" />
        </branch>
        <iomarker fontsize="28" x="5088" y="576" name="oC" orien="R0" />
        <branch name="XLXN_55">
            <wire x2="1520" y1="608" y2="608" x1="1216" />
            <wire x2="1520" y1="464" y2="608" x1="1520" />
            <wire x2="1840" y1="464" y2="464" x1="1520" />
            <wire x2="1920" y1="464" y2="464" x1="1840" />
            <wire x2="1840" y1="464" y2="480" x1="1840" />
            <wire x2="1760" y1="192" y2="480" x1="1760" />
            <wire x2="1840" y1="480" y2="480" x1="1760" />
            <wire x2="2096" y1="192" y2="192" x1="1760" />
        </branch>
        <branch name="XLXN_57">
            <wire x2="496" y1="528" y2="528" x1="48" />
            <wire x2="608" y1="528" y2="528" x1="496" />
            <wire x2="48" y1="528" y2="560" x1="48" />
            <wire x2="736" y1="272" y2="272" x1="496" />
            <wire x2="496" y1="272" y2="528" x1="496" />
        </branch>
        <instance x="-16" y="688" name="XLXI_26" orien="R0" />
    </sheet>
</drawing>