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
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
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
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
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
<library name="USB4056-03-A_REVA2">
<packages>
<package name="GCT_USB4056-03-A_REVA2">
<circle x="-2.8" y="8" radius="0.1" width="0.2" layer="21"/>
<wire x1="-4.925" y1="-1.55" x2="4.925" y2="-1.55" width="0.2" layer="21"/>
<wire x1="-4.925" y1="-2.53" x2="-4.925" y2="7.34" width="0.1" layer="51"/>
<wire x1="4.925" y1="-2.53" x2="4.925" y2="7.34" width="0.1" layer="51"/>
<wire x1="-4.925" y1="7.34" x2="4.925" y2="7.34" width="0.1" layer="51"/>
<wire x1="-4.925" y1="-2.53" x2="4.925" y2="-2.53" width="0.1" layer="51"/>
<wire x1="-5.175" y1="-2.78" x2="-5.175" y2="7.59" width="0.05" layer="39"/>
<wire x1="-5.175" y1="-2.78" x2="5.175" y2="-2.78" width="0.05" layer="39"/>
<wire x1="-5.175" y1="7.59" x2="5.175" y2="7.59" width="0.05" layer="39"/>
<wire x1="5.175" y1="-2.78" x2="5.175" y2="7.59" width="0.05" layer="39"/>
<text x="5.5" y="-1.3" size="0.8128" layer="51" ratio="15" rot="SR0">PCB Edge</text>
<text x="-5" y="10" size="1.27" layer="25" ratio="13" rot="SR0">&gt;NAME</text>
<text x="-5" y="8.5" size="1.27" layer="27" ratio="13" rot="SR0">&gt;VALUE</text>
<wire x1="3.75" y1="5.965" x2="4.075" y2="5.64" width="0" layer="46" curve="-90"/>
<wire x1="4.075" y1="5.64" x2="3.75" y2="5.315" width="0" layer="46" curve="-90"/>
<wire x1="3.75" y1="5.315" x2="3.45" y2="5.315" width="0" layer="46"/>
<wire x1="3.45" y1="5.315" x2="3.125" y2="5.64" width="0" layer="46" curve="-90"/>
<wire x1="3.125" y1="5.64" x2="3.45" y2="5.965" width="0" layer="46" curve="-90"/>
<wire x1="3.45" y1="5.965" x2="3.75" y2="5.965" width="0" layer="46"/>
<wire x1="4.38" y1="4.7" x2="4.13" y2="4.95" width="0" layer="46" curve="90"/>
<wire x1="4.13" y1="4.95" x2="3.88" y2="4.7" width="0" layer="46" curve="90"/>
<wire x1="3.88" y1="4.7" x2="3.88" y2="4.1" width="0" layer="46"/>
<wire x1="3.88" y1="4.1" x2="4.13" y2="3.85" width="0" layer="46" curve="90"/>
<wire x1="4.13" y1="3.85" x2="4.38" y2="4.1" width="0" layer="46" curve="90"/>
<wire x1="4.38" y1="4.1" x2="4.38" y2="4.7" width="0" layer="46"/>
<wire x1="-3.88" y1="4.7" x2="-4.13" y2="4.95" width="0" layer="46" curve="90"/>
<wire x1="-4.13" y1="4.95" x2="-4.38" y2="4.7" width="0" layer="46" curve="90"/>
<wire x1="-4.38" y1="4.7" x2="-4.38" y2="4.1" width="0" layer="46"/>
<wire x1="-4.38" y1="4.1" x2="-4.13" y2="3.85" width="0" layer="46" curve="90"/>
<wire x1="-4.13" y1="3.85" x2="-3.88" y2="4.1" width="0" layer="46" curve="90"/>
<wire x1="-3.88" y1="4.1" x2="-3.88" y2="4.7" width="0" layer="46"/>
<wire x1="4.74" y1="0.3" x2="4.49" y2="0.55" width="0" layer="46" curve="90"/>
<wire x1="4.49" y1="0.55" x2="4.24" y2="0.3" width="0" layer="46" curve="90"/>
<wire x1="4.24" y1="0.3" x2="4.24" y2="-0.3" width="0" layer="46"/>
<wire x1="4.24" y1="-0.3" x2="4.49" y2="-0.55" width="0" layer="46" curve="90"/>
<wire x1="4.49" y1="-0.55" x2="4.74" y2="-0.3" width="0" layer="46" curve="90"/>
<wire x1="4.74" y1="-0.3" x2="4.74" y2="0.3" width="0" layer="46"/>
<wire x1="-4.24" y1="0.3" x2="-4.49" y2="0.55" width="0" layer="46" curve="90"/>
<wire x1="-4.49" y1="0.55" x2="-4.74" y2="0.3" width="0" layer="46" curve="90"/>
<wire x1="-4.74" y1="0.3" x2="-4.74" y2="-0.3" width="0" layer="46"/>
<wire x1="-4.74" y1="-0.3" x2="-4.49" y2="-0.55" width="0" layer="46" curve="90"/>
<wire x1="-4.49" y1="-0.55" x2="-4.24" y2="-0.3" width="0" layer="46" curve="90"/>
<wire x1="-4.24" y1="-0.3" x2="-4.24" y2="0.3" width="0" layer="46"/>
<circle x="-2.8" y="8" radius="0.1" width="0.2" layer="51"/>
<wire x1="-4.925" y1="7.34" x2="-4.925" y2="1.15" width="0.2" layer="21"/>
<wire x1="4.925" y1="1.15" x2="4.925" y2="7.34" width="0.2" layer="21"/>
<wire x1="-6" y1="-1.55" x2="6" y2="-1.55" width="0.1" layer="51"/>
<wire x1="-4.925" y1="7.34" x2="4.925" y2="7.34" width="0.2" layer="21"/>
<wire x1="-4.925" y1="-1.55" x2="-4.925" y2="-1.15" width="0.2" layer="21"/>
<wire x1="4.925" y1="-1.55" x2="4.925" y2="-1.15" width="0.2" layer="21"/>
<polygon width="0.01" layer="1">
<vertex x="-4.49" y="0.7" curve="90"/>
<vertex x="-4.89" y="0.3"/>
<vertex x="-4.89" y="-0.3" curve="90"/>
<vertex x="-4.49" y="-0.7" curve="90"/>
<vertex x="-4.09" y="-0.3"/>
<vertex x="-4.09" y="0.3" curve="90"/>
</polygon>
<polygon width="0.01" layer="16">
<vertex x="-4.49" y="0.7" curve="90"/>
<vertex x="-4.89" y="0.3"/>
<vertex x="-4.89" y="-0.3" curve="90"/>
<vertex x="-4.49" y="-0.7" curve="90"/>
<vertex x="-4.09" y="-0.3"/>
<vertex x="-4.09" y="0.3" curve="90"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="-4.49" y="0.8" curve="90"/>
<vertex x="-4.99" y="0.3"/>
<vertex x="-4.99" y="-0.3" curve="90"/>
<vertex x="-4.49" y="-0.8" curve="90"/>
<vertex x="-3.99" y="-0.3"/>
<vertex x="-3.99" y="0.3" curve="90"/>
</polygon>
<polygon width="0.01" layer="30">
<vertex x="-4.49" y="0.8" curve="90"/>
<vertex x="-4.99" y="0.3"/>
<vertex x="-4.99" y="-0.3" curve="90"/>
<vertex x="-4.49" y="-0.8" curve="90"/>
<vertex x="-3.99" y="-0.3"/>
<vertex x="-3.99" y="0.3" curve="90"/>
</polygon>
<polygon width="0.01" layer="1">
<vertex x="4.49" y="0.7" curve="90"/>
<vertex x="4.09" y="0.3"/>
<vertex x="4.09" y="-0.3" curve="90"/>
<vertex x="4.49" y="-0.7" curve="90"/>
<vertex x="4.89" y="-0.3"/>
<vertex x="4.89" y="0.3" curve="90"/>
</polygon>
<polygon width="0.01" layer="16">
<vertex x="4.49" y="0.7" curve="90"/>
<vertex x="4.09" y="0.3"/>
<vertex x="4.09" y="-0.3" curve="90"/>
<vertex x="4.49" y="-0.7" curve="90"/>
<vertex x="4.89" y="-0.3"/>
<vertex x="4.89" y="0.3" curve="90"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="4.49" y="0.8" curve="90"/>
<vertex x="3.99" y="0.3"/>
<vertex x="3.99" y="-0.3" curve="90"/>
<vertex x="4.49" y="-0.8" curve="90"/>
<vertex x="4.99" y="-0.3"/>
<vertex x="4.99" y="0.3" curve="90"/>
</polygon>
<polygon width="0.01" layer="30">
<vertex x="4.49" y="0.8" curve="90"/>
<vertex x="3.99" y="0.3"/>
<vertex x="3.99" y="-0.3" curve="90"/>
<vertex x="4.49" y="-0.8" curve="90"/>
<vertex x="4.99" y="-0.3"/>
<vertex x="4.99" y="0.3" curve="90"/>
</polygon>
<polygon width="0.01" layer="1">
<vertex x="-4.13" y="5.1" curve="90"/>
<vertex x="-4.53" y="4.7"/>
<vertex x="-4.53" y="4.1" curve="90"/>
<vertex x="-4.13" y="3.7" curve="90"/>
<vertex x="-3.73" y="4.1"/>
<vertex x="-3.73" y="4.7" curve="90"/>
</polygon>
<polygon width="0.01" layer="16">
<vertex x="-4.13" y="5.1" curve="90"/>
<vertex x="-4.53" y="4.7"/>
<vertex x="-4.53" y="4.1" curve="90"/>
<vertex x="-4.13" y="3.7" curve="90"/>
<vertex x="-3.73" y="4.1"/>
<vertex x="-3.73" y="4.7" curve="90"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="-4.13" y="5.2" curve="90"/>
<vertex x="-4.63" y="4.7"/>
<vertex x="-4.63" y="4.1" curve="90"/>
<vertex x="-4.13" y="3.6" curve="90"/>
<vertex x="-3.63" y="4.1"/>
<vertex x="-3.63" y="4.7" curve="90"/>
</polygon>
<polygon width="0.01" layer="30">
<vertex x="-4.13" y="5.2" curve="90"/>
<vertex x="-4.63" y="4.7"/>
<vertex x="-4.63" y="4.1" curve="90"/>
<vertex x="-4.13" y="3.6" curve="90"/>
<vertex x="-3.63" y="4.1"/>
<vertex x="-3.63" y="4.7" curve="90"/>
</polygon>
<polygon width="0.01" layer="1">
<vertex x="4.13" y="5.1" curve="90"/>
<vertex x="3.73" y="4.7"/>
<vertex x="3.73" y="4.1" curve="90"/>
<vertex x="4.13" y="3.7" curve="90"/>
<vertex x="4.53" y="4.1"/>
<vertex x="4.53" y="4.7" curve="90"/>
</polygon>
<polygon width="0.01" layer="16">
<vertex x="4.13" y="5.1" curve="90"/>
<vertex x="3.73" y="4.7"/>
<vertex x="3.73" y="4.1" curve="90"/>
<vertex x="4.13" y="3.7" curve="90"/>
<vertex x="4.53" y="4.1"/>
<vertex x="4.53" y="4.7" curve="90"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="4.13" y="5.2" curve="90"/>
<vertex x="3.63" y="4.7"/>
<vertex x="3.63" y="4.1" curve="90"/>
<vertex x="4.13" y="3.6" curve="90"/>
<vertex x="4.63" y="4.1"/>
<vertex x="4.63" y="4.7" curve="90"/>
</polygon>
<polygon width="0.01" layer="30">
<vertex x="4.13" y="5.2" curve="90"/>
<vertex x="3.63" y="4.7"/>
<vertex x="3.63" y="4.1" curve="90"/>
<vertex x="4.13" y="3.6" curve="90"/>
<vertex x="4.63" y="4.1"/>
<vertex x="4.63" y="4.7" curve="90"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="3.025" y="5.64" curve="-90"/>
<vertex x="3.45" y="6.065"/>
<vertex x="3.75" y="6.065" curve="-90"/>
<vertex x="4.175" y="5.64" curve="-90"/>
<vertex x="3.75" y="5.215"/>
<vertex x="3.45" y="5.215" curve="-90"/>
</polygon>
<polygon width="0.01" layer="30">
<vertex x="3.025" y="5.64" curve="-90"/>
<vertex x="3.45" y="6.065"/>
<vertex x="3.75" y="6.065" curve="-90"/>
<vertex x="4.175" y="5.64" curve="-90"/>
<vertex x="3.75" y="5.215"/>
<vertex x="3.45" y="5.215" curve="-90"/>
</polygon>
<smd name="A1" x="-2.75" y="6.2" dx="0.3" dy="0.9" layer="1"/>
<smd name="A2" x="-2.25" y="6.2" dx="0.3" dy="0.9" layer="1"/>
<smd name="A3" x="-1.75" y="6.2" dx="0.3" dy="0.9" layer="1"/>
<smd name="A4" x="-1.25" y="6.2" dx="0.3" dy="0.9" layer="1"/>
<smd name="A5" x="-0.75" y="6.2" dx="0.3" dy="0.9" layer="1"/>
<smd name="A6" x="-0.25" y="6.2" dx="0.3" dy="0.9" layer="1"/>
<smd name="A7" x="0.25" y="6.2" dx="0.3" dy="0.9" layer="1"/>
<smd name="A8" x="0.75" y="6.2" dx="0.3" dy="0.9" layer="1"/>
<smd name="A9" x="1.25" y="6.2" dx="0.3" dy="0.9" layer="1"/>
<smd name="A10" x="1.75" y="6.2" dx="0.3" dy="0.9" layer="1"/>
<smd name="A11" x="2.25" y="6.2" dx="0.3" dy="0.9" layer="1"/>
<smd name="A12" x="2.75" y="6.2" dx="0.3" dy="0.9" layer="1"/>
<pad name="B1" x="2.8" y="4.99" drill="0.4" diameter="0.6"/>
<pad name="B2" x="2.4" y="4.29" drill="0.4" diameter="0.6"/>
<pad name="B3" x="1.6" y="4.29" drill="0.4" diameter="0.6"/>
<pad name="B4" x="1.2" y="4.99" drill="0.4" diameter="0.6"/>
<pad name="B5" x="0.8" y="4.29" drill="0.4" diameter="0.6"/>
<pad name="B6" x="0.4" y="4.99" drill="0.4" diameter="0.6"/>
<pad name="B7" x="-0.4" y="4.99" drill="0.4" diameter="0.6"/>
<pad name="B8" x="-0.8" y="4.29" drill="0.4" diameter="0.6"/>
<pad name="B9" x="-1.2" y="4.99" drill="0.4" diameter="0.6"/>
<pad name="B10" x="-1.6" y="4.29" drill="0.4" diameter="0.6"/>
<pad name="B11" x="-2.4" y="4.29" drill="0.25" diameter="0.4064"/>
<pad name="B12" x="-2.8" y="4.99" drill="0.4" diameter="0.6"/>
<hole x="3.6" y="5.64" drill="0.65"/>
<hole x="-3.6" y="5.64" drill="0.65"/>
<pad name="S1" x="-4.13" y="4.4" drill="0.5" diameter="0.8" stop="no"/>
<pad name="S2" x="4.13" y="4.4" drill="0.5" diameter="0.8" stop="no"/>
<pad name="S3" x="-4.49" y="0" drill="0.5" diameter="0.8" stop="no"/>
<pad name="S4" x="4.49" y="0" drill="0.5" diameter="0.8" stop="no"/>
</package>
</packages>
<symbols>
<symbol name="USB4056-03-A_REVA2">
<wire x1="-12.7" y1="15.24" x2="12.7" y2="15.24" width="0.254" layer="94"/>
<wire x1="12.7" y1="15.24" x2="12.7" y2="-17.78" width="0.254" layer="94"/>
<wire x1="12.7" y1="-17.78" x2="-12.7" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-17.78" x2="-12.7" y2="15.24" width="0.254" layer="94"/>
<text x="-12.7" y="16.002" size="1.778" layer="95">&gt;NAME</text>
<text x="-12.7" y="-18.542" size="1.778" layer="96" rot="MR180">&gt;VALUE</text>
<pin name="GND_A" x="-17.78" y="-10.16" length="middle" direction="pwr"/>
<pin name="SSTXN1" x="-17.78" y="7.62" length="middle"/>
<pin name="SSTXP1" x="-17.78" y="10.16" length="middle"/>
<pin name="VBUS_A" x="-17.78" y="12.7" length="middle" direction="pwr"/>
<pin name="DP1" x="-17.78" y="2.54" length="middle"/>
<pin name="CC1" x="-17.78" y="5.08" length="middle"/>
<pin name="SBU1" x="-17.78" y="-2.54" length="middle"/>
<pin name="DN1" x="-17.78" y="0" length="middle"/>
<pin name="SSRXN2" x="-17.78" y="-5.08" length="middle"/>
<pin name="SSRXP2" x="-17.78" y="-7.62" length="middle"/>
<pin name="SHELL_GND" x="17.78" y="-15.24" length="middle" direction="pwr" rot="R180"/>
<pin name="GND_B" x="17.78" y="-10.16" length="middle" direction="pwr" rot="R180"/>
<pin name="SSTXN2" x="17.78" y="-5.08" length="middle" rot="R180"/>
<pin name="SSTXP2" x="17.78" y="-7.62" length="middle" rot="R180"/>
<pin name="VBUS_B" x="17.78" y="12.7" length="middle" direction="pwr" rot="R180"/>
<pin name="DP2" x="17.78" y="0" length="middle" rot="R180"/>
<pin name="CC2" x="17.78" y="-2.54" length="middle" rot="R180"/>
<pin name="SBU2" x="17.78" y="5.08" length="middle" rot="R180"/>
<pin name="DN2" x="17.78" y="2.54" length="middle" rot="R180"/>
<pin name="SSRXN1" x="17.78" y="7.62" length="middle" rot="R180"/>
<pin name="SSRXP1" x="17.78" y="10.16" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="USB4056-03-A_REVA2" prefix="J">
<description> &lt;a href="https://pricing.snapeda.com/parts/USB4056-03-A/Global%20Connector%20Technology/view-part?ref=eda"&gt;Check availability&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="USB4056-03-A_REVA2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="GCT_USB4056-03-A_REVA2">
<connects>
<connect gate="G$1" pin="CC1" pad="A5"/>
<connect gate="G$1" pin="CC2" pad="B5"/>
<connect gate="G$1" pin="DN1" pad="A7"/>
<connect gate="G$1" pin="DN2" pad="B7"/>
<connect gate="G$1" pin="DP1" pad="A6"/>
<connect gate="G$1" pin="DP2" pad="B6"/>
<connect gate="G$1" pin="GND_A" pad="A1 A12"/>
<connect gate="G$1" pin="GND_B" pad="B1 B12"/>
<connect gate="G$1" pin="SBU1" pad="A8"/>
<connect gate="G$1" pin="SBU2" pad="B8"/>
<connect gate="G$1" pin="SHELL_GND" pad="S1 S2 S3 S4"/>
<connect gate="G$1" pin="SSRXN1" pad="B10"/>
<connect gate="G$1" pin="SSRXN2" pad="A10"/>
<connect gate="G$1" pin="SSRXP1" pad="B11"/>
<connect gate="G$1" pin="SSRXP2" pad="A11"/>
<connect gate="G$1" pin="SSTXN1" pad="A3"/>
<connect gate="G$1" pin="SSTXN2" pad="B3"/>
<connect gate="G$1" pin="SSTXP1" pad="A2"/>
<connect gate="G$1" pin="SSTXP2" pad="B2"/>
<connect gate="G$1" pin="VBUS_A" pad="A4 A9"/>
<connect gate="G$1" pin="VBUS_B" pad="B4 B9"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="In Stock"/>
<attribute name="CHECK_PRICES" value="https://www.snapeda.com/parts/USB4056-03-A/Global+Connector+Technology/view-part/?ref=eda"/>
<attribute name="DESCRIPTION" value=" USB-C (USB TYPE-C) USB 3.2 Gen 2 (USB 3.1 Gen 2, Superspeed + (USB 3.1)) Receptacle Connector 24 Position Surface Mount, Right Angle; Through Hole "/>
<attribute name="MF" value="Global Connector Technology"/>
<attribute name="MP" value="USB4056-03-A"/>
<attribute name="PACKAGE" value="None"/>
<attribute name="PRICE" value="None"/>
<attribute name="SNAPEDA_LINK" value="https://www.snapeda.com/parts/USB4056-03-A/Global+Connector+Technology/view-part/?ref=snap"/>
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
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="J1" library="USB4056-03-A_REVA2" deviceset="USB4056-03-A_REVA2" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="365.76" y1="43.18" x2="165.1" y2="43.18" width="0.1524" layer="97" style="shortdash"/>
<wire x1="165.1" y1="43.18" x2="165.1" y2="246.38" width="0.1524" layer="97" style="shortdash"/>
<wire x1="165.1" y1="246.38" x2="365.76" y2="246.38" width="0.1524" layer="97" style="shortdash"/>
<wire x1="365.76" y1="246.38" x2="365.76" y2="43.18" width="0.1524" layer="97" style="shortdash"/>
<text x="167.64" y="35.56" size="3.81" layer="97">nRF52840</text>
<wire x1="25.4" y1="185.42" x2="109.22" y2="185.42" width="0.1524" layer="97" style="shortdash"/>
<wire x1="109.22" y1="185.42" x2="109.22" y2="132.08" width="0.1524" layer="97" style="shortdash"/>
<wire x1="109.22" y1="132.08" x2="25.4" y2="132.08" width="0.1524" layer="97" style="shortdash"/>
<wire x1="25.4" y1="132.08" x2="25.4" y2="185.42" width="0.1524" layer="97" style="shortdash"/>
<text x="63.5" y="157.48" size="1.778" layer="97">電源系</text>
<wire x1="304.8" y1="104.14" x2="355.6" y2="104.14" width="0.1524" layer="97" style="shortdash"/>
<wire x1="355.6" y1="104.14" x2="355.6" y2="55.88" width="0.1524" layer="97" style="shortdash"/>
<wire x1="355.6" y1="55.88" x2="304.8" y2="55.88" width="0.1524" layer="97" style="shortdash"/>
<wire x1="304.8" y1="55.88" x2="304.8" y2="104.14" width="0.1524" layer="97" style="shortdash"/>
<text x="309.88" y="53.34" size="1.778" layer="97">USB TypeC</text>
<text x="304.8" y="106.68" size="1.778" layer="97">fixme : typc-c usbd+も出せるようにして</text>
<wire x1="223.52" y1="104.14" x2="294.64" y2="104.14" width="0.1524" layer="97" style="shortdash"/>
<wire x1="294.64" y1="104.14" x2="294.64" y2="55.88" width="0.1524" layer="97" style="shortdash"/>
<wire x1="294.64" y1="55.88" x2="223.52" y2="55.88" width="0.1524" layer="97" style="shortdash"/>
<wire x1="223.52" y1="55.88" x2="223.52" y2="104.14" width="0.1524" layer="97" style="shortdash"/>
<text x="248.92" y="53.34" size="1.778" layer="97">USB TypeC</text>
<text x="243.84" y="106.68" size="1.778" layer="97">fixme : typc-c usbd+も出せるようにして</text>
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
<instance part="GND1" gate="1" x="276.86" y="137.16" smashed="yes">
<attribute name="VALUE" x="274.32" y="134.62" size="1.778" layer="96"/>
</instance>
<instance part="GND2" gate="1" x="340.36" y="63.5" smashed="yes">
<attribute name="VALUE" x="337.82" y="60.96" size="1.778" layer="96"/>
</instance>
<instance part="GND3" gate="1" x="279.4" y="63.5" smashed="yes">
<attribute name="VALUE" x="276.86" y="60.96" size="1.778" layer="96"/>
</instance>
<instance part="J1" gate="G$1" x="248.92" y="83.82" smashed="yes">
<attribute name="NAME" x="236.22" y="99.822" size="1.778" layer="95"/>
<attribute name="VALUE" x="236.22" y="65.278" size="1.778" layer="96" rot="MR180"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="GND"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="274.32" y1="144.78" x2="276.86" y2="144.78" width="0.1524" layer="91"/>
<wire x1="276.86" y1="144.78" x2="276.86" y2="139.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="330.2" y1="76.2" x2="340.36" y2="76.2" width="0.1524" layer="91"/>
<wire x1="340.36" y1="76.2" x2="340.36" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="269.24" y1="76.2" x2="279.4" y2="76.2" width="0.1524" layer="91"/>
<wire x1="279.4" y1="76.2" x2="279.4" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VBUS" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="VBUS"/>
<wire x1="274.32" y1="223.52" x2="281.94" y2="223.52" width="0.1524" layer="91"/>
<label x="281.94" y="223.52" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="USBD+" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="D+"/>
<wire x1="274.32" y1="205.74" x2="281.94" y2="205.74" width="0.1524" layer="91"/>
<label x="281.94" y="205.74" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="USBD-" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="D-"/>
<wire x1="274.32" y1="203.2" x2="281.94" y2="203.2" width="0.1524" layer="91"/>
<label x="281.94" y="203.2" size="1.27" layer="95" xref="yes"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<wire x1="330.2" y1="88.9" x2="340.36" y2="88.9" width="0.1524" layer="91"/>
<wire x1="340.36" y1="88.9" x2="340.36" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<wire x1="330.2" y1="83.82" x2="340.36" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="330.2" y1="81.28" x2="340.36" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<wire x1="269.24" y1="88.9" x2="279.4" y2="88.9" width="0.1524" layer="91"/>
<wire x1="279.4" y1="88.9" x2="279.4" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="269.24" y1="83.82" x2="279.4" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="269.24" y1="81.28" x2="279.4" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
