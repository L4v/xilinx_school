<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="oS0" />
        <signal name="oC0">
        </signal>
        <signal name="iC0" />
        <signal name="iA0" />
        <signal name="iB0" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="oS1" />
        <signal name="oC1">
        </signal>
        <signal name="XLXN_18" />
        <signal name="XLXN_19">
        </signal>
        <signal name="iA1" />
        <signal name="iB1" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="oS2" />
        <signal name="oC2">
        </signal>
        <signal name="XLXN_36" />
        <signal name="XLXN_37">
        </signal>
        <signal name="iB2" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="oS3" />
        <signal name="oC3" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46">
        </signal>
        <signal name="iA3" />
        <signal name="iB3" />
        <signal name="iA2" />
        <port polarity="Output" name="oS0" />
        <port polarity="Input" name="iC0" />
        <port polarity="Input" name="iA0" />
        <port polarity="Input" name="iB0" />
        <port polarity="Output" name="oS1" />
        <port polarity="Input" name="iA1" />
        <port polarity="Input" name="iB1" />
        <port polarity="Output" name="oS2" />
        <port polarity="Input" name="iB2" />
        <port polarity="Output" name="oS3" />
        <port polarity="Output" name="oC3" />
        <port polarity="Input" name="iA3" />
        <port polarity="Input" name="iB3" />
        <port polarity="Input" name="iA2" />
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
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="iB0" name="I0" />
            <blockpin signalname="iA0" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="iC0" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="oS0" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="iC0" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="iB0" name="I0" />
            <blockpin signalname="iA0" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="oC0" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_6">
            <blockpin signalname="iB1" name="I0" />
            <blockpin signalname="iA1" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_7">
            <blockpin signalname="oC0" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="oS1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="oC0" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="iB1" name="I0" />
            <blockpin signalname="iA1" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_10">
            <blockpin signalname="XLXN_13" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="oC1" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_16">
            <blockpin signalname="iB2" name="I0" />
            <blockpin signalname="iA2" name="I1" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_17">
            <blockpin signalname="oC1" name="I0" />
            <blockpin signalname="XLXN_33" name="I1" />
            <blockpin signalname="oS2" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_18">
            <blockpin signalname="oC1" name="I0" />
            <blockpin signalname="XLXN_33" name="I1" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_19">
            <blockpin signalname="iB2" name="I0" />
            <blockpin signalname="iA2" name="I1" />
            <blockpin signalname="XLXN_31" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_20">
            <blockpin signalname="XLXN_31" name="I0" />
            <blockpin signalname="XLXN_32" name="I1" />
            <blockpin signalname="oC2" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_21">
            <blockpin signalname="iB3" name="I0" />
            <blockpin signalname="iA3" name="I1" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_22">
            <blockpin signalname="oC2" name="I0" />
            <blockpin signalname="XLXN_42" name="I1" />
            <blockpin signalname="oS3" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_23">
            <blockpin signalname="oC2" name="I0" />
            <blockpin signalname="XLXN_42" name="I1" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_24">
            <blockpin signalname="iB3" name="I0" />
            <blockpin signalname="iA3" name="I1" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_25">
            <blockpin signalname="XLXN_40" name="I0" />
            <blockpin signalname="XLXN_41" name="I1" />
            <blockpin signalname="oC3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="320" y="384" name="XLXI_1" orien="R0" />
        <instance x="880" y="416" name="XLXI_2" orien="R0" />
        <instance x="720" y="624" name="XLXI_3" orien="R0" />
        <instance x="336" y="832" name="XLXI_4" orien="R0" />
        <instance x="1136" y="800" name="XLXI_5" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="1136" y1="736" y2="736" x1="592" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1056" y1="528" y2="528" x1="976" />
            <wire x2="1056" y1="528" y2="672" x1="1056" />
            <wire x2="1136" y1="672" y2="672" x1="1056" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="688" y1="288" y2="288" x1="576" />
            <wire x2="688" y1="288" y2="496" x1="688" />
            <wire x2="720" y1="496" y2="496" x1="688" />
            <wire x2="880" y1="288" y2="288" x1="688" />
        </branch>
        <branch name="oS0">
            <wire x2="1376" y1="320" y2="320" x1="1136" />
        </branch>
        <branch name="iC0">
            <wire x2="624" y1="560" y2="560" x1="192" />
            <wire x2="720" y1="560" y2="560" x1="624" />
            <wire x2="880" y1="352" y2="352" x1="624" />
            <wire x2="624" y1="352" y2="560" x1="624" />
        </branch>
        <branch name="iA0">
            <wire x2="288" y1="256" y2="256" x1="192" />
            <wire x2="320" y1="256" y2="256" x1="288" />
            <wire x2="288" y1="256" y2="704" x1="288" />
            <wire x2="336" y1="704" y2="704" x1="288" />
        </branch>
        <branch name="iB0">
            <wire x2="256" y1="320" y2="320" x1="192" />
            <wire x2="320" y1="320" y2="320" x1="256" />
            <wire x2="256" y1="320" y2="768" x1="256" />
            <wire x2="336" y1="768" y2="768" x1="256" />
        </branch>
        <iomarker fontsize="28" x="192" y="256" name="iA0" orien="R180" />
        <iomarker fontsize="28" x="192" y="320" name="iB0" orien="R180" />
        <iomarker fontsize="28" x="192" y="560" name="iC0" orien="R180" />
        <iomarker fontsize="28" x="1376" y="320" name="oS0" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="3120" y1="768" y2="768" x1="2576" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="3040" y1="560" y2="560" x1="2960" />
            <wire x2="3040" y1="560" y2="704" x1="3040" />
            <wire x2="3120" y1="704" y2="704" x1="3040" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2672" y1="320" y2="320" x1="2560" />
            <wire x2="2672" y1="320" y2="528" x1="2672" />
            <wire x2="2704" y1="528" y2="528" x1="2672" />
            <wire x2="2864" y1="320" y2="320" x1="2672" />
        </branch>
        <branch name="oS1">
            <wire x2="3360" y1="352" y2="352" x1="3120" />
        </branch>
        <branch name="iA1">
            <wire x2="2272" y1="288" y2="288" x1="2176" />
            <wire x2="2304" y1="288" y2="288" x1="2272" />
            <wire x2="2272" y1="288" y2="736" x1="2272" />
            <wire x2="2320" y1="736" y2="736" x1="2272" />
        </branch>
        <branch name="iB1">
            <wire x2="2240" y1="352" y2="352" x1="2176" />
            <wire x2="2304" y1="352" y2="352" x1="2240" />
            <wire x2="2240" y1="352" y2="800" x1="2240" />
            <wire x2="2320" y1="800" y2="800" x1="2240" />
        </branch>
        <instance x="2304" y="416" name="XLXI_6" orien="R0" />
        <instance x="2864" y="448" name="XLXI_7" orien="R0" />
        <instance x="2704" y="656" name="XLXI_8" orien="R0" />
        <instance x="2320" y="864" name="XLXI_9" orien="R0" />
        <instance x="3120" y="832" name="XLXI_10" orien="R0" />
        <iomarker fontsize="28" x="2176" y="288" name="iA1" orien="R180" />
        <iomarker fontsize="28" x="2176" y="352" name="iB1" orien="R180" />
        <iomarker fontsize="28" x="3360" y="352" name="oS1" orien="R0" />
        <branch name="XLXN_31">
            <wire x2="4960" y1="768" y2="768" x1="4416" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="4880" y1="560" y2="560" x1="4800" />
            <wire x2="4880" y1="560" y2="704" x1="4880" />
            <wire x2="4960" y1="704" y2="704" x1="4880" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="4512" y1="320" y2="320" x1="4400" />
            <wire x2="4512" y1="320" y2="528" x1="4512" />
            <wire x2="4544" y1="528" y2="528" x1="4512" />
            <wire x2="4704" y1="320" y2="320" x1="4512" />
        </branch>
        <branch name="oS2">
            <wire x2="5200" y1="352" y2="352" x1="4960" />
        </branch>
        <branch name="iA2">
            <wire x2="4112" y1="288" y2="288" x1="4016" />
            <wire x2="4144" y1="288" y2="288" x1="4112" />
            <wire x2="4112" y1="288" y2="736" x1="4112" />
            <wire x2="4160" y1="736" y2="736" x1="4112" />
        </branch>
        <branch name="iB2">
            <wire x2="4080" y1="352" y2="352" x1="4016" />
            <wire x2="4144" y1="352" y2="352" x1="4080" />
            <wire x2="4080" y1="352" y2="800" x1="4080" />
            <wire x2="4160" y1="800" y2="800" x1="4080" />
        </branch>
        <instance x="4144" y="416" name="XLXI_16" orien="R0" />
        <instance x="4704" y="448" name="XLXI_17" orien="R0" />
        <instance x="4544" y="656" name="XLXI_18" orien="R0" />
        <instance x="4160" y="864" name="XLXI_19" orien="R0" />
        <instance x="4960" y="832" name="XLXI_20" orien="R0" />
        <iomarker fontsize="28" x="4016" y="288" name="iA2" orien="R180" />
        <branch name="XLXN_40">
            <wire x2="6768" y1="784" y2="784" x1="6224" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="6688" y1="576" y2="576" x1="6608" />
            <wire x2="6688" y1="576" y2="720" x1="6688" />
            <wire x2="6768" y1="720" y2="720" x1="6688" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="6320" y1="336" y2="336" x1="6208" />
            <wire x2="6320" y1="336" y2="544" x1="6320" />
            <wire x2="6352" y1="544" y2="544" x1="6320" />
            <wire x2="6512" y1="336" y2="336" x1="6320" />
        </branch>
        <branch name="oS3">
            <wire x2="7008" y1="368" y2="368" x1="6768" />
        </branch>
        <branch name="oC3">
            <wire x2="7296" y1="752" y2="752" x1="7024" />
        </branch>
        <branch name="iA3">
            <wire x2="5920" y1="304" y2="304" x1="5824" />
            <wire x2="5952" y1="304" y2="304" x1="5920" />
            <wire x2="5920" y1="304" y2="752" x1="5920" />
            <wire x2="5968" y1="752" y2="752" x1="5920" />
        </branch>
        <branch name="iB3">
            <wire x2="5888" y1="368" y2="368" x1="5824" />
            <wire x2="5952" y1="368" y2="368" x1="5888" />
            <wire x2="5888" y1="368" y2="816" x1="5888" />
            <wire x2="5968" y1="816" y2="816" x1="5888" />
        </branch>
        <instance x="5952" y="432" name="XLXI_21" orien="R0" />
        <instance x="6512" y="464" name="XLXI_22" orien="R0" />
        <instance x="6352" y="672" name="XLXI_23" orien="R0" />
        <instance x="5968" y="880" name="XLXI_24" orien="R0" />
        <instance x="6768" y="848" name="XLXI_25" orien="R0" />
        <iomarker fontsize="28" x="5824" y="304" name="iA3" orien="R180" />
        <iomarker fontsize="28" x="5824" y="368" name="iB3" orien="R180" />
        <iomarker fontsize="28" x="7008" y="368" name="oS3" orien="R0" />
        <iomarker fontsize="28" x="7296" y="752" name="oC3" orien="R0" />
        <iomarker fontsize="28" x="4016" y="352" name="iB2" orien="R180" />
        <iomarker fontsize="28" x="5200" y="352" name="oS2" orien="R0" />
        <branch name="oC0">
            <wire x2="1600" y1="704" y2="704" x1="1392" />
            <wire x2="2608" y1="592" y2="592" x1="1600" />
            <wire x2="2704" y1="592" y2="592" x1="2608" />
            <wire x2="1600" y1="592" y2="704" x1="1600" />
            <wire x2="2864" y1="384" y2="384" x1="2608" />
            <wire x2="2608" y1="384" y2="592" x1="2608" />
        </branch>
        <branch name="oC1">
            <wire x2="3584" y1="736" y2="736" x1="3376" />
            <wire x2="4448" y1="592" y2="592" x1="3584" />
            <wire x2="4544" y1="592" y2="592" x1="4448" />
            <wire x2="3584" y1="592" y2="736" x1="3584" />
            <wire x2="4704" y1="384" y2="384" x1="4448" />
            <wire x2="4448" y1="384" y2="592" x1="4448" />
        </branch>
        <branch name="oC2">
            <wire x2="5424" y1="736" y2="736" x1="5216" />
            <wire x2="6256" y1="608" y2="608" x1="5424" />
            <wire x2="6352" y1="608" y2="608" x1="6256" />
            <wire x2="5424" y1="608" y2="736" x1="5424" />
            <wire x2="6512" y1="400" y2="400" x1="6256" />
            <wire x2="6256" y1="400" y2="608" x1="6256" />
        </branch>
    </sheet>
</drawing>