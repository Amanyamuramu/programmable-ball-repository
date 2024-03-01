<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
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
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
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
<library name="SparkFun-Retired">
<description>&lt;h3&gt;SparkFun Electronics' Retired foot prints&lt;/h3&gt;
In this library you'll find all manner of retired footprints for resistors, capacitors, board names, ICs, etc., that are &lt;b&gt; no longer used&lt;/b&gt; in our catalog.
&lt;br&gt;
&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is &lt;b&gt; the end user's responsibility&lt;/b&gt; to ensure correctness and suitablity for a given componet or application. 
&lt;br&gt;
&lt;br&gt;If you enjoy using this library, please buy one of our products at &lt;a href=" www.sparkfun.com"&gt;SparkFun.com&lt;/a&gt;.
&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;
&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
</packages>
<symbols>
<symbol name="A3L-LOC">
<wire x1="0" y1="0" x2="50.8" y2="0" width="0.1016" layer="94"/>
<wire x1="50.8" y1="0" x2="98.425" y2="0" width="0.1016" layer="94"/>
<wire x1="98.425" y1="0" x2="146.05" y2="0" width="0.1016" layer="94"/>
<wire x1="146.05" y1="0" x2="193.675" y2="0" width="0.1016" layer="94"/>
<wire x1="193.675" y1="0" x2="241.3" y2="0" width="0.1016" layer="94"/>
<wire x1="241.3" y1="0" x2="288.925" y2="0" width="0.1016" layer="94"/>
<wire x1="288.925" y1="0" x2="336.55" y2="0" width="0.1016" layer="94"/>
<wire x1="336.55" y1="0" x2="387.35" y2="0" width="0.1016" layer="94"/>
<wire x1="387.35" y1="0" x2="387.35" y2="53.975" width="0.1016" layer="94"/>
<wire x1="387.35" y1="53.975" x2="387.35" y2="104.775" width="0.1016" layer="94"/>
<wire x1="387.35" y1="104.775" x2="387.35" y2="155.575" width="0.1016" layer="94"/>
<wire x1="387.35" y1="155.575" x2="387.35" y2="206.375" width="0.1016" layer="94"/>
<wire x1="387.35" y1="206.375" x2="387.35" y2="260.35" width="0.1016" layer="94"/>
<wire x1="146.05" y1="260.35" x2="98.425" y2="260.35" width="0.1016" layer="94"/>
<wire x1="98.425" y1="260.35" x2="50.8" y2="260.35" width="0.1016" layer="94"/>
<wire x1="50.8" y1="260.35" x2="0" y2="260.35" width="0.1016" layer="94"/>
<wire x1="0" y1="260.35" x2="0" y2="206.375" width="0.1016" layer="94"/>
<wire x1="0" y1="206.375" x2="0" y2="155.575" width="0.1016" layer="94"/>
<wire x1="0" y1="155.575" x2="0" y2="104.775" width="0.1016" layer="94"/>
<wire x1="0" y1="104.775" x2="0" y2="53.975" width="0.1016" layer="94"/>
<wire x1="0" y1="53.975" x2="0" y2="0" width="0.1016" layer="94"/>
<wire x1="3.175" y1="3.175" x2="50.8" y2="3.175" width="0.1016" layer="94"/>
<wire x1="50.8" y1="3.175" x2="98.425" y2="3.175" width="0.1016" layer="94"/>
<wire x1="98.425" y1="3.175" x2="146.05" y2="3.175" width="0.1016" layer="94"/>
<wire x1="146.05" y1="3.175" x2="193.675" y2="3.175" width="0.1016" layer="94"/>
<wire x1="193.675" y1="3.175" x2="241.3" y2="3.175" width="0.1016" layer="94"/>
<wire x1="241.3" y1="3.175" x2="288.925" y2="3.175" width="0.1016" layer="94"/>
<wire x1="288.925" y1="3.175" x2="307.34" y2="3.175" width="0.1016" layer="94"/>
<wire x1="336.55" y1="3.175" x2="307.34" y2="3.175" width="0.1016" layer="94"/>
<wire x1="307.34" y1="3.175" x2="366.395" y2="3.175" width="0.1016" layer="94"/>
<wire x1="366.395" y1="3.175" x2="384.175" y2="3.175" width="0.1016" layer="94"/>
<wire x1="384.175" y1="3.175" x2="384.175" y2="8.255" width="0.1016" layer="94"/>
<wire x1="384.175" y1="8.255" x2="384.175" y2="13.335" width="0.1016" layer="94"/>
<wire x1="384.175" y1="13.335" x2="384.175" y2="18.415" width="0.1016" layer="94"/>
<wire x1="384.175" y1="18.415" x2="384.175" y2="23.495" width="0.1016" layer="94"/>
<wire x1="384.175" y1="23.495" x2="384.175" y2="53.975" width="0.1016" layer="94"/>
<wire x1="384.175" y1="53.975" x2="384.175" y2="104.775" width="0.1016" layer="94"/>
<wire x1="384.175" y1="104.775" x2="384.175" y2="155.575" width="0.1016" layer="94"/>
<wire x1="384.175" y1="155.575" x2="384.175" y2="206.375" width="0.1016" layer="94"/>
<wire x1="384.175" y1="206.375" x2="384.175" y2="257.175" width="0.1016" layer="94"/>
<wire x1="384.175" y1="257.175" x2="336.55" y2="257.175" width="0.1016" layer="94"/>
<wire x1="336.55" y1="257.175" x2="288.925" y2="257.175" width="0.1016" layer="94"/>
<wire x1="288.925" y1="257.175" x2="241.3" y2="257.175" width="0.1016" layer="94"/>
<wire x1="241.3" y1="257.175" x2="193.675" y2="257.175" width="0.1016" layer="94"/>
<wire x1="193.675" y1="257.175" x2="146.05" y2="257.175" width="0.1016" layer="94"/>
<wire x1="146.05" y1="257.175" x2="98.425" y2="257.175" width="0.1016" layer="94"/>
<wire x1="98.425" y1="257.175" x2="50.8" y2="257.175" width="0.1016" layer="94"/>
<wire x1="50.8" y1="257.175" x2="3.175" y2="257.175" width="0.1016" layer="94"/>
<wire x1="3.175" y1="257.175" x2="3.175" y2="206.375" width="0.1016" layer="94"/>
<wire x1="3.175" y1="206.375" x2="3.175" y2="155.575" width="0.1016" layer="94"/>
<wire x1="3.175" y1="155.575" x2="3.175" y2="104.775" width="0.1016" layer="94"/>
<wire x1="3.175" y1="104.775" x2="3.175" y2="53.975" width="0.1016" layer="94"/>
<wire x1="3.175" y1="53.975" x2="3.175" y2="3.175" width="0.1016" layer="94"/>
<wire x1="387.35" y1="260.35" x2="336.55" y2="260.35" width="0.1016" layer="94"/>
<wire x1="336.55" y1="260.35" x2="288.925" y2="260.35" width="0.1016" layer="94"/>
<wire x1="288.925" y1="260.35" x2="241.3" y2="260.35" width="0.1016" layer="94"/>
<wire x1="241.3" y1="260.35" x2="193.675" y2="260.35" width="0.1016" layer="94"/>
<wire x1="193.675" y1="260.35" x2="146.05" y2="260.35" width="0.1016" layer="94"/>
<wire x1="193.675" y1="260.35" x2="193.675" y2="257.175" width="0.1016" layer="94"/>
<wire x1="193.675" y1="3.175" x2="193.675" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="104.775" x2="3.175" y2="104.775" width="0.1016" layer="94"/>
<wire x1="384.175" y1="155.575" x2="387.35" y2="155.575" width="0.1016" layer="94"/>
<wire x1="98.425" y1="257.175" x2="98.425" y2="260.35" width="0.1016" layer="94"/>
<wire x1="98.425" y1="3.175" x2="98.425" y2="0" width="0.1016" layer="94"/>
<wire x1="288.925" y1="260.35" x2="288.925" y2="257.175" width="0.1016" layer="94"/>
<wire x1="288.925" y1="3.175" x2="288.925" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="53.975" x2="3.175" y2="53.975" width="0.1016" layer="94"/>
<wire x1="384.175" y1="104.775" x2="387.35" y2="104.775" width="0.1016" layer="94"/>
<wire x1="0" y1="155.575" x2="3.175" y2="155.575" width="0.1016" layer="94"/>
<wire x1="384.175" y1="206.375" x2="387.35" y2="206.375" width="0.1016" layer="94"/>
<wire x1="50.8" y1="257.175" x2="50.8" y2="260.35" width="0.1016" layer="94"/>
<wire x1="0" y1="206.375" x2="3.175" y2="206.375" width="0.1016" layer="94"/>
<wire x1="384.175" y1="53.975" x2="387.35" y2="53.975" width="0.1016" layer="94"/>
<wire x1="146.05" y1="257.175" x2="146.05" y2="260.35" width="0.1016" layer="94"/>
<wire x1="241.3" y1="260.35" x2="241.3" y2="257.175" width="0.1016" layer="94"/>
<wire x1="336.55" y1="260.35" x2="336.55" y2="257.175" width="0.1016" layer="94"/>
<wire x1="336.55" y1="3.175" x2="336.55" y2="0" width="0.1016" layer="94"/>
<wire x1="241.3" y1="3.175" x2="241.3" y2="0" width="0.1016" layer="94"/>
<wire x1="146.05" y1="3.175" x2="146.05" y2="0" width="0.1016" layer="94"/>
<wire x1="50.8" y1="0" x2="50.8" y2="3.175" width="0.1016" layer="94"/>
<wire x1="288.925" y1="3.175" x2="288.925" y2="23.495" width="0.6096" layer="94"/>
<wire x1="288.925" y1="23.495" x2="307.34" y2="23.495" width="0.6096" layer="94"/>
<wire x1="307.34" y1="23.495" x2="384.175" y2="23.495" width="0.6096" layer="94"/>
<wire x1="366.395" y1="3.175" x2="366.395" y2="8.255" width="0.1016" layer="94"/>
<wire x1="366.395" y1="8.255" x2="384.175" y2="8.255" width="0.1016" layer="94"/>
<wire x1="366.395" y1="8.255" x2="307.34" y2="8.255" width="0.1016" layer="94"/>
<wire x1="307.34" y1="8.255" x2="307.34" y2="3.175" width="0.6096" layer="94"/>
<wire x1="307.34" y1="8.255" x2="307.34" y2="13.335" width="0.6096" layer="94"/>
<wire x1="307.34" y1="13.335" x2="384.175" y2="13.335" width="0.1016" layer="94"/>
<wire x1="307.34" y1="13.335" x2="307.34" y2="18.415" width="0.6096" layer="94"/>
<wire x1="307.34" y1="18.415" x2="384.175" y2="18.415" width="0.1016" layer="94"/>
<wire x1="307.34" y1="18.415" x2="307.34" y2="23.495" width="0.6096" layer="94"/>
<text x="24.384" y="0.254" size="2.54" layer="94" font="vector">A</text>
<text x="74.422" y="0.254" size="2.54" layer="94" font="vector">B</text>
<text x="121.158" y="0.254" size="2.54" layer="94" font="vector">C</text>
<text x="169.418" y="0.254" size="2.54" layer="94" font="vector">D</text>
<text x="216.916" y="0.254" size="2.54" layer="94" font="vector">E</text>
<text x="263.652" y="0.254" size="2.54" layer="94" font="vector">F</text>
<text x="310.642" y="0.254" size="2.54" layer="94" font="vector">G</text>
<text x="360.934" y="0.254" size="2.54" layer="94" font="vector">H</text>
<text x="385.064" y="28.702" size="2.54" layer="94" font="vector">1</text>
<text x="384.81" y="79.502" size="2.54" layer="94" font="vector">2</text>
<text x="384.81" y="130.302" size="2.54" layer="94" font="vector">3</text>
<text x="384.81" y="181.864" size="2.54" layer="94" font="vector">4</text>
<text x="384.81" y="231.14" size="2.54" layer="94" font="vector">5</text>
<text x="361.188" y="257.556" size="2.54" layer="94" font="vector">H</text>
<text x="311.404" y="257.556" size="2.54" layer="94" font="vector">G</text>
<text x="262.89" y="257.556" size="2.54" layer="94" font="vector">F</text>
<text x="215.9" y="257.556" size="2.54" layer="94" font="vector">E</text>
<text x="168.148" y="257.556" size="2.54" layer="94" font="vector">D</text>
<text x="120.904" y="257.556" size="2.54" layer="94" font="vector">C</text>
<text x="72.898" y="257.556" size="2.54" layer="94" font="vector">B</text>
<text x="24.384" y="257.556" size="2.54" layer="94" font="vector">A</text>
<text x="0.762" y="231.14" size="2.54" layer="94" font="vector">5</text>
<text x="0.762" y="181.61" size="2.54" layer="94" font="vector">4</text>
<text x="0.762" y="130.302" size="2.54" layer="94" font="vector">3</text>
<text x="0.762" y="79.248" size="2.54" layer="94" font="vector">2</text>
<text x="1.016" y="26.67" size="2.54" layer="94" font="vector">1</text>
<text x="319.151" y="19.431" size="2.54" layer="94" font="vector">&gt;DRAWING_NAME</text>
<text x="309.753" y="9.525" size="2.286" layer="94" font="vector">&gt;LAST_DATE_TIME</text>
<text x="368.3" y="4.445" size="2.54" layer="94" font="vector">&gt;SHEET</text>
<text x="309.626" y="4.318" size="2.54" layer="94">Drawn By:</text>
<text x="309.88" y="19.558" size="2.54" layer="94">Title:</text>
<text x="310.134" y="14.478" size="2.54" layer="94">Version:</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="FRAME-A3" prefix="FRAME">
<description>&lt;b&gt;Schematic Frame&lt;/b&gt;&lt;p&gt;
A3 Larger Frame-RETIRED

