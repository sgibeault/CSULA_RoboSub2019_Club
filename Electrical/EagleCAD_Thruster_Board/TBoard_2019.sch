<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.1.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="ThrusterBoardLibrary">
<packages>
<package name="TERMINAL">
<wire x1="0" y1="0" x2="28.59" y2="0" width="0.1524" layer="21"/>
<wire x1="28.59" y1="0" x2="28.59" y2="5" width="0.1524" layer="21"/>
<wire x1="28.59" y1="5" x2="0" y2="5" width="0.1524" layer="21"/>
<wire x1="0" y1="5" x2="0" y2="0" width="0.1524" layer="21"/>
<pad name="P$1" x="4.765" y="2.5" drill="0.9" diameter="1.778"/>
<pad name="P$2" x="14.295" y="2.5" drill="0.9" diameter="1.778"/>
<pad name="P$3" x="23.825" y="2.5" drill="0.9" diameter="1.778"/>
</package>
</packages>
<symbols>
<symbol name="TERMINAL">
<wire x1="0" y1="0" x2="15.62" y2="0" width="0.254" layer="94"/>
<wire x1="15.62" y1="0" x2="15.62" y2="4.54" width="0.254" layer="94"/>
<wire x1="15.62" y1="4.54" x2="0" y2="4.54" width="0.254" layer="94"/>
<wire x1="0" y1="4.54" x2="0" y2="0" width="0.254" layer="94"/>
<pin name="EMPTY" x="2.54" y="2.54" length="middle" rot="R90"/>
<pin name="-" x="7.62" y="2.54" length="middle" rot="R90"/>
<pin name="+" x="12.7" y="2.54" length="middle" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TERMINAL">
<gates>
<gate name="G$1" symbol="TERMINAL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TERMINAL">
<connects>
<connect gate="G$1" pin="+" pad="P$1"/>
<connect gate="G$1" pin="-" pad="P$2"/>
<connect gate="G$1" pin="EMPTY" pad="P$3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="80A_RELAY">
<packages>
<package name="RLY">
<pad name="87A" x="0" y="0" drill="2.38125" diameter="5.55625"/>
<pad name="85" x="-8.89" y="1.27" drill="2.38125" diameter="4.7625"/>
<pad name="86" x="8.89" y="1.27" drill="2.38125" diameter="4.7625"/>
<pad name="30" x="0.254" y="-8.636" drill="2.38125" diameter="5.55625"/>
<pad name="87" x="0" y="9.144" drill="2.38125" diameter="5.55625"/>
<wire x1="-14.06398125" y1="13.589" x2="14.06398125" y2="13.589" width="0.127" layer="21"/>
<wire x1="14.06398125" y1="13.589" x2="14.06398125" y2="-13.589" width="0.127" layer="21"/>
<wire x1="14.06398125" y1="-13.589" x2="-14.06398125" y2="-13.589" width="0.127" layer="21"/>
<wire x1="-14.06398125" y1="-13.589" x2="-14.06398125" y2="13.589" width="0.127" layer="21"/>
<text x="-13.589" y="14.859" size="1.27" layer="25">&gt;NAME</text>
<text x="-12.319" y="-16.129" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="RLY">
<pin name="87A" x="0" y="0" length="middle"/>
<pin name="87" x="0" y="9.144" length="middle" rot="R90"/>
<pin name="85" x="-9.144" y="0" length="middle" rot="R180"/>
<pin name="30" x="0" y="-9.144" length="middle" rot="R270"/>
<pin name="86" x="9.144" y="0" length="middle"/>
<wire x1="-9.144" y1="9.144" x2="9.144" y2="9.144" width="0.254" layer="94"/>
<wire x1="9.144" y1="9.144" x2="9.144" y2="-9.144" width="0.254" layer="94"/>
<wire x1="9.144" y1="-9.144" x2="-9.144" y2="-9.144" width="0.254" layer="94"/>
<wire x1="-9.144" y1="-9.144" x2="-9.144" y2="9.144" width="0.254" layer="94"/>
<text x="-9.144" y="18.288" size="1.27" layer="95">&gt;NAME</text>
<text x="-9.144" y="-18.288" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="RLY" prefix="RLY">
<gates>
<gate name="G$1" symbol="RLY" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RLY">
<connects>
<connect gate="G$1" pin="30" pad="30"/>
<connect gate="G$1" pin="85" pad="85"/>
<connect gate="G$1" pin="86" pad="86"/>
<connect gate="G$1" pin="87" pad="87"/>
<connect gate="G$1" pin="87A" pad="87A"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="2PIN_BASE_SW">
<packages>
<package name="2PIN_SW">
<pad name="RD" x="-1.9685" y="0" drill="1.5875" diameter="2.54"/>
<pad name="BL" x="1.9685" y="0" drill="1.5875" diameter="2.54"/>
<wire x1="-3.937" y1="4.318" x2="3.937" y2="4.318" width="0.127" layer="21"/>
<wire x1="3.937" y1="4.318" x2="3.937" y2="-5.334" width="0.127" layer="21"/>
<wire x1="3.937" y1="-5.334" x2="-3.937" y2="-5.334" width="0.127" layer="21"/>
<wire x1="-3.937" y1="-5.334" x2="-3.937" y2="4.318" width="0.127" layer="21"/>
<text x="-4.191" y="5.588" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.191" y="-6.985" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="2PIN_W">
<pin name="RD" x="-1.397" y="0" length="middle" rot="R270"/>
<pin name="BL" x="1.397" y="0" length="middle" rot="R270"/>
<wire x1="-2.794" y1="1.397" x2="2.794" y2="1.397" width="0.254" layer="94"/>
<wire x1="2.794" y1="1.397" x2="2.794" y2="-4.191" width="0.254" layer="94"/>
<wire x1="2.794" y1="-4.191" x2="-2.794" y2="-4.191" width="0.254" layer="94"/>
<wire x1="-2.794" y1="-4.191" x2="-2.794" y2="1.397" width="0.254" layer="94"/>
<text x="-2.794" y="2.794" size="1.27" layer="95">&gt;NAME</text>
<text x="-2.794" y="-15.367" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="2PIN_SW" prefix="J2_S">
<gates>
<gate name="G$1" symbol="2PIN_W" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2PIN_SW">
<connects>
<connect gate="G$1" pin="BL" pad="BL"/>
<connect gate="G$1" pin="RD" pad="RD"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="BLUE_ESC">
<packages>
<package name="ESC">
<circle x="4.7625" y="-17.78" radius="1.5875" width="0.127" layer="21"/>
<circle x="0" y="-17.78" radius="1.5875" width="0.127" layer="21"/>
<circle x="-4.7625" y="-17.78" radius="1.5875" width="0.127" layer="21"/>
<circle x="-4.7625" y="13.462" radius="1.5875" width="0.127" layer="21"/>
<circle x="4.7625" y="13.462" radius="1.5875" width="0.127" layer="21"/>
<wire x1="-8.636" y1="16.002" x2="8.636" y2="16.002" width="0.127" layer="21"/>
<wire x1="8.636" y1="16.002" x2="8.636" y2="-16.002" width="0.127" layer="21"/>
<wire x1="8.636" y1="-16.002" x2="-8.636" y2="-16.002" width="0.127" layer="21"/>
<wire x1="-8.636" y1="-16.002" x2="-8.636" y2="16.002" width="0.127" layer="21"/>
<circle x="-1.27" y="13.462" radius="0.889" width="0.127" layer="21"/>
<circle x="1.27" y="13.462" radius="0.889" width="0.127" layer="21"/>
<text x="-19.05" y="15.875" size="1.27" layer="25">&gt;NAME</text>
<text x="-19.3675" y="-18.415" size="1.27" layer="27">&gt;VALUE</text>
<pad name="PWR1" x="8.636" y="22.352" drill="2.38125" diameter="4.7625"/>
<pad name="GND2" x="-8.636" y="22.352" drill="2.38125" diameter="4.7625"/>
<pad name="GND1" x="3.048" y="22.352" drill="2.38125" diameter="4.7625"/>
<pad name="PWR2" x="-3.048" y="22.352" drill="2.38125" diameter="4.7625"/>
<pad name="BL1" x="8.636" y="-22.352" drill="2.38125" diameter="4.7625"/>
<pad name="GN1" x="8.636" y="-28.702" drill="2.38125" diameter="4.7625"/>
<pad name="WT1" x="8.636" y="-35.052" drill="2.38125" diameter="4.7625"/>
<pad name="BL2" x="-8.636" y="-22.352" drill="2.38125" diameter="4.7625"/>
<pad name="GN2" x="-8.636" y="-28.702" drill="2.38125" diameter="4.7625"/>
<pad name="WT2" x="-8.636" y="-35.052" drill="2.38125" diameter="4.7625"/>
<pad name="S.GND1" x="11.43" y="6.35" drill="1.190625" diameter="1.984375"/>
<pad name="S.WT1" x="11.43" y="2.54" drill="1.190625" diameter="1.984375"/>
<pad name="S.WT2" x="-11.43" y="2.54" drill="1.190625" diameter="1.984375"/>
<pad name="S.GND2" x="-11.43" y="6.35" drill="1.190625" diameter="1.984375"/>
</package>
</packages>
<symbols>
<symbol name="ESC">
<pin name="GN1" x="9.906" y="-22.86" length="middle"/>
<pin name="S.GND1" x="9.906" y="11.43" length="middle"/>
<pin name="S.WT1" x="9.906" y="8.89" length="middle"/>
<text x="-15.24" y="35.56" size="1.27" layer="95">&gt;NAME</text>
<text x="-12.7" y="-33.02" size="1.27" layer="96">&gt;VALUE</text>
<pin name="PWR1" x="10.16" y="17.78" length="middle" rot="R90"/>
<pin name="GND2" x="-12.7" y="17.78" length="middle" rot="R90"/>
<pin name="BL1" x="10.16" y="-17.78" length="middle"/>
<pin name="BL2" x="-12.7" y="-17.78" length="middle" rot="R180"/>
<pin name="GN2" x="-12.7" y="-22.86" length="middle" rot="R180"/>
<pin name="WT2" x="-12.7" y="-27.94" length="middle" rot="R180"/>
<pin name="WT1" x="10.16" y="-27.94" length="middle"/>
<pin name="S.GND2" x="-12.7" y="10.16" length="middle" rot="R180"/>
<pin name="S.WT2" x="-12.7" y="7.62" length="middle" rot="R180"/>
<pin name="GND1" x="2.54" y="17.78" length="middle" rot="R90"/>
<pin name="PWR2" x="-5.08" y="17.78" length="middle" rot="R90"/>
<wire x1="-12.7" y1="20.32" x2="10.16" y2="20.32" width="0.254" layer="94"/>
<wire x1="10.16" y1="20.32" x2="10.16" y2="-15.24" width="0.254" layer="94"/>
<wire x1="10.16" y1="-15.24" x2="-12.7" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-15.24" x2="-12.7" y2="20.32" width="0.254" layer="94"/>
<wire x1="10.16" y1="-15.24" x2="10.16" y2="-27.94" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-15.24" x2="-12.7" y2="-27.94" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESC" prefix="ESC">
<gates>
<gate name="G$1" symbol="ESC" x="0" y="5.08"/>
</gates>
<devices>
<device name="" package="ESC">
<connects>
<connect gate="G$1" pin="BL1" pad="BL1"/>
<connect gate="G$1" pin="BL2" pad="BL2"/>
<connect gate="G$1" pin="GN1" pad="GN1"/>
<connect gate="G$1" pin="GN2" pad="GN2"/>
<connect gate="G$1" pin="GND1" pad="GND1"/>
<connect gate="G$1" pin="GND2" pad="GND2"/>
<connect gate="G$1" pin="PWR1" pad="PWR1"/>
<connect gate="G$1" pin="PWR2" pad="PWR2"/>
<connect gate="G$1" pin="S.GND1" pad="S.GND1"/>
<connect gate="G$1" pin="S.GND2" pad="S.GND2"/>
<connect gate="G$1" pin="S.WT1" pad="S.WT1"/>
<connect gate="G$1" pin="S.WT2" pad="S.WT2"/>
<connect gate="G$1" pin="WT1" pad="WT1"/>
<connect gate="G$1" pin="WT2" pad="WT2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="FUSE">
<packages>
<package name="FUSE">
<pad name="1" x="3.96875" y="0" drill="1.5875" diameter="2.54"/>
<pad name="2" x="-3.96875" y="0" drill="1.5875" diameter="2.54"/>
<wire x1="-7.14375" y1="3.175" x2="7.14375" y2="3.175" width="0.127" layer="21"/>
<wire x1="7.14375" y1="3.175" x2="7.14375" y2="-3.175" width="0.127" layer="21"/>
<wire x1="7.14375" y1="-3.175" x2="-7.14375" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-7.14375" y1="-3.175" x2="-7.14375" y2="3.175" width="0.127" layer="21"/>
<text x="-7.9375" y="3.96875" size="1.27" layer="25">&gt;NAME</text>
<text x="-7.9375" y="-7.9375" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="FUSE">
<pin name="2" x="3.96875" y="0" length="middle"/>
<pin name="1" x="-3.96875" y="0" length="middle" rot="R180"/>
<wire x1="-7.9375" y1="3.96875" x2="7.9375" y2="3.96875" width="0.254" layer="94"/>
<wire x1="7.9375" y1="3.96875" x2="7.9375" y2="-3.96875" width="0.254" layer="94"/>
<wire x1="7.9375" y1="-3.96875" x2="-7.9375" y2="-3.96875" width="0.254" layer="94"/>
<wire x1="-7.9375" y1="-3.96875" x2="-7.9375" y2="3.96875" width="0.254" layer="94"/>
<text x="-7.9375" y="7.9375" size="1.27" layer="95">&gt;NAME</text>
<text x="-7.9375" y="-11.90625" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="FUSE" prefix="FUSE">
<gates>
<gate name="G$1" symbol="FUSE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FUSE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="3PIN_BASE_CONNECTOR">
<packages>
<package name="3PIN">
<pad name="RED" x="-3.81" y="0" drill="1.5875" diameter="3.444875"/>
<pad name="BLK" x="3.81" y="0" drill="1.5875" diameter="3.444875" rot="R180"/>
<pad name="BLUE" x="0" y="0" drill="1.5875" diameter="3.444875" rot="R180"/>
<text x="-3.81" y="7.62" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.81" y="-7.62" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-5.842" y1="-4.953" x2="5.842" y2="-4.953" width="0.127" layer="27"/>
<wire x1="5.842" y1="-4.953" x2="5.842" y2="4.953" width="0.127" layer="27"/>
<wire x1="5.842" y1="4.953" x2="-5.842" y2="4.953" width="0.127" layer="27"/>
<wire x1="-5.842" y1="4.953" x2="-5.842" y2="-4.953" width="0.127" layer="27"/>
</package>
</packages>
<symbols>
<symbol name="3PIN">
<pin name="BLUE" x="0" y="0" length="middle" rot="R90"/>
<pin name="RED" x="-3.81" y="0" length="middle" rot="R90"/>
<pin name="BLK" x="3.81" y="0" length="middle" rot="R90"/>
<wire x1="-7.62" y1="-3.81" x2="7.62" y2="-3.81" width="0.254" layer="94"/>
<wire x1="7.62" y1="-3.81" x2="7.62" y2="3.81" width="0.254" layer="94"/>
<wire x1="7.62" y1="3.81" x2="-7.62" y2="3.81" width="0.254" layer="94"/>
<wire x1="-7.62" y1="3.81" x2="-7.62" y2="-3.81" width="0.254" layer="94"/>
<text x="-1.27" y="15.24" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<text x="-8.89" y="-8.89" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="3PIN" prefix="T">
<gates>
<gate name="G$1" symbol="3PIN" x="0" y="0"/>
</gates>
<devices>
<device name="" package="3PIN">
<connects>
<connect gate="G$1" pin="BLK" pad="BLK"/>
<connect gate="G$1" pin="BLUE" pad="BLUE"/>
<connect gate="G$1" pin="RED" pad="RED"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="2PIN_BASE_SERVO">
<packages>
<package name="2PIN_SIG">
<pad name="BK" x="-1.27" y="0" drill="0.9652" diameter="1.5875"/>
<pad name="RD" x="1.27" y="0" drill="0.9652" diameter="1.5875"/>
<wire x1="-2.54" y1="2.286" x2="2.54" y2="2.286" width="0.127" layer="21"/>
<wire x1="2.54" y1="2.286" x2="2.54" y2="-3.556" width="0.127" layer="21"/>
<wire x1="2.54" y1="-3.556" x2="-2.54" y2="-3.556" width="0.127" layer="21"/>
<wire x1="-2.54" y1="-3.556" x2="-2.54" y2="2.286" width="0.127" layer="21"/>
<text x="-3.81" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.81" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="2PIN_SIG">
<pin name="RD" x="-1.27" y="0" length="middle" rot="R270"/>
<pin name="BK" x="1.27" y="0" length="middle" rot="R270"/>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-3.81" width="0.254" layer="94"/>
<wire x1="2.54" y1="-3.81" x2="-2.54" y2="-3.81" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-3.81" x2="-2.54" y2="1.27" width="0.254" layer="94"/>
<text x="-2.54" y="3.81" size="1.27" layer="95">&gt;NAME</text>
<text x="-3.81" y="-13.97" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="2PIN_SIG" prefix="T_S">
<gates>
<gate name="G$1" symbol="2PIN_SIG" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2PIN_SIG">
<connects>
<connect gate="G$1" pin="BK" pad="BK"/>
<connect gate="G$1" pin="RD" pad="RD"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="ThrusterBoardLibrary" deviceset="TERMINAL" device=""/>
<part name="RLY1" library="80A_RELAY" deviceset="RLY" device=""/>
<part name="RLY2" library="80A_RELAY" deviceset="RLY" device=""/>
<part name="J2_S1" library="2PIN_BASE_SW" deviceset="2PIN_SW" device=""/>
<part name="ESC1" library="BLUE_ESC" deviceset="ESC" device=""/>
<part name="ESC2" library="BLUE_ESC" deviceset="ESC" device=""/>
<part name="ESC3" library="BLUE_ESC" deviceset="ESC" device=""/>
<part name="FUSE1" library="FUSE" deviceset="FUSE" device=""/>
<part name="FUSE2" library="FUSE" deviceset="FUSE" device=""/>
<part name="FUSE3" library="FUSE" deviceset="FUSE" device=""/>
<part name="FUSE4" library="FUSE" deviceset="FUSE" device=""/>
<part name="FUSE5" library="FUSE" deviceset="FUSE" device=""/>
<part name="FUSE6" library="FUSE" deviceset="FUSE" device=""/>
<part name="T1" library="3PIN_BASE_CONNECTOR" deviceset="3PIN" device=""/>
<part name="T2" library="3PIN_BASE_CONNECTOR" deviceset="3PIN" device=""/>
<part name="T3" library="3PIN_BASE_CONNECTOR" deviceset="3PIN" device=""/>
<part name="T4" library="3PIN_BASE_CONNECTOR" deviceset="3PIN" device=""/>
<part name="T5" library="3PIN_BASE_CONNECTOR" deviceset="3PIN" device=""/>
<part name="T6" library="3PIN_BASE_CONNECTOR" deviceset="3PIN" device=""/>
<part name="T_S1" library="2PIN_BASE_SERVO" deviceset="2PIN_SIG" device=""/>
<part name="T_S2" library="2PIN_BASE_SERVO" deviceset="2PIN_SIG" device=""/>
<part name="T_S3" library="2PIN_BASE_SERVO" deviceset="2PIN_SIG" device=""/>
<part name="T_S4" library="2PIN_BASE_SERVO" deviceset="2PIN_SIG" device=""/>
<part name="T_S5" library="2PIN_BASE_SERVO" deviceset="2PIN_SIG" device=""/>
<part name="T_S6" library="2PIN_BASE_SERVO" deviceset="2PIN_SIG" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="-15.24" y="114.3" rot="R270"/>
<instance part="RLY1" gate="G$1" x="30.48" y="20.32" rot="R270"/>
<instance part="RLY2" gate="G$1" x="30.48" y="68.58" rot="R270"/>
<instance part="J2_S1" gate="G$1" x="33.02" y="-12.7" rot="R270"/>
<instance part="ESC1" gate="G$1" x="91.44" y="53.34"/>
<instance part="ESC2" gate="G$1" x="139.7" y="53.34"/>
<instance part="ESC3" gate="G$1" x="187.96" y="53.34"/>
<instance part="FUSE1" gate="G$1" x="86.36" y="104.14" rot="R90"/>
<instance part="FUSE2" gate="G$1" x="101.6" y="104.14" rot="R90"/>
<instance part="FUSE3" gate="G$1" x="134.62" y="104.14" rot="R90"/>
<instance part="FUSE4" gate="G$1" x="149.86" y="104.14" rot="R90"/>
<instance part="FUSE5" gate="G$1" x="182.88" y="104.14" rot="R90"/>
<instance part="FUSE6" gate="G$1" x="198.12" y="104.14" rot="R90"/>
<instance part="T1" gate="G$1" x="78.74" y="5.08"/>
<instance part="T2" gate="G$1" x="101.6" y="5.08"/>
<instance part="T3" gate="G$1" x="127" y="5.08"/>
<instance part="T4" gate="G$1" x="149.86" y="5.08"/>
<instance part="T5" gate="G$1" x="175.26" y="5.08"/>
<instance part="T6" gate="G$1" x="198.12" y="5.08"/>
<instance part="T_S1" gate="G$1" x="264.16" y="60.96" rot="R270"/>
<instance part="T_S2" gate="G$1" x="264.16" y="53.34" rot="R270"/>
<instance part="T_S3" gate="G$1" x="264.16" y="45.72" rot="R270"/>
<instance part="T_S4" gate="G$1" x="264.16" y="38.1" rot="R270"/>
<instance part="T_S5" gate="G$1" x="264.16" y="30.48" rot="R270"/>
<instance part="T_S6" gate="G$1" x="264.16" y="22.86" rot="R270"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="-"/>
<pinref part="RLY2" gate="G$1" pin="85"/>
<wire x1="-12.7" y1="106.68" x2="30.48" y2="106.68" width="0.1524" layer="91"/>
<wire x1="30.48" y1="106.68" x2="30.48" y2="77.724" width="0.1524" layer="91"/>
<wire x1="30.48" y1="106.68" x2="55.88" y2="106.68" width="0.1524" layer="91"/>
<wire x1="55.88" y1="106.68" x2="55.88" y2="86.36" width="0.1524" layer="91"/>
<junction x="30.48" y="106.68"/>
<wire x1="55.88" y1="86.36" x2="73.66" y2="86.36" width="0.1524" layer="91"/>
<wire x1="73.66" y1="86.36" x2="78.74" y2="86.36" width="0.1524" layer="91"/>
<wire x1="78.74" y1="86.36" x2="93.98" y2="86.36" width="0.1524" layer="91"/>
<wire x1="93.98" y1="86.36" x2="106.68" y2="86.36" width="0.1524" layer="91"/>
<wire x1="106.68" y1="86.36" x2="121.92" y2="86.36" width="0.1524" layer="91"/>
<wire x1="121.92" y1="86.36" x2="127" y2="86.36" width="0.1524" layer="91"/>
<wire x1="127" y1="86.36" x2="142.24" y2="86.36" width="0.1524" layer="91"/>
<wire x1="142.24" y1="86.36" x2="154.94" y2="86.36" width="0.1524" layer="91"/>
<wire x1="154.94" y1="86.36" x2="170.18" y2="86.36" width="0.1524" layer="91"/>
<wire x1="170.18" y1="86.36" x2="175.26" y2="86.36" width="0.1524" layer="91"/>
<wire x1="175.26" y1="86.36" x2="190.5" y2="86.36" width="0.1524" layer="91"/>
<wire x1="190.5" y1="86.36" x2="203.2" y2="86.36" width="0.1524" layer="91"/>
<wire x1="203.2" y1="86.36" x2="233.68" y2="86.36" width="0.1524" layer="91"/>
<wire x1="233.68" y1="86.36" x2="233.68" y2="60.96" width="0.1524" layer="91"/>
<pinref part="T_S6" gate="G$1" pin="BK"/>
<wire x1="233.68" y1="60.96" x2="233.68" y2="53.34" width="0.1524" layer="91"/>
<wire x1="233.68" y1="53.34" x2="233.68" y2="45.72" width="0.1524" layer="91"/>
<wire x1="233.68" y1="45.72" x2="233.68" y2="38.1" width="0.1524" layer="91"/>
<wire x1="233.68" y1="38.1" x2="233.68" y2="30.48" width="0.1524" layer="91"/>
<wire x1="233.68" y1="30.48" x2="233.68" y2="22.86" width="0.1524" layer="91"/>
<wire x1="233.68" y1="22.86" x2="264.16" y2="22.86" width="0.1524" layer="91"/>
<wire x1="264.16" y1="22.86" x2="264.16" y2="21.59" width="0.1524" layer="91"/>
<pinref part="ESC1" gate="G$1" pin="S.GND2"/>
<wire x1="78.74" y1="63.5" x2="73.66" y2="63.5" width="0.1524" layer="91"/>
<wire x1="73.66" y1="63.5" x2="73.66" y2="86.36" width="0.1524" layer="91"/>
<junction x="73.66" y="86.36"/>
<pinref part="ESC1" gate="G$1" pin="S.GND1"/>
<wire x1="101.346" y1="64.77" x2="106.68" y2="64.77" width="0.1524" layer="91"/>
<wire x1="106.68" y1="64.77" x2="106.68" y2="86.36" width="0.1524" layer="91"/>
<junction x="106.68" y="86.36"/>
<pinref part="ESC1" gate="G$1" pin="GND2"/>
<wire x1="78.74" y1="71.12" x2="78.74" y2="86.36" width="0.1524" layer="91"/>
<junction x="78.74" y="86.36"/>
<pinref part="ESC1" gate="G$1" pin="GND1"/>
<wire x1="93.98" y1="71.12" x2="93.98" y2="86.36" width="0.1524" layer="91"/>
<junction x="93.98" y="86.36"/>
<pinref part="ESC2" gate="G$1" pin="S.GND2"/>
<wire x1="127" y1="63.5" x2="121.92" y2="63.5" width="0.1524" layer="91"/>
<wire x1="121.92" y1="63.5" x2="121.92" y2="86.36" width="0.1524" layer="91"/>
<junction x="121.92" y="86.36"/>
<pinref part="ESC2" gate="G$1" pin="S.GND1"/>
<wire x1="149.606" y1="64.77" x2="154.94" y2="64.77" width="0.1524" layer="91"/>
<wire x1="154.94" y1="64.77" x2="154.94" y2="86.36" width="0.1524" layer="91"/>
<junction x="154.94" y="86.36"/>
<pinref part="ESC2" gate="G$1" pin="GND2"/>
<wire x1="127" y1="71.12" x2="127" y2="86.36" width="0.1524" layer="91"/>
<junction x="127" y="86.36"/>
<pinref part="ESC2" gate="G$1" pin="GND1"/>
<wire x1="142.24" y1="71.12" x2="142.24" y2="86.36" width="0.1524" layer="91"/>
<junction x="142.24" y="86.36"/>
<pinref part="ESC3" gate="G$1" pin="S.GND2"/>
<wire x1="175.26" y1="63.5" x2="170.18" y2="63.5" width="0.1524" layer="91"/>
<wire x1="170.18" y1="63.5" x2="170.18" y2="86.36" width="0.1524" layer="91"/>
<junction x="170.18" y="86.36"/>
<pinref part="ESC3" gate="G$1" pin="GND2"/>
<wire x1="175.26" y1="71.12" x2="175.26" y2="86.36" width="0.1524" layer="91"/>
<junction x="175.26" y="86.36"/>
<pinref part="ESC3" gate="G$1" pin="GND1"/>
<wire x1="190.5" y1="71.12" x2="190.5" y2="86.36" width="0.1524" layer="91"/>
<junction x="190.5" y="86.36"/>
<pinref part="ESC3" gate="G$1" pin="S.GND1"/>
<wire x1="197.866" y1="64.77" x2="203.2" y2="64.77" width="0.1524" layer="91"/>
<wire x1="203.2" y1="64.77" x2="203.2" y2="86.36" width="0.1524" layer="91"/>
<junction x="203.2" y="86.36"/>
<pinref part="T_S1" gate="G$1" pin="BK"/>
<wire x1="233.68" y1="60.96" x2="264.16" y2="60.96" width="0.1524" layer="91"/>
<wire x1="264.16" y1="60.96" x2="264.16" y2="59.69" width="0.1524" layer="91"/>
<junction x="233.68" y="60.96"/>
<pinref part="T_S2" gate="G$1" pin="BK"/>
<wire x1="233.68" y1="53.34" x2="264.16" y2="53.34" width="0.1524" layer="91"/>
<wire x1="264.16" y1="53.34" x2="264.16" y2="52.07" width="0.1524" layer="91"/>
<junction x="233.68" y="53.34"/>
<pinref part="T_S3" gate="G$1" pin="BK"/>
<wire x1="233.68" y1="45.72" x2="264.16" y2="45.72" width="0.1524" layer="91"/>
<wire x1="264.16" y1="45.72" x2="264.16" y2="44.45" width="0.1524" layer="91"/>
<junction x="233.68" y="45.72"/>
<pinref part="T_S4" gate="G$1" pin="BK"/>
<wire x1="233.68" y1="38.1" x2="264.16" y2="38.1" width="0.1524" layer="91"/>
<wire x1="264.16" y1="38.1" x2="264.16" y2="36.83" width="0.1524" layer="91"/>
<junction x="233.68" y="38.1"/>
<pinref part="T_S5" gate="G$1" pin="BK"/>
<wire x1="233.68" y1="30.48" x2="264.16" y2="30.48" width="0.1524" layer="91"/>
<wire x1="264.16" y1="30.48" x2="264.16" y2="29.21" width="0.1524" layer="91"/>
<junction x="233.68" y="30.48"/>
<wire x1="55.88" y1="86.36" x2="55.88" y2="40.64" width="0.1524" layer="91"/>
<wire x1="55.88" y1="40.64" x2="30.48" y2="40.64" width="0.1524" layer="91"/>
<pinref part="RLY1" gate="G$1" pin="85"/>
<wire x1="30.48" y1="40.64" x2="30.48" y2="29.464" width="0.1524" layer="91"/>
<junction x="55.88" y="86.36"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="+"/>
<wire x1="-12.7" y1="101.6" x2="-2.54" y2="101.6" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="101.6" x2="-2.54" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="J2_S1" gate="G$1" pin="BL"/>
<wire x1="-2.54" y1="-15.24" x2="33.02" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-15.24" x2="33.02" y2="-14.097" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-15.24" x2="53.34" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="53.34" y1="-15.24" x2="53.34" y2="20.32" width="0.1524" layer="91"/>
<junction x="33.02" y="-15.24"/>
<pinref part="RLY1" gate="G$1" pin="87"/>
<wire x1="53.34" y1="20.32" x2="39.624" y2="20.32" width="0.1524" layer="91"/>
<pinref part="RLY2" gate="G$1" pin="87"/>
<wire x1="53.34" y1="20.32" x2="53.34" y2="68.58" width="0.1524" layer="91"/>
<wire x1="53.34" y1="68.58" x2="39.624" y2="68.58" width="0.1524" layer="91"/>
<junction x="53.34" y="20.32"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="J2_S1" gate="G$1" pin="RD"/>
<wire x1="33.02" y1="-11.303" x2="2.54" y2="-11.303" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-11.303" x2="2.54" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="RLY2" gate="G$1" pin="86"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="43.18" width="0.1524" layer="91"/>
<wire x1="2.54" y1="43.18" x2="30.48" y2="43.18" width="0.1524" layer="91"/>
<wire x1="30.48" y1="43.18" x2="30.48" y2="59.436" width="0.1524" layer="91"/>
<pinref part="RLY1" gate="G$1" pin="86"/>
<wire x1="2.54" y1="-2.54" x2="30.48" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="30.48" y1="-2.54" x2="30.48" y2="11.176" width="0.1524" layer="91"/>
<junction x="2.54" y="-2.54"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="ESC1" gate="G$1" pin="BL2"/>
<pinref part="T1" gate="G$1" pin="RED"/>
<wire x1="78.74" y1="35.56" x2="74.93" y2="35.56" width="0.1524" layer="91"/>
<wire x1="74.93" y1="35.56" x2="74.93" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="ESC1" gate="G$1" pin="GN2"/>
<pinref part="T1" gate="G$1" pin="BLK"/>
<wire x1="78.74" y1="30.48" x2="82.55" y2="30.48" width="0.1524" layer="91"/>
<wire x1="82.55" y1="30.48" x2="82.55" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="ESC1" gate="G$1" pin="WT2"/>
<pinref part="T1" gate="G$1" pin="BLUE"/>
<wire x1="78.74" y1="25.4" x2="78.74" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="ESC1" gate="G$1" pin="BL1"/>
<pinref part="T2" gate="G$1" pin="RED"/>
<wire x1="101.6" y1="35.56" x2="97.79" y2="35.56" width="0.1524" layer="91"/>
<wire x1="97.79" y1="35.56" x2="97.79" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="ESC1" gate="G$1" pin="GN1"/>
<pinref part="T2" gate="G$1" pin="BLK"/>
<wire x1="101.346" y1="30.48" x2="105.41" y2="30.48" width="0.1524" layer="91"/>
<wire x1="105.41" y1="30.48" x2="105.41" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="ESC1" gate="G$1" pin="WT1"/>
<pinref part="T2" gate="G$1" pin="BLUE"/>
<wire x1="101.6" y1="25.4" x2="101.6" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="ESC2" gate="G$1" pin="BL2"/>
<pinref part="T3" gate="G$1" pin="RED"/>
<wire x1="127" y1="35.56" x2="123.19" y2="35.56" width="0.1524" layer="91"/>
<wire x1="123.19" y1="35.56" x2="123.19" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="ESC2" gate="G$1" pin="GN2"/>
<pinref part="T3" gate="G$1" pin="BLK"/>
<wire x1="127" y1="30.48" x2="130.81" y2="30.48" width="0.1524" layer="91"/>
<wire x1="130.81" y1="30.48" x2="130.81" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="ESC2" gate="G$1" pin="WT2"/>
<pinref part="T3" gate="G$1" pin="BLUE"/>
<wire x1="127" y1="25.4" x2="127" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="ESC2" gate="G$1" pin="BL1"/>
<pinref part="T4" gate="G$1" pin="RED"/>
<wire x1="149.86" y1="35.56" x2="146.05" y2="35.56" width="0.1524" layer="91"/>
<wire x1="146.05" y1="35.56" x2="146.05" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="ESC2" gate="G$1" pin="GN1"/>
<pinref part="T4" gate="G$1" pin="BLK"/>
<wire x1="149.606" y1="30.48" x2="153.67" y2="30.48" width="0.1524" layer="91"/>
<wire x1="153.67" y1="30.48" x2="153.67" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="ESC2" gate="G$1" pin="WT1"/>
<pinref part="T4" gate="G$1" pin="BLUE"/>
<wire x1="149.86" y1="25.4" x2="149.86" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="ESC3" gate="G$1" pin="BL2"/>
<pinref part="T5" gate="G$1" pin="RED"/>
<wire x1="175.26" y1="35.56" x2="171.45" y2="35.56" width="0.1524" layer="91"/>
<wire x1="171.45" y1="35.56" x2="171.45" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="ESC3" gate="G$1" pin="GN2"/>
<pinref part="T5" gate="G$1" pin="BLK"/>
<wire x1="175.26" y1="30.48" x2="179.07" y2="30.48" width="0.1524" layer="91"/>
<wire x1="179.07" y1="30.48" x2="179.07" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="ESC3" gate="G$1" pin="WT2"/>
<pinref part="T5" gate="G$1" pin="BLUE"/>
<wire x1="175.26" y1="25.4" x2="175.26" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="ESC3" gate="G$1" pin="BL1"/>
<pinref part="T6" gate="G$1" pin="RED"/>
<wire x1="198.12" y1="35.56" x2="194.31" y2="35.56" width="0.1524" layer="91"/>
<wire x1="194.31" y1="35.56" x2="194.31" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="ESC3" gate="G$1" pin="GN1"/>
<pinref part="T6" gate="G$1" pin="BLK"/>
<wire x1="197.866" y1="30.48" x2="201.93" y2="30.48" width="0.1524" layer="91"/>
<wire x1="201.93" y1="30.48" x2="201.93" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="ESC3" gate="G$1" pin="WT1"/>
<pinref part="T6" gate="G$1" pin="BLUE"/>
<wire x1="198.12" y1="25.4" x2="198.12" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="FUSE6" gate="G$1" pin="2"/>
<wire x1="198.12" y1="108.10875" x2="198.12" y2="124.46" width="0.1524" layer="91"/>
<wire x1="198.12" y1="124.46" x2="182.88" y2="124.46" width="0.1524" layer="91"/>
<wire x1="182.88" y1="124.46" x2="149.86" y2="124.46" width="0.1524" layer="91"/>
<wire x1="149.86" y1="124.46" x2="7.62" y2="124.46" width="0.1524" layer="91"/>
<wire x1="7.62" y1="124.46" x2="7.62" y2="20.32" width="0.1524" layer="91"/>
<pinref part="RLY1" gate="G$1" pin="30"/>
<wire x1="7.62" y1="20.32" x2="21.336" y2="20.32" width="0.1524" layer="91"/>
<pinref part="FUSE4" gate="G$1" pin="2"/>
<wire x1="149.86" y1="108.10875" x2="149.86" y2="124.46" width="0.1524" layer="91"/>
<junction x="149.86" y="124.46"/>
<pinref part="FUSE5" gate="G$1" pin="2"/>
<wire x1="182.88" y1="108.10875" x2="182.88" y2="124.46" width="0.1524" layer="91"/>
<junction x="182.88" y="124.46"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="FUSE1" gate="G$1" pin="1"/>
<pinref part="ESC1" gate="G$1" pin="PWR2"/>
<wire x1="86.36" y1="100.17125" x2="86.36" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="FUSE2" gate="G$1" pin="1"/>
<pinref part="ESC1" gate="G$1" pin="PWR1"/>
<wire x1="101.6" y1="100.17125" x2="101.6" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="FUSE3" gate="G$1" pin="1"/>
<pinref part="ESC2" gate="G$1" pin="PWR2"/>
<wire x1="134.62" y1="100.17125" x2="134.62" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="FUSE4" gate="G$1" pin="1"/>
<pinref part="ESC2" gate="G$1" pin="PWR1"/>
<wire x1="149.86" y1="100.17125" x2="149.86" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="FUSE5" gate="G$1" pin="1"/>
<pinref part="ESC3" gate="G$1" pin="PWR2"/>
<wire x1="182.88" y1="100.17125" x2="182.88" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="FUSE6" gate="G$1" pin="1"/>
<pinref part="ESC3" gate="G$1" pin="PWR1"/>
<wire x1="198.12" y1="100.17125" x2="198.12" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="ESC3" gate="G$1" pin="S.WT1"/>
<pinref part="T_S1" gate="G$1" pin="RD"/>
<wire x1="197.866" y1="62.23" x2="264.16" y2="62.23" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="ESC3" gate="G$1" pin="S.WT2"/>
<wire x1="175.26" y1="60.96" x2="170.18" y2="60.96" width="0.1524" layer="91"/>
<wire x1="170.18" y1="60.96" x2="170.18" y2="54.61" width="0.1524" layer="91"/>
<pinref part="T_S2" gate="G$1" pin="RD"/>
<wire x1="170.18" y1="54.61" x2="264.16" y2="54.61" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="ESC2" gate="G$1" pin="S.WT1"/>
<wire x1="149.606" y1="62.23" x2="157.48" y2="62.23" width="0.1524" layer="91"/>
<wire x1="157.48" y1="62.23" x2="157.48" y2="46.99" width="0.1524" layer="91"/>
<pinref part="T_S3" gate="G$1" pin="RD"/>
<wire x1="157.48" y1="46.99" x2="264.16" y2="46.99" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="ESC2" gate="G$1" pin="S.WT2"/>
<wire x1="127" y1="60.96" x2="121.92" y2="60.96" width="0.1524" layer="91"/>
<wire x1="121.92" y1="60.96" x2="121.92" y2="39.37" width="0.1524" layer="91"/>
<pinref part="T_S4" gate="G$1" pin="RD"/>
<wire x1="121.92" y1="39.37" x2="264.16" y2="39.37" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="ESC1" gate="G$1" pin="S.WT1"/>
<wire x1="101.346" y1="62.23" x2="109.22" y2="62.23" width="0.1524" layer="91"/>
<wire x1="109.22" y1="62.23" x2="109.22" y2="31.75" width="0.1524" layer="91"/>
<pinref part="T_S5" gate="G$1" pin="RD"/>
<wire x1="109.22" y1="31.75" x2="264.16" y2="31.75" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="ESC1" gate="G$1" pin="S.WT2"/>
<wire x1="78.74" y1="60.96" x2="71.12" y2="60.96" width="0.1524" layer="91"/>
<wire x1="71.12" y1="60.96" x2="71.12" y2="24.13" width="0.1524" layer="91"/>
<pinref part="T_S6" gate="G$1" pin="RD"/>
<wire x1="71.12" y1="24.13" x2="264.16" y2="24.13" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="RLY2" gate="G$1" pin="30"/>
<wire x1="21.336" y1="68.58" x2="12.7" y2="68.58" width="0.1524" layer="91"/>
<wire x1="12.7" y1="68.58" x2="12.7" y2="116.84" width="0.1524" layer="91"/>
<wire x1="12.7" y1="116.84" x2="86.36" y2="116.84" width="0.1524" layer="91"/>
<pinref part="FUSE3" gate="G$1" pin="2"/>
<wire x1="86.36" y1="116.84" x2="101.6" y2="116.84" width="0.1524" layer="91"/>
<wire x1="101.6" y1="116.84" x2="134.62" y2="116.84" width="0.1524" layer="91"/>
<wire x1="134.62" y1="116.84" x2="134.62" y2="108.10875" width="0.1524" layer="91"/>
<pinref part="FUSE2" gate="G$1" pin="2"/>
<wire x1="101.6" y1="108.10875" x2="101.6" y2="116.84" width="0.1524" layer="91"/>
<junction x="101.6" y="116.84"/>
<pinref part="FUSE1" gate="G$1" pin="2"/>
<wire x1="86.36" y1="108.10875" x2="86.36" y2="116.84" width="0.1524" layer="91"/>
<junction x="86.36" y="116.84"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
