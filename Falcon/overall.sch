<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="POST" />
        <signal name="CLK" />
        <signal name="DBG" />
        <signal name="RST" />
        <signal name="SCL" />
        <signal name="SDA" />
        <signal name="XLXN_109" />
        <signal name="XLXN_110" />
        <signal name="XLXN_111" />
        <port polarity="Input" name="POST" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="DBG" />
        <port polarity="BiDirectional" name="RST" />
        <port polarity="Output" name="SCL" />
        <port polarity="Output" name="SDA" />
        <blockdef name="post_proc">
            <timestamp>2021-5-27T2:31:22</timestamp>
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-192" height="248" />
            <line x2="320" y1="-96" y2="-96" x1="384" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="320" y1="32" y2="32" x1="384" />
            <line x2="0" y1="32" y2="32" x1="64" />
        </blockdef>
        <blockdef name="slower">
            <timestamp>2021-5-27T2:29:11</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <blockdef name="divider_slow">
            <timestamp>2021-5-12T15:6:19</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="post_proc" name="XLXI_7">
            <blockpin signalname="POST" name="POST" />
            <blockpin signalname="XLXN_110" name="to_slow" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="DBG" name="DBG" />
            <blockpin signalname="XLXN_111" name="to_do" />
            <blockpin signalname="CLK" name="CLK" />
        </block>
        <block symbolname="divider_slow" name="XLXI_10">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_109" name="CLK_S" />
        </block>
        <block symbolname="slower" name="XLXI_9">
            <blockpin signalname="SCL" name="SCL" />
            <blockpin signalname="SDA" name="SDA" />
            <blockpin signalname="XLXN_111" name="in_do" />
            <blockpin signalname="XLXN_110" name="in_slow" />
            <blockpin signalname="XLXN_109" name="CLK" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1024" y="1248" name="XLXI_7" orien="R0">
        </instance>
        <branch name="POST">
            <wire x2="1024" y1="1088" y2="1088" x1="1008" />
        </branch>
        <branch name="DBG">
            <wire x2="1424" y1="1216" y2="1216" x1="1408" />
        </branch>
        <branch name="RST">
            <wire x2="1424" y1="1280" y2="1280" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1008" y="1088" name="POST" orien="R180" />
        <iomarker fontsize="28" x="1424" y="1216" name="DBG" orien="R0" />
        <iomarker fontsize="28" x="1424" y="1280" name="RST" orien="R0" />
        <instance x="1024" y="1472" name="XLXI_10" orien="R0">
        </instance>
        <branch name="SCL">
            <wire x2="1984" y1="1088" y2="1088" x1="1968" />
        </branch>
        <branch name="SDA">
            <wire x2="1984" y1="1152" y2="1152" x1="1968" />
        </branch>
        <instance x="1584" y="1184" name="XLXI_9" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1984" y="1088" name="SCL" orien="R0" />
        <iomarker fontsize="28" x="1984" y="1152" name="SDA" orien="R0" />
        <branch name="XLXN_109">
            <wire x2="1568" y1="1440" y2="1440" x1="1408" />
            <wire x2="1584" y1="1216" y2="1216" x1="1568" />
            <wire x2="1568" y1="1216" y2="1440" x1="1568" />
        </branch>
        <branch name="XLXN_110">
            <wire x2="1584" y1="1088" y2="1088" x1="1408" />
        </branch>
        <branch name="XLXN_111">
            <wire x2="1584" y1="1152" y2="1152" x1="1408" />
        </branch>
        <branch name="CLK">
            <wire x2="1008" y1="1280" y2="1280" x1="992" />
            <wire x2="1024" y1="1280" y2="1280" x1="1008" />
            <wire x2="1008" y1="1280" y2="1440" x1="1008" />
            <wire x2="1024" y1="1440" y2="1440" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="992" y="1280" name="CLK" orien="R180" />
    </sheet>
</drawing>