Please use FRAME-LEDGER/FRAME-LETTER for schematics now.</description>
<gates>
<gate name="G$1" symbol="A3L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="MDBT50Q-1MV2">
<packages>
<package name="XCVR_MDBT50Q-1MV2">
<rectangle x1="-2.3" y1="2.75" x2="-0.7" y2="3.95" layer="41"/>
<rectangle x1="-6.2" y1="3.95" x2="6.2" y2="7.75" layer="41"/>
<wire x1="-5.25" y1="7.75" x2="5.25" y2="7.75" width="0.127" layer="51"/>
<wire x1="5.25" y1="7.75" x2="5.25" y2="-7.75" width="0.127" layer="51"/>
<wire x1="5.25" y1="-7.75" x2="-5.25" y2="-7.75" width="0.127" layer="51"/>
<wire x1="-5.25" y1="-7.75" x2="-5.25" y2="7.75" width="0.127" layer="51"/>
<wire x1="-5.5" y1="3.95" x2="-6.2" y2="3.95" width="0.05" layer="39"/>
<wire x1="-6.2" y1="3.95" x2="-6.2" y2="8" width="0.05" layer="39"/>
<wire x1="-6.2" y1="8" x2="6.2" y2="8" width="0.05" layer="39"/>
<wire x1="6.2" y1="8" x2="6.2" y2="3.95" width="0.05" layer="39"/>
<wire x1="6.2" y1="3.95" x2="5.5" y2="3.95" width="0.05" layer="39"/>
<wire x1="5.5" y1="3.95" x2="5.5" y2="-8" width="0.05" layer="39"/>
<wire x1="5.5" y1="-8" x2="-5.5" y2="-8" width="0.05" layer="39"/>
<wire x1="-5.5" y1="-8" x2="-5.5" y2="3.95" width="0.05" layer="39"/>
<text x="-5.25" y="8.19" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.35" y="-9.45" size="1.27" layer="27">&gt;VALUE</text>
<wire x1="-5.25" y1="4.25" x2="-5.25" y2="7.75" width="0.127" layer="21"/>
<wire x1="-5.25" y1="7.75" x2="5.25" y2="7.75" width="0.127" layer="21"/>
<wire x1="5.25" y1="7.75" x2="5.25" y2="4.25" width="0.127" layer="21"/>
<wire x1="-5.25" y1="-4.2" x2="-5.25" y2="-6.55" width="0.127" layer="21"/>
<circle x="-5.75" y="3.75" radius="0.1" width="0.2" layer="21"/>
<circle x="-5.75" y="3.75" radius="0.1" width="0.2" layer="51"/>
<rectangle x1="-6.2" y1="3.95" x2="6.2" y2="7.75" layer="43"/>
<rectangle x1="-2.3" y1="2.75" x2="-0.7" y2="3.95" layer="43"/>
<rectangle x1="-6.2" y1="3.95" x2="6.2" y2="7.75" layer="42"/>
<smd name="1" x="-4.65" y="3.75" dx="0.6" dy="0.4" layer="1"/>
<smd name="2" x="-4.65" y="2.65" dx="0.6" dy="0.4" layer="1"/>
<smd name="3" x="-4.65" y="1.85" dx="0.6" dy="0.4" layer="1"/>
<smd name="4" x="-4.65" y="0.25" dx="0.6" dy="0.4" layer="1"/>
<smd name="5" x="-3.75" y="-0.15" dx="0.6" dy="0.4" layer="1"/>
<smd name="6" x="-4.65" y="-0.55" dx="0.6" dy="0.4" layer="1"/>
<smd name="7" x="-3.75" y="-0.95" dx="0.6" dy="0.4" layer="1"/>
<smd name="8" x="-4.65" y="-1.35" dx="0.6" dy="0.4" layer="1"/>
<smd name="9" x="-3.75" y="-1.75" dx="0.6" dy="0.4" layer="1"/>
<smd name="10" x="-4.65" y="-2.15" dx="0.6" dy="0.4" layer="1"/>
<smd name="11" x="-3.75" y="-2.55" dx="0.6" dy="0.4" layer="1"/>
<smd name="12" x="-4.65" y="-2.95" dx="0.6" dy="0.4" layer="1"/>
<smd name="13" x="-3.75" y="-3.35" dx="0.6" dy="0.4" layer="1"/>
<smd name="14" x="-4.65" y="-3.75" dx="0.6" dy="0.4" layer="1"/>
<smd name="15" x="-4.8" y="-7.15" dx="0.4" dy="0.6" layer="1"/>
<smd name="16" x="-4" y="-7.15" dx="0.4" dy="0.6" layer="1"/>
<smd name="17" x="-3.2" y="-7.15" dx="0.4" dy="0.6" layer="1"/>
<smd name="18" x="-2.4" y="-7.15" dx="0.4" dy="0.6" layer="1"/>
<smd name="19" x="-2" y="-6.25" dx="0.4" dy="0.6" layer="1"/>
<smd name="20" x="-1.6" y="-7.15" dx="0.4" dy="0.6" layer="1"/>
<smd name="21" x="-1.2" y="-6.25" dx="0.4" dy="0.6" layer="1"/>
<smd name="22" x="-0.8" y="-7.15" dx="0.4" dy="0.6" layer="1"/>
<smd name="23" x="-0.4" y="-6.25" dx="0.4" dy="0.6" layer="1"/>
<smd name="24" x="0" y="-7.15" dx="0.4" dy="0.6" layer="1"/>
<smd name="25" x="0.4" y="-6.25" dx="0.4" dy="0.6" layer="1"/>
<smd name="26" x="0.8" y="-7.15" dx="0.4" dy="0.6" layer="1"/>
<smd name="27" x="1.2" y="-6.25" dx="0.4" dy="0.6" layer="1"/>
<smd name="28" x="1.6" y="-7.15" dx="0.4" dy="0.6" layer="1"/>
<smd name="29" x="2" y="-6.25" dx="0.4" dy="0.6" layer="1"/>
<smd name="30" x="2.4" y="-7.15" dx="0.4" dy="0.6" layer="1"/>
<smd name="31" x="3.2" y="-7.15" dx="0.4" dy="0.6" layer="1"/>
<smd name="32" x="4" y="-7.15" dx="0.4" dy="0.6" layer="1"/>
<smd name="33" x="4.8" y="-7.15" dx="0.4" dy="0.6" layer="1"/>
<smd name="34" x="4.65" y="-6.15" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="35" x="4.65" y="-5.35" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="36" x="3.75" y="-4.95" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="37" x="4.65" y="-4.55" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="38" x="3.75" y="-4.15" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="39" x="4.65" y="-3.75" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="40" x="3.75" y="-3.35" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="41" x="4.65" y="-2.95" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="42" x="3.75" y="-2.55" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="43" x="3.75" y="-1.75" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="44" x="4.65" y="-1.35" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="45" x="3.75" y="-0.95" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="46" x="4.65" y="-0.55" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="47" x="3.75" y="-0.15" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="48" x="4.65" y="0.25" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="49" x="3.75" y="0.65" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="50" x="3.75" y="1.45" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="51" x="4.65" y="1.85" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="52" x="3.75" y="2.25" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="53" x="4.65" y="2.65" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="54" x="3.75" y="3.05" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="55" x="4.65" y="3.75" dx="0.6" dy="0.4" layer="1" rot="R180"/>
<smd name="56" x="-2" y="-0.55" dx="0.4" dy="0.6" layer="1"/>
<smd name="57" x="-1.2" y="-0.55" dx="0.4" dy="0.6" layer="1"/>
<smd name="58" x="-0.4" y="-0.55" dx="0.4" dy="0.6" layer="1"/>
<smd name="59" x="0.4" y="-0.55" dx="0.4" dy="0.6" layer="1"/>
<smd name="60" x="1.2" y="-0.55" dx="0.4" dy="0.6" layer="1"/>
<smd name="61" x="2" y="-0.55" dx="0.4" dy="0.6" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="MDBT50Q-1MV2">
<wire x1="22.86" y1="45.72" x2="22.86" y2="-45.72" width="0.254" layer="94"/>
<wire x1="22.86" y1="-45.72" x2="-22.86" y2="-45.72" width="0.254" layer="94"/>
<wire x1="-22.86" y1="-45.72" x2="-22.86" y2="45.72" width="0.254" layer="94"/>
<wire x1="-22.86" y1="45.72" x2="22.86" y2="45.72" width="0.254" layer="94"/>
<text x="-22.86" y="46.482" size="1.778" layer="95">&gt;NAME</text>
<text x="-22.86" y="-48.26" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P1.10" x="27.94" y="-22.86" length="middle" rot="R180"/>
<pin name="P1.11" x="27.94" y="-25.4" length="middle" rot="R180"/>
<pin name="P1.13" x="27.94" y="-30.48" length="middle" rot="R180"/>
<pin name="P1.12" x="27.94" y="-27.94" length="middle" rot="R180"/>
<pin name="P1.14" x="27.94" y="-33.02" length="middle" rot="R180"/>
<pin name="P1.15" x="27.94" y="-35.56" length="middle" rot="R180"/>
<pin name="P0.03/AIN1" x="-27.94" y="30.48" length="middle"/>
<pin name="P0.29/AIN5" x="-27.94" y="-35.56" length="middle"/>
<pin name="P0.02/AIN0" x="-27.94" y="33.02" length="middle"/>
<pin name="GND" x="27.94" y="-43.18" length="middle" direction="pwr" rot="R180"/>
<pin name="P0.31/AIN7" x="-27.94" y="-40.64" length="middle"/>
<pin name="P0.28/AIN4" x="-27.94" y="-33.02" length="middle"/>
<pin name="P0.27" x="-27.94" y="-30.48" length="middle"/>
<pin name="P0.00/XL1" x="-27.94" y="38.1" length="middle"/>
<pin name="P0.26" x="-27.94" y="-27.94" length="middle"/>
<pin name="P0.01/XL2" x="-27.94" y="35.56" length="middle"/>
<pin name="P0.05/AIN3" x="-27.94" y="25.4" length="middle"/>
<pin name="P0.06" x="-27.94" y="22.86" length="middle"/>
<pin name="P0.07/TRACECLK" x="-27.94" y="20.32" length="middle"/>
<pin name="P0.08" x="-27.94" y="17.78" length="middle"/>
<pin name="P1.08" x="27.94" y="-17.78" length="middle" rot="R180"/>
<pin name="P0.30/AIN6" x="-27.94" y="-38.1" length="middle"/>
<pin name="P1.09/TRACEDATA3" x="27.94" y="-20.32" length="middle" rot="R180"/>
<pin name="P0.11/TRACEDATA2" x="-27.94" y="10.16" length="middle"/>
<pin name="P0.12/TRACEDATA1" x="-27.94" y="7.62" length="middle"/>
<pin name="VDDH" x="27.94" y="40.64" length="middle" direction="pwr" rot="R180"/>
<pin name="VBUS" x="27.94" y="35.56" length="middle" direction="pwr" rot="R180"/>
<pin name="DCCH" x="27.94" y="43.18" length="middle" direction="pwr" rot="R180"/>
<pin name="D-" x="27.94" y="15.24" length="middle" rot="R180"/>
<pin name="D+" x="27.94" y="17.78" length="middle" rot="R180"/>
<pin name="P0.14" x="-27.94" y="2.54" length="middle"/>
<pin name="P0.13" x="-27.94" y="5.08" length="middle"/>
<pin name="P0.16" x="-27.94" y="-2.54" length="middle"/>
<pin name="VDD" x="27.94" y="38.1" length="middle" direction="pwr" rot="R180"/>
<pin name="P0.15" x="-27.94" y="0" length="middle"/>
<pin name="P0.18/!RESET" x="-27.94" y="-7.62" length="middle"/>
<pin name="P0.17" x="-27.94" y="-5.08" length="middle"/>
<pin name="P0.19" x="-27.94" y="-10.16" length="middle"/>
<pin name="P0.20" x="-27.94" y="-12.7" length="middle"/>
<pin name="P0.21" x="-27.94" y="-15.24" length="middle"/>
<pin name="P0.22" x="-27.94" y="-17.78" length="middle"/>
<pin name="P0.23" x="-27.94" y="-20.32" length="middle"/>
<pin name="P0.24" x="-27.94" y="-22.86" length="middle"/>
<pin name="P0.25" x="-27.94" y="-25.4" length="middle"/>
<pin name="P1.00/TRACEDATA0" x="27.94" y="2.54" length="middle" rot="R180"/>
<pin name="P1.02" x="27.94" y="-2.54" length="middle" rot="R180"/>
<pin name="SWDIO" x="27.94" y="25.4" length="middle" rot="R180"/>
<pin name="P0.09/NFC1" x="-27.94" y="15.24" length="middle"/>
<pin name="SWDCLK" x="27.94" y="27.94" length="middle" direction="in" function="clk" rot="R180"/>
<pin name="P0.10/NFC2" x="-27.94" y="12.7" length="middle"/>
<pin name="P1.04" x="27.94" y="-7.62" length="middle" rot="R180"/>
<pin name="P1.06" x="27.94" y="-12.7" length="middle" rot="R180"/>
<pin name="P1.07" x="27.94" y="-15.24" length="middle" rot="R180"/>
<pin name="P1.05" x="27.94" y="-10.16" length="middle" rot="R180"/>
<pin name="P1.01" x="27.94" y="0" length="middle" rot="R180"/>
<pin name="P1.03" x="27.94" y="-5.08" length="middle" rot="R180"/>
<pin name="P0.04/AIN2" x="-27.94" y="27.94" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MDBT50Q-1MV2" prefix="U">
<description>Embedded 2.4GHz transceiver support Bluetooth V5.0 and 802.15.4 &lt;a href="https://pricing.snapeda.com/parts/MDBT50Q-1MV2/Raytac%20Corporation/view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="MDBT50Q-1MV2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="XCVR_MDBT50Q-1MV2">
<connects>
<connect gate="G$1" pin="D+" pad="35"/>
<connect gate="G$1" pin="D-" pad="34"/>
<connect gate="G$1" pin="DCCH" pad="31"/>
<connect gate="G$1" pin="GND" pad="1 2 15 33 55"/>
<connect gate="G$1" pin="P0.00/XL1" pad="17"/>
<connect gate="G$1" pin="P0.01/XL2" pad="18"/>
<connect gate="G$1" pin="P0.02/AIN0" pad="11"/>
<connect gate="G$1" pin="P0.03/AIN1" pad="9"/>
<connect gate="G$1" pin="P0.04/AIN2" pad="20"/>
<connect gate="G$1" pin="P0.05/AIN3" pad="21"/>
<connect gate="G$1" pin="P0.06" pad="22"/>
<connect gate="G$1" pin="P0.07/TRACECLK" pad="23"/>
<connect gate="G$1" pin="P0.08" pad="24"/>
<connect gate="G$1" pin="P0.09/NFC1" pad="52"/>
<connect gate="G$1" pin="P0.10/NFC2" pad="54"/>
<connect gate="G$1" pin="P0.11/TRACEDATA2" pad="27"/>
<connect gate="G$1" pin="P0.12/TRACEDATA1" pad="29"/>
<connect gate="G$1" pin="P0.13" pad="37"/>
<connect gate="G$1" pin="P0.14" pad="36"/>
<connect gate="G$1" pin="P0.15" pad="39"/>
<connect gate="G$1" pin="P0.16" pad="38"/>
<connect gate="G$1" pin="P0.17" pad="41"/>
<connect gate="G$1" pin="P0.18/!RESET" pad="40"/>
<connect gate="G$1" pin="P0.19" pad="42"/>
<connect gate="G$1" pin="P0.20" pad="44"/>
<connect gate="G$1" pin="P0.21" pad="43"/>
<connect gate="G$1" pin="P0.22" pad="46"/>
<connect gate="G$1" pin="P0.23" pad="45"/>
<connect gate="G$1" pin="P0.24" pad="48"/>
<connect gate="G$1" pin="P0.25" pad="49"/>
<connect gate="G$1" pin="P0.26" pad="19"/>
<connect gate="G$1" pin="P0.27" pad="16"/>
<connect gate="G$1" pin="P0.28/AIN4" pad="13"/>
<connect gate="G$1" pin="P0.29/AIN5" pad="10"/>
<connect gate="G$1" pin="P0.30/AIN6" pad="14"/>
<connect gate="G$1" pin="P0.31/AIN7" pad="12"/>
<connect gate="G$1" pin="P1.00/TRACEDATA0" pad="47"/>
<connect gate="G$1" pin="P1.01" pad="61"/>
<connect gate="G$1" pin="P1.02" pad="50"/>
<connect gate="G$1" pin="P1.03" pad="60"/>
<connect gate="G$1" pin="P1.04" pad="56"/>
<connect gate="G$1" pin="P1.05" pad="59"/>
<connect gate="G$1" pin="P1.06" pad="57"/>
<connect gate="G$1" pin="P1.07" pad="58"/>
<connect gate="G$1" pin="P1.08" pad="25"/>
<connect gate="G$1" pin="P1.09/TRACEDATA3" pad="26"/>
<connect gate="G$1" pin="P1.10" pad="3"/>
<connect gate="G$1" pin="P1.11" pad="4"/>
<connect gate="G$1" pin="P1.12" pad="5"/>
<connect gate="G$1" pin="P1.13" pad="6"/>
<connect gate="G$1" pin="P1.14" pad="7"/>
<connect gate="G$1" pin="P1.15" pad="8"/>
<connect gate="G$1" pin="SWDCLK" pad="53"/>
<connect gate="G$1" pin="SWDIO" pad="51"/>
<connect gate="G$1" pin="VBUS" pad="32"/>
<connect gate="G$1" pin="VDD" pad="28"/>
<connect gate="G$1" pin="VDDH" pad="30"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="In Stock"/>
<attribute name="CHECK_PRICES" value="https://www.snapeda.com/parts/MDBT50Q-1MV2/Raytac+Corporation/view-part/?ref=eda"/>
<attribute name="DESCRIPTION" value=" 802.15.4, Bluetooth Bluetooth v5.2, Zigbee® Transceiver Module 2.36GHz ~ 2.5GHz Integrated, Chip Surface Mount "/>
<attribute name="MF" value="Raytac Corporation"/>
<attribute name="MP" value="MDBT50Q-1MV2"/>
<attribute name="PACKAGE" value="SMD-61 Raytac Corporation"/>
<attribute name="PRICE" value="None"/>
<attribute name="SNAPEDA_LINK" value="https://www.snapeda.com/parts/MDBT50Q-1MV2/Raytac+Corporation/view-part/?ref=snap"/>
</technology>
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
<part name="FRAME1" library="SparkFun-Retired" deviceset="FRAME-A3" device=""/>
<part name="U1" library="MDBT50Q-1MV2" deviceset="MDBT50Q-1MV2" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="365.76" y1="132.08" x2="182.88" y2="132.08" width="0.1524" layer="97" style="shortdash"/>
<wire x1="182.88" y1="132.08" x2="182.88" y2="246.38" width="0.1524" layer="97" style="shortdash"/>
<wire x1="182.88" y1="246.38" x2="365.76" y2="246.38" width="0.1524" layer="97" style="shortdash"/>
<wire x1="365.76" y1="246.38" x2="365.76" y2="132.08" width="0.1524" layer="97" style="shortdash"/>
<text x="182.88" y="124.46" size="3.81" layer="97">nRF52840</text>
<wire x1="25.4" y1="185.42" x2="109.22" y2="185.42" width="0.1524" layer="97" style="shortdash"/>
<wire x1="109.22" y1="185.42" x2="109.22" y2="132.08" width="0.1524" layer="97" style="shortdash"/>
<wire x1="109.22" y1="132.08" x2="25.4" y2="132.08" width="0.1524" layer="97" style="shortdash"/>
<wire x1="25.4" y1="132.08" x2="25.4" y2="185.42" width="0.1524" layer="97" style="shortdash"/>
<text x="63.5" y="157.48" size="1.778" layer="97">電源系</text>
<wire x1="281.94" y1="111.76" x2="365.76" y2="111.76" width="0.1524" layer="97" style="shortdash"/>
<wire x1="365.76" y1="111.76" x2="365.76" y2="58.42" width="0.1524" layer="97" style="shortdash"/>
<wire x1="365.76" y1="58.42" x2="281.94" y2="58.42" width="0.1524" layer="97" style="shortdash"/>
<wire x1="281.94" y1="58.42" x2="281.94" y2="111.76" width="0.1524" layer="97" style="shortdash"/>
<text x="317.5" y="83.82" size="1.778" layer="97">コネクタ系</text>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0" smashed="yes">
<attribute name="DRAWING_NAME" x="319.151" y="19.431" size="2.54" layer="94" font="vector"/>
<attribute name="LAST_DATE_TIME" x="309.753" y="9.525" size="2.286" layer="94" font="vector"/>
<attribute name="SHEET" x="368.3" y="4.445" size="2.54" layer="94" font="vector"/>
</instance>
<instance part="U1" gate="G$1" x="246.38" y="187.96" smashed="yes">
<attribute name="NAME" x="223.52" y="234.442" size="1.778" layer="95"/>
<attribute name="VALUE" x="223.52" y="139.7" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>