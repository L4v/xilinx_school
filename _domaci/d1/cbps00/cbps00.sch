<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="iA0" />
        <signal name="iB0" />
        <signal name="XLXN_3" />
        <signal name="iC0" />
        <signal name="XLXN_5" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="oC0" />
        <signal name="oS0" />
        <port polarity="Input" name="iA0" />
        <port polarity="Input" name="iB0" />
        <port polarity="Input" name="iC0" />
        <port polarity="Output" name="oC0" />
        <port polarity="Output" name="oS0" />
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
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="iC0" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="oS0" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="iC0" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="iB0" name="I0" />
            <blockpin signalname="iA0" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="oC0" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="1536" y="2368" name="XLXI_1" orien="R0" />
        <instance x="2128" y="2400" name="XLXI_2" orien="R0" />
        <instance x="1952" y="2672" name="XLXI_3" orien="R0" />
        <instance x="2352" y="2752" name="XLXI_5" orien="R0" />
        <branch name="iA0">
            <wire x2="1392" y1="2240" y2="2240" x1="1312" />
            <wire x2="1536" y1="2240" y2="2240" x1="1392" />
            <wire x2="1392" y1="2240" y2="2720" x1="1392" />
            <wire x2="1568" y1="2720" y2="2720" x1="1392" />
        </branch>
        <branch name="iB0">
            <wire x2="1456" y1="2304" y2="2304" x1="1312" />
            <wire x2="1536" y1="2304" y2="2304" x1="1456" />
            <wire x2="1456" y1="2304" y2="2784" x1="1456" />
            <wire x2="1568" y1="2784" y2="2784" x1="1456" />
        </branch>
        <branch name="iC0">
            <wire x2="1880" y1="2608" y2="2608" x1="1312" />
            <wire x2="1888" y1="2608" y2="2608" x1="1880" />
            <wire x2="1952" y1="2608" y2="2608" x1="1888" />
            <wire x2="1888" y1="2336" y2="2608" x1="1888" />
            <wire x2="2128" y1="2336" y2="2336" x1="1888" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1872" y1="2272" y2="2272" x1="1792" />
            <wire x2="1952" y1="2272" y2="2272" x1="1872" />
            <wire x2="2128" y1="2272" y2="2272" x1="1952" />
            <wire x2="1872" y1="2272" y2="2544" x1="1872" />
            <wire x2="1952" y1="2544" y2="2544" x1="1872" />
        </branch>
        <instance x="1568" y="2848" name="XLXI_4" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="2272" y1="2576" y2="2576" x1="2208" />
            <wire x2="2272" y1="2576" y2="2624" x1="2272" />
            <wire x2="2352" y1="2624" y2="2624" x1="2272" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2080" y1="2752" y2="2752" x1="1824" />
            <wire x2="2080" y1="2688" y2="2752" x1="2080" />
            <wire x2="2352" y1="2688" y2="2688" x1="2080" />
        </branch>
        <branch name="oC0">
            <wire x2="2736" y1="2656" y2="2656" x1="2608" />
        </branch>
        <branch name="oS0">
            <wire x2="2704" y1="2304" y2="2304" x1="2384" />
        </branch>
        <iomarker fontsize="28" x="1312" y="2240" name="iA0" orien="R180" />
        <iomarker fontsize="28" x="1312" y="2304" name="iB0" orien="R180" />
        <iomarker fontsize="28" x="1312" y="2608" name="iC0" orien="R180" />
        <iomarker fontsize="28" x="2704" y="2304" name="oS0" orien="R0" />
        <iomarker fontsize="28" x="2736" y="2656" name="oC0" orien="R0" />
    </sheet>
</drawing>