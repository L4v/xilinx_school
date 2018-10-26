<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="iA" />
        <signal name="iB" />
        <signal name="S" />
        <signal name="oY" />
        <port polarity="Input" name="iA" />
        <port polarity="Input" name="iB" />
        <port polarity="Output" name="oY" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="iB" name="I0" />
            <blockpin signalname="iA" name="I1" />
            <blockpin signalname="S" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="S" name="I" />
            <blockpin signalname="oY" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="2224" y="2032" name="XLXI_1" orien="R0" />
        <branch name="iA">
            <wire x2="2224" y1="1904" y2="1904" x1="1840" />
        </branch>
        <branch name="iB">
            <wire x2="2224" y1="1968" y2="1968" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="1840" y="1904" name="iA" orien="R180" />
        <iomarker fontsize="28" x="1840" y="1968" name="iB" orien="R180" />
        <iomarker fontsize="28" x="2960" y="1936" name="oY" orien="R0" />
        <instance x="2608" y="1968" name="XLXI_2" orien="R0" />
        <branch name="S">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2539" y="1936" type="branch" />
            <wire x2="2539" y1="1936" y2="1936" x1="2480" />
            <wire x2="2608" y1="1936" y2="1936" x1="2539" />
        </branch>
        <branch name="oY">
            <wire x2="2960" y1="1936" y2="1936" x1="2832" />
        </branch>
    </sheet>
</drawing>