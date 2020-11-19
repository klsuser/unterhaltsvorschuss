<?xml version="1.0" encoding="us-ascii"?>
<out:stylesheet xmlns:out="http://www.w3.org/1999/XSL/Transform" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://xmlns.cit.de/assistants/store" xmlns:s="http://xmlns.cit.de/assistants/store" xmlns:a="http://xmlns.cit.de/assistants/internal" xmlns:t="http://xmlns.cit.de/intelliform/transaction" xmlns:a2="http://xmlns.cit.de/assistants/store#attributes" xmlns:java="http://xml.apache.org/xslt/java" version="1.0" exclude-result-prefixes="xsl s a" extension-element-prefixes="java">
   <out:template match="/*">
      <data class="de.cit.assistants.DataBean" name="myForm">
         <out:if test="@t:form-version">
            <out:attribute name="version">
               <out:value-of select="@t:form-version"/>
            </out:attribute>
         </out:if>
         <out:for-each select="monat">
            <field name="monat" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="ja_nein_feld">
            <field name="ja_nein_feld" type="boolean">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="eid">
            <field name="eid" type="boolean">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="id_feld">
            <field name="id_feld" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="antragsteller">
            <group name="antragsteller">
               <out:for-each select="F00000013_h">
                  <field name="F00000013_h" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="F00000045_h">
                  <field name="F00000045_h" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="F00000014_h">
                  <field name="F00000014_h" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="F00000066_h">
                  <field name="F00000066_h" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="myage">
                  <field name="myage" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:if test="@xsi:type">
                        <out:attribute name="type">
                           <out:value-of select="@xsi:type"/>
                        </out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="f00000043">
                  <field name="f00000043" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:if test="@xsi:type">
                        <out:attribute name="type">
                           <out:value-of select="@xsi:type"/>
                        </out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="f00000013">
                  <field name="f00000013" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:if test="@xsi:type">
                        <out:attribute name="type">
                           <out:value-of select="@xsi:type"/>
                        </out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="f00000045">
                  <field name="f00000045" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:if test="@xsi:type">
                        <out:attribute name="type">
                           <out:value-of select="@xsi:type"/>
                        </out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="f00000014">
                  <field name="f00000014" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:if test="@xsi:type">
                        <out:attribute name="type">
                           <out:value-of select="@xsi:type"/>
                        </out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="f00000066">
                  <field name="f00000066" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:if test="@xsi:type">
                        <out:attribute name="type">
                           <out:value-of select="@xsi:type"/>
                        </out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="f00000067">
                  <field name="f00000067" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:if test="@xsi:type">
                        <out:attribute name="type">
                           <out:value-of select="@xsi:type"/>
                        </out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="geschlecht">
                  <field name="geschlecht" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="beruf">
                  <field name="beruf" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="arbeitgeber">
                  <field name="arbeitgeber" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="geburtsort">
                  <field name="geburtsort" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="staatsangehoerigkeit">
                  <field name="staatsangehoerigkeit" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="wohnhaftinberlin">
                  <field name="wohnhaftinberlin" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="strassenichtberlin">
                  <field name="strassenichtberlin" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="hausnummernichtberlin">
                  <field name="hausnummernichtberlin" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="postleitzahlnichtberlin">
                  <field name="postleitzahlnichtberlin" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="ortnichtberlin">
                  <field name="ortnichtberlin" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="f00000053">
                  <field name="f00000053" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:if test="@xsi:type">
                        <out:attribute name="type">
                           <out:value-of select="@xsi:type"/>
                        </out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="onlyberlin">
                  <field name="onlyberlin" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="beznrh">
                  <field name="beznrh" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="objtype">
                  <field name="objtype" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="F00000053h">
                  <field name="F00000053h" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="F00000016h">
                  <field name="F00000016h" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="f00000016">
                  <field name="f00000016" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:if test="@xsi:type">
                        <out:attribute name="type">
                           <out:value-of select="@xsi:type"/>
                        </out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="F00000084h">
                  <field name="F00000084h" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="f00000084">
                  <field name="f00000084" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:if test="@xsi:type">
                        <out:attribute name="type">
                           <out:value-of select="@xsi:type"/>
                        </out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="hnrh">
                  <field name="hnrh" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="hnr">
                  <field name="hnr" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:if test="@xsi:type">
                        <out:attribute name="type">
                           <out:value-of select="@xsi:type"/>
                        </out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="F00000054h">
                  <field name="F00000054h" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="f00000054">
                  <field name="f00000054" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:if test="@xsi:type">
                        <out:attribute name="type">
                           <out:value-of select="@xsi:type"/>
                        </out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="otname">
                  <field name="otname" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="bzrname">
                  <field name="bzrname" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="otnr">
                  <field name="otnr" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="bzrnr">
                  <field name="bzrnr" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="F00000035h">
                  <field name="F00000035h" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="strnr">
                  <field name="strnr" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="f00000035">
                  <field name="f00000035" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:if test="@xsi:type">
                        <out:attribute name="type">
                           <out:value-of select="@xsi:type"/>
                        </out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="landh">
                  <field name="landh" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="land">
                  <field name="land" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:if test="@xsi:type">
                        <out:attribute name="type">
                           <out:value-of select="@xsi:type"/>
                        </out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="k1000">
                  <field name="k1000" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="k5000">
                  <field name="k5000" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="xstat">
                  <field name="xstat" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="ystat">
                  <field name="ystat" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="etrs89_x">
                  <field name="etrs89_x" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="etrs89_y">
                  <field name="etrs89_y" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="rbs_valid">
                  <field name="rbs_valid" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:if test="@xsi:type">
                        <out:attribute name="type">
                           <out:value-of select="@xsi:type"/>
                        </out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="dortwohnhaftseit">
                  <field name="dortwohnhaftseit" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="telefon">
                  <field name="telefon" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="ausweisung">
                  <field name="ausweisung" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="ausweisnr">
                  <field name="ausweisnr" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="gueltigbis">
                  <field name="gueltigbis" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="kontovorhanden">
                  <field name="kontovorhanden" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="bankname">
                  <field name="bankname" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="kontoinhaber">
                  <field name="kontoinhaber" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="F00000106">
                  <field name="F00000106" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="beznum">
                  <field name="beznum" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="otnum">
                  <field name="otnum" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="selectdistrict">
                  <field name="selectdistrict" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:if test="@xsi:type">
                        <out:attribute name="type">
                           <out:value-of select="@xsi:type"/>
                        </out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
            </group>
         </out:for-each>
         <out:for-each select="antragstellerweitere">
            <group name="antragstellerweitere">
               <out:for-each select="familienstand">
                  <field name="familienstand" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vomanderenelternteilgetrennt">
                  <field name="vomanderenelternteilgetrennt" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="geschiedenseit">
                  <field name="geschiedenseit" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="nichtmehringleichgeschlechtlicherlebenspartnerschaftseit">
                  <field name="nichtmehringleichgeschlechtlicherlebenspartnerschaftseit" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="verwitwetseit">
                  <field name="verwitwetseit" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vonelternteilgetrenntseit">
                  <field name="vonelternteilgetrenntseit" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vomehegattenehegattingetrenntseit">
                  <field name="vomehegattenehegattingetrenntseit" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vonehepartnergetrenntweil">
                  <field name="vonehepartnergetrenntweil" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="geschlecht">
                  <field name="geschlecht" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="name">
                  <field name="name" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vorname">
                  <field name="vorname" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="geburtsdatum">
                  <field name="geburtsdatum" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="strasse">
                  <field name="strasse" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="hausnummer">
                  <field name="hausnummer" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="postleitzahl">
                  <field name="postleitzahl" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="ort">
                  <field name="ort" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="land">
                  <field name="land" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
            </group>
         </out:for-each>
         <out:for-each select="kind">
            <group name="kind">
               <out:for-each select="geschlecht">
                  <field name="geschlecht" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="name">
                  <field name="name" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vorname">
                  <field name="vorname" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="geburtsdatum">
                  <field name="geburtsdatum" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="geburtsort">
                  <field name="geburtsort" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="staatsangehoerigkeit">
                  <field name="staatsangehoerigkeit" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="aufenthaltstitelgueltigbis">
                  <field name="aufenthaltstitelgueltigbis" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="leistungsbezugnachuvg">
                  <field name="leistungsbezugnachuvg" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="leistungsbezugbehoerde">
                  <field name="leistungsbezugbehoerde" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="leistungsbezugvon">
                  <field name="leistungsbezugvon" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="leistungsbezugbis">
                  <field name="leistungsbezugbis" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="waisenrente">
                  <field name="waisenrente" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="waisenrentehoehe">
                  <field name="waisenrentehoehe" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:attribute name="currency">
                        <out:choose>
                           <out:when test="@currency">
                              <out:value-of select="@currency"/>
                           </out:when>
                           <out:otherwise>EUR</out:otherwise>
                        </out:choose>
                     </out:attribute>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="waisenrenteleistungsstelle">
                  <field name="waisenrenteleistungsstelle" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="antragwaisenbezuegegestelltam">
                  <field name="antragwaisenbezuegegestelltam" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="waisenbezuegebehoerde">
                  <field name="waisenbezuegebehoerde" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="waisenbezuegeaktenzeichen">
                  <field name="waisenbezuegeaktenzeichen" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="hilfelebensunterhalt">
                  <field name="hilfelebensunterhalt" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="hilfelebensunterhaltnr">
                  <field name="hilfelebensunterhaltnr" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="hilfelebensunterhaltbegruendung">
                  <field name="hilfelebensunterhaltbegruendung" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
            </group>
         </out:for-each>
         <out:for-each select="kindueber12">
            <group name="kindueber12">
               <out:for-each select="leistungenjobcenter">
                  <field name="leistungenjobcenter" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="kinderwohngeld">
                  <field name="kinderwohngeld" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="erzielungbruttoeinkommen">
                  <field name="erzielungbruttoeinkommen" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="kindschule">
                  <field name="kindschule" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="schulebeendet">
                  <field name="schulebeendet" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="schulevoraussichtlichesende">
                  <field name="schulevoraussichtlichesende" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="schulebeendetseit">
                  <field name="schulebeendetseit" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="kindabschluss">
                  <field name="kindabschluss" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="ausbildungsbeginn">
                  <field name="ausbildungsbeginn" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="ausbildungals">
                  <field name="ausbildungals" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="ausbildungvoraussichtlichesende">
                  <field name="ausbildungvoraussichtlichesende" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="ausbildungsverguetung">
                  <field name="ausbildungsverguetung" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:attribute name="currency">
                        <out:choose>
                           <out:when test="@currency">
                              <out:value-of select="@currency"/>
                           </out:when>
                           <out:otherwise>EUR</out:otherwise>
                        </out:choose>
                     </out:attribute>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="ausbildungunterkunft">
                  <field name="ausbildungunterkunft" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="kinderwerbstaetigkeit">
                  <field name="kinderwerbstaetigkeit" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="verguetungerwerbstaetigkeit">
                  <field name="verguetungerwerbstaetigkeit" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:attribute name="currency">
                        <out:choose>
                           <out:when test="@currency">
                              <out:value-of select="@currency"/>
                           </out:when>
                           <out:otherwise>EUR</out:otherwise>
                        </out:choose>
                     </out:attribute>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="kindeinkuenfte">
                  <field name="kindeinkuenfte" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="kindhalbwaisenrente">
                  <field name="kindhalbwaisenrente" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="halbwaisenrentehoehe">
                  <field name="halbwaisenrentehoehe" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:attribute name="currency">
                        <out:choose>
                           <out:when test="@currency">
                              <out:value-of select="@currency"/>
                           </out:when>
                           <out:otherwise>EUR</out:otherwise>
                        </out:choose>
                     </out:attribute>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="schadensersatzleistungen">
                  <field name="schadensersatzleistungen" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="nichtselbststaendigearbeit">
                  <field name="nichtselbststaendigearbeit" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="selbststaendigearbeit">
                  <field name="selbststaendigearbeit" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="kapitalvermoegen">
                  <field name="kapitalvermoegen" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="erlernterberuf">
                  <field name="erlernterberuf" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="ausgeuebtetaetigkeit">
                  <field name="ausgeuebtetaetigkeit" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="monatlichesnettoeinkommen">
                  <field name="monatlichesnettoeinkommen" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:attribute name="currency">
                        <out:choose>
                           <out:when test="@currency">
                              <out:value-of select="@currency"/>
                           </out:when>
                           <out:otherwise>EUR</out:otherwise>
                        </out:choose>
                     </out:attribute>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="steuerklasse">
                  <group name="steuerklasse" type="multiple">
                     <out:for-each select="*">
                        <field type="boolean">
                           <out:attribute name="name">
                              <out:value-of select="local-name()"/>
                           </out:attribute>
                           <out:value-of select="."/>
                        </field>
                        <out:if test="local-name()='other' or starts-with(local-name(), 'other_')">
                           <field type="text">
                              <out:attribute name="name">
                                 <out:value-of select="local-name()"/>
                                 <out:text>/@label</out:text>
                              </out:attribute>
                              <out:value-of select="@label"/>
                           </field>
                        </out:if>
                     </out:for-each>
                  </group>
               </out:for-each>
               <out:for-each select="kinderfreibetrag">
                  <field name="kinderfreibetrag" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:attribute name="currency">
                        <out:choose>
                           <out:when test="@currency">
                              <out:value-of select="@currency"/>
                           </out:when>
                           <out:otherwise>EUR</out:otherwise>
                        </out:choose>
                     </out:attribute>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
            </group>
         </out:for-each>
         <out:for-each select="vormundschaft">
            <group name="vormundschaft">
               <out:for-each select="beistandschaft">
                  <field name="beistandschaft" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="beistandschaftseit">
                  <field name="beistandschaftseit" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="beistandschaftbeantragtam">
                  <field name="beistandschaftbeantragtam" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="beistandschaftbehoerde">
                  <field name="beistandschaftbehoerde" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="beistandschaftgeschzeichen">
                  <field name="beistandschaftgeschzeichen" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="beistandauskunftserteilung">
                  <field name="beistandauskunftserteilung" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="beauftragungrechtsanwaltsbuero">
                  <field name="beauftragungrechtsanwaltsbuero" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="name">
                  <field name="name" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="strasse">
                  <field name="strasse" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="hausnummer">
                  <field name="hausnummer" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="postleitzahl">
                  <field name="postleitzahl" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="ort">
                  <field name="ort" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="aktenzeichen">
                  <field name="aktenzeichen" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="beauftragtmit">
                  <group name="beauftragtmit" type="multiple">
                     <out:for-each select="*">
                        <field type="boolean">
                           <out:attribute name="name">
                              <out:value-of select="local-name()"/>
                           </out:attribute>
                           <out:value-of select="."/>
                        </field>
                        <out:if test="local-name()='other' or starts-with(local-name(), 'other_')">
                           <field type="text">
                              <out:attribute name="name">
                                 <out:value-of select="local-name()"/>
                                 <out:text>/@label</out:text>
                              </out:attribute>
                              <out:value-of select="@label"/>
                           </field>
                        </out:if>
                     </out:for-each>
                  </group>
               </out:for-each>
            </group>
         </out:for-each>
         <out:for-each select="andererelternteil1">
            <group name="andererelternteil1">
               <out:for-each select="kindehelich">
                  <field name="kindehelich" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vaterschaftnichtfeststellbarweil">
                  <field name="vaterschaftnichtfeststellbarweil" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vaterschaftanerkannt">
                  <field name="vaterschaftanerkannt" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="antragauffeststellungvaterschaft">
                  <field name="antragauffeststellungvaterschaft" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vaterschaftsfeststellungsverfahrenbei">
                  <field name="vaterschaftsfeststellungsverfahrenbei" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vaterschaftnochnichtfestgestelltweil">
                  <field name="vaterschaftnochnichtfestgestelltweil" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="ehemannvater">
                  <field name="ehemannvater" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vaterschaftsanfechtungsklage">
                  <field name="vaterschaftsanfechtungsklage" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vaterschaftsanfechtungsklageamtsgericht">
                  <field name="vaterschaftsanfechtungsklageamtsgericht" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="geschlecht">
                  <field name="geschlecht" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="name">
                  <field name="name" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vorname">
                  <field name="vorname" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="strasse">
                  <field name="strasse" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="hausnummer">
                  <field name="hausnummer" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="postleitzahl">
                  <field name="postleitzahl" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="ort">
                  <field name="ort" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="land">
                  <field name="land" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="geburtsdatum">
                  <field name="geburtsdatum" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="familienstand">
                  <field name="familienstand" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="staatsangehoerigkeit">
                  <field name="staatsangehoerigkeit" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="geburtsort">
                  <field name="geburtsort" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="geburtsland">
                  <field name="geburtsland" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="telefon">
                  <field name="telefon" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
            </group>
         </out:for-each>
         <out:for-each select="andererelternteil2">
            <group name="andererelternteil2">
               <out:for-each select="schulabschluss">
                  <field name="schulabschluss" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="berufsausbildungkeine">
                  <field name="berufsausbildungkeine" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="berufsausbildungnichtbekannt">
                  <field name="berufsausbildungnichtbekannt" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="lehre">
                  <field name="lehre" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="lehreals">
                  <field name="lehreals" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="lehreabgebrochen">
                  <field name="lehreabgebrochen" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="fachschulausbildung">
                  <field name="fachschulausbildung" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="fachschulausbildungals">
                  <field name="fachschulausbildungals" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="fachschulausbildungabgebrochen">
                  <field name="fachschulausbildungabgebrochen" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="studium">
                  <field name="studium" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="studiumals">
                  <field name="studiumals" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="studiumabgebrochen">
                  <field name="studiumabgebrochen" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="ausbildungstudiumanerkanntindtl">
                  <field name="ausbildungstudiumanerkanntindtl" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="ausbildungstudiumanerkanntin">
                  <field name="ausbildungstudiumanerkanntin" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="ausbildungstudiumdauertnochan">
                  <field name="ausbildungstudiumdauertnochan" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="ausbildungstudiumbis">
                  <field name="ausbildungstudiumbis" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="aktuelleberuflichetaetigkeit">
                  <field name="aktuelleberuflichetaetigkeit" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="beruflichetaetigkeitseit">
                  <field name="beruflichetaetigkeitseit" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="beruflichetaetigkeitbis">
                  <field name="beruflichetaetigkeitbis" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="arbeitgeber">
                  <field name="arbeitgeber" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="aktuellesnettoeinkommen">
                  <field name="aktuellesnettoeinkommen" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:attribute name="currency">
                        <out:choose>
                           <out:when test="@currency">
                              <out:value-of select="@currency"/>
                           </out:when>
                           <out:otherwise>EUR</out:otherwise>
                        </out:choose>
                     </out:attribute>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="taetigkeitbeendet">
                  <field name="taetigkeitbeendet" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="beendigungaufgrund">
                  <field name="beendigungaufgrund" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="beendigunggruende">
                  <field name="beendigunggruende" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="arbeitslos">
                  <field name="arbeitslos" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="arbeitslosseit">
                  <field name="arbeitslosseit" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="arbeitsunfaehigerkrankt">
                  <field name="arbeitsunfaehigerkrankt" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="arbeitsunfaehigerkranktseit">
                  <field name="arbeitsunfaehigerkranktseit" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="erwerbsunfaehig">
                  <field name="erwerbsunfaehig" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="erwerbsunfaehigseit">
                  <field name="erwerbsunfaehigseit" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
            </group>
         </out:for-each>
         <out:for-each select="andererelternteil3">
            <group name="andererelternteil3">
               <out:for-each select="bezugalg">
                  <field name="bezugalg" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="algleistungsstelle">
                  <field name="algleistungsstelle" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="alghoehe">
                  <field name="alghoehe" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:attribute name="currency">
                        <out:choose>
                           <out:when test="@currency">
                              <out:value-of select="@currency"/>
                           </out:when>
                           <out:otherwise>EUR</out:otherwise>
                        </out:choose>
                     </out:attribute>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="bezugalgii">
                  <field name="bezugalgii" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="algiileistungsstelle">
                  <field name="algiileistungsstelle" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="algiihoehe">
                  <field name="algiihoehe" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:attribute name="currency">
                        <out:choose>
                           <out:when test="@currency">
                              <out:value-of select="@currency"/>
                           </out:when>
                           <out:otherwise>EUR</out:otherwise>
                        </out:choose>
                     </out:attribute>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="bezugkrankengeld">
                  <field name="bezugkrankengeld" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="krankengeldleistungsstelle">
                  <field name="krankengeldleistungsstelle" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="krankengeldhoehe">
                  <field name="krankengeldhoehe" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:attribute name="currency">
                        <out:choose>
                           <out:when test="@currency">
                              <out:value-of select="@currency"/>
                           </out:when>
                           <out:otherwise>EUR</out:otherwise>
                        </out:choose>
                     </out:attribute>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="bezugrente">
                  <field name="bezugrente" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="renteleistungsstelle">
                  <field name="renteleistungsstelle" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="rentehoehe">
                  <field name="rentehoehe" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:attribute name="currency">
                        <out:choose>
                           <out:when test="@currency">
                              <out:value-of select="@currency"/>
                           </out:when>
                           <out:otherwise>EUR</out:otherwise>
                        </out:choose>
                     </out:attribute>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="bezugsozialhilfe">
                  <field name="bezugsozialhilfe" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="sozialhilfeleistungsstelle">
                  <field name="sozialhilfeleistungsstelle" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="sozialhilfehoehe">
                  <field name="sozialhilfehoehe" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:attribute name="currency">
                        <out:choose>
                           <out:when test="@currency">
                              <out:value-of select="@currency"/>
                           </out:when>
                           <out:otherwise>EUR</out:otherwise>
                        </out:choose>
                     </out:attribute>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="krankenkasse">
                  <field name="krankenkasse" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="rentenversicherungstraeger">
                  <field name="rentenversicherungstraeger" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="sonstigesozialversicherung">
                  <field name="sonstigesozialversicherung" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="einkommenausnebentaetigkeit">
                  <field name="einkommenausnebentaetigkeit" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="einkommennebentaetigkeithoehe">
                  <field name="einkommennebentaetigkeithoehe" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:attribute name="currency">
                        <out:choose>
                           <out:when test="@currency">
                              <out:value-of select="@currency"/>
                           </out:when>
                           <out:otherwise>EUR</out:otherwise>
                        </out:choose>
                     </out:attribute>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="einkommenausvermietung">
                  <field name="einkommenausvermietung" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="einkommenvermietunghoehe">
                  <field name="einkommenvermietunghoehe" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:attribute name="currency">
                        <out:choose>
                           <out:when test="@currency">
                              <out:value-of select="@currency"/>
                           </out:when>
                           <out:otherwise>EUR</out:otherwise>
                        </out:choose>
                     </out:attribute>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="sonstigeeinkommensumme">
                  <field name="sonstigeeinkommensumme" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:if test="@xsi:type">
                        <out:attribute name="type">
                           <out:value-of select="@xsi:type"/>
                        </out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="sonstigeseinkommenerlaeuterung">
                  <field name="sonstigeseinkommenerlaeuterung" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="grundbesitz">
                  <field name="grundbesitz" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="grundbesitzstrasse">
                  <field name="grundbesitzstrasse" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="grundbesitzhausnummer">
                  <field name="grundbesitzhausnummer" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="grundbesitzpostleitzahl">
                  <field name="grundbesitzpostleitzahl" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="grundbesitzort">
                  <field name="grundbesitzort" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="grundbesitzland">
                  <field name="grundbesitzland" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="kapitallebensversicherung">
                  <field name="kapitallebensversicherung" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="kapitallebensversicherungbei">
                  <field name="kapitallebensversicherungbei" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="sparguthaben">
                  <field name="sparguthaben" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="sparguthabenbei">
                  <field name="sparguthabenbei" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="wertpapiere">
                  <field name="wertpapiere" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="wertpapierebei">
                  <field name="wertpapierebei" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="girokonto">
                  <field name="girokonto" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="girokontobei">
                  <field name="girokontobei" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="F00000106">
                  <field name="F00000106" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="pkw">
                  <field name="pkw" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="pkwmarke">
                  <field name="pkwmarke" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="pkwkennzeichen">
                  <field name="pkwkennzeichen" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="pkwwert">
                  <field name="pkwwert" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:attribute name="currency">
                        <out:choose>
                           <out:when test="@currency">
                              <out:value-of select="@currency"/>
                           </out:when>
                           <out:otherwise>EUR</out:otherwise>
                        </out:choose>
                     </out:attribute>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vermoegensonstiges">
                  <field name="vermoegensonstiges" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vermoegensonstigeserlaeuterung">
                  <field name="vermoegensonstigeserlaeuterung" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="schwerbehinderung">
                  <field name="schwerbehinderung" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="behinderungsgrad">
                  <field name="behinderungsgrad" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="behinderungbekannt">
                  <field name="behinderungbekannt" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="behinderungsonstiges">
                  <field name="behinderungsonstiges" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="behinderungsonstigesausfuehrung">
                  <field name="behinderungsonstigesausfuehrung" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="weitere_unterhaltsverpflichtungen">
                  <list name="weitere_unterhaltsverpflichtungen" protected="true" type="table">
                     <out:for-each select="weitere_unterhaltsverpflichtungen-item">
                        <item>
                           <out:for-each select="berechtigtername">
                              <field name="berechtigtername" type="string">
                                 <out:if test="string-length(normalize-space(.))=0">
                                    <out:attribute name="type">string</out:attribute>
                                 </out:if>
                                 <out:apply-templates select="@*"/>
                                 <out:value-of select="."/>
                              </field>
                           </out:for-each>
                           <out:for-each select="berechtigtervorname">
                              <field name="berechtigtervorname" type="string">
                                 <out:if test="string-length(normalize-space(.))=0">
                                    <out:attribute name="type">string</out:attribute>
                                 </out:if>
                                 <out:apply-templates select="@*"/>
                                 <out:value-of select="."/>
                              </field>
                           </out:for-each>
                           <out:for-each select="berechtigtergeburtsdatum">
                              <field name="berechtigtergeburtsdatum" type="date">
                                 <out:if test="string-length(normalize-space(.))=0">
                                    <out:attribute name="type">string</out:attribute>
                                 </out:if>
                                 <out:apply-templates select="@*"/>
                                 <out:value-of select="."/>
                              </field>
                           </out:for-each>
                           <out:for-each select="berechtigterunterhalt">
                              <field name="berechtigterunterhalt" type="decimal">
                                 <out:if test="string-length(normalize-space(.))=0">
                                    <out:attribute name="type">string</out:attribute>
                                 </out:if>
                                 <out:attribute name="currency">
                                    <out:choose>
                                       <out:when test="@currency">
                                          <out:value-of select="@currency"/>
                                       </out:when>
                                       <out:otherwise>EUR</out:otherwise>
                                    </out:choose>
                                 </out:attribute>
                                 <out:apply-templates select="@*"/>
                                 <out:value-of select="."/>
                              </field>
                           </out:for-each>
                        </item>
                     </out:for-each>
                     <field masked="false" name="length" type="number">
                        <out:value-of select="count(weitere_unterhaltsverpflichtungen-item)"/>
                     </field>
                     <option name="visible" value="true" type="boolean" masked="false"/>
                  </list>
               </out:for-each>
               <out:for-each select="schulden">
                  <field name="schulden" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="schuldenbei">
                  <field name="schuldenbei" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="schuldenhoehe">
                  <field name="schuldenhoehe" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:attribute name="currency">
                        <out:choose>
                           <out:when test="@currency">
                              <out:value-of select="@currency"/>
                           </out:when>
                           <out:otherwise>EUR</out:otherwise>
                        </out:choose>
                     </out:attribute>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="insolvenzverfahren">
                  <field name="insolvenzverfahren" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="schuldnerberatung">
                  <field name="schuldnerberatung" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vermoegensauskunft">
                  <field name="vermoegensauskunft" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vermoegensauskunfterlaeuterung">
                  <field name="vermoegensauskunfterlaeuterung" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="keineangaben">
                  <field name="keineangaben" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="keineangabenweil">
                  <field name="keineangabenweil" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
            </group>
         </out:for-each>
         <out:for-each select="betreuung">
            <group name="betreuung">
               <out:for-each select="lebtinmeinemhaushaltseit">
                  <field name="lebtinmeinemhaushaltseit" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="betreuungkind">
                  <field name="betreuungkind" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="verinbarungumgangsrecht">
                  <field name="verinbarungumgangsrecht" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vereinbarunggilt">
                  <field name="vereinbarunggilt" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vereinbarungumgangsrechtsonstige">
                  <field name="vereinbarungumgangsrechtsonstige" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="betreuungszeiten_des_anderen_elternteiles">
                  <list name="betreuungszeiten_des_anderen_elternteiles" protected="true" type="table">
                     <out:for-each select="betreuungszeiten_des_anderen_elternteiles-item">
                        <item>
                           <out:for-each select="tag">
                              <field name="tag" type="string">
                                 <out:if test="string-length(normalize-space(.))=0">
                                    <out:attribute name="type">string</out:attribute>
                                 </out:if>
                                 <out:choose>
                                    <out:when test="@a:label">
                                       <out:attribute name="label">
                                          <out:value-of select="@a:label"/>
                                       </out:attribute>
                                    </out:when>
                                    <out:when test="@label">
                                       <out:attribute name="label">
                                          <out:value-of select="@label"/>
                                       </out:attribute>
                                    </out:when>
                                 </out:choose>
                                 <out:apply-templates select="@*"/>
                                 <out:value-of select="."/>
                              </field>
                           </out:for-each>
                           <out:for-each select="ganztags">
                              <field name="ganztags" type="boolean">
                                 <out:if test="string-length(normalize-space(.))=0">
                                    <out:attribute name="type">string</out:attribute>
                                 </out:if>
                                 <out:apply-templates select="@*"/>
                                 <out:value-of select="."/>
                              </field>
                           </out:for-each>
                           <out:for-each select="inderzeitvon">
                              <field name="inderzeitvon" type="string">
                                 <out:if test="string-length(normalize-space(.))=0">
                                    <out:attribute name="type">string</out:attribute>
                                 </out:if>
                                 <out:apply-templates select="@*"/>
                                 <out:value-of select="."/>
                              </field>
                           </out:for-each>
                           <out:for-each select="inderzeitbis">
                              <field name="inderzeitbis" type="string">
                                 <out:if test="string-length(normalize-space(.))=0">
                                    <out:attribute name="type">string</out:attribute>
                                 </out:if>
                                 <out:apply-templates select="@*"/>
                                 <out:value-of select="."/>
                              </field>
                           </out:for-each>
                        </item>
                     </out:for-each>
                     <field masked="false" name="length" type="number">
                        <out:value-of select="count(betreuungszeiten_des_anderen_elternteiles-item)"/>
                     </field>
                     <option name="visible" value="true" type="boolean" masked="false"/>
                  </list>
               </out:for-each>
            </group>
         </out:for-each>
         <out:for-each select="unterhalt">
            <group name="unterhalt">
               <out:for-each select="unterhaltsfestsetzung">
                  <field name="unterhaltsfestsetzung" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="unterhaltsfestsetzungbehoerde">
                  <field name="unterhaltsfestsetzungbehoerde" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="verpflichtungunterhaltmonatlich">
                  <field name="verpflichtungunterhaltmonatlich" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:attribute name="currency">
                        <out:choose>
                           <out:when test="@currency">
                              <out:value-of select="@currency"/>
                           </out:when>
                           <out:otherwise>EUR</out:otherwise>
                        </out:choose>
                     </out:attribute>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="antragunterhaltsfestsetzungam">
                  <field name="antragunterhaltsfestsetzungam" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="antragunterhaltsfestsetzungamtsgericht">
                  <field name="antragunterhaltsfestsetzungamtsgericht" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="antragunterhaltsfestsetzunggeschzeich">
                  <field name="antragunterhaltsfestsetzunggeschzeich" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="keinantragunterhaltsfestsetzungweil">
                  <field name="keinantragunterhaltsfestsetzungweil" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="keinantragunterhaltsfestsetzunganderergrund">
                  <field name="keinantragunterhaltsfestsetzunganderergrund" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="unterhaltszahlungandereret">
                  <field name="unterhaltszahlungandereret" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:choose>
                        <out:when test="@a:label">
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                        </out:when>
                        <out:when test="@label">
                           <out:attribute name="label">
                              <out:value-of select="@label"/>
                           </out:attribute>
                        </out:when>
                     </out:choose>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="keinenunterhalt_seit">
                  <field name="keinenunterhalt_seit" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="letztezahlungam">
                  <field name="letztezahlungam" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="unterhaltinhoehevon">
                  <field name="unterhaltinhoehevon" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:attribute name="currency">
                        <out:choose>
                           <out:when test="@currency">
                              <out:value-of select="@currency"/>
                           </out:when>
                           <out:otherwise>EUR</out:otherwise>
                        </out:choose>
                     </out:attribute>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="geringererunterhaltinhoehevon">
                  <field name="geringererunterhaltinhoehevon" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:attribute name="currency">
                        <out:choose>
                           <out:when test="@currency">
                              <out:value-of select="@currency"/>
                           </out:when>
                           <out:otherwise>EUR</out:otherwise>
                        </out:choose>
                     </out:attribute>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="geringererunterhaltseit">
                  <field name="geringererunterhaltseit" type="date">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vorauszahlung">
                  <field name="vorauszahlung" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vorauszahlungmonate">
                  <field name="vorauszahlungmonate" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="vorauszahlunginhoehevon">
                  <field name="vorauszahlunginhoehevon" type="decimal">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:attribute name="currency">
                        <out:choose>
                           <out:when test="@currency">
                              <out:value-of select="@currency"/>
                           </out:when>
                           <out:otherwise>EUR</out:otherwise>
                        </out:choose>
                     </out:attribute>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="zahlungunterhaltsrelevanteleistungen">
                  <field name="zahlungunterhaltsrelevanteleistungen" type="boolean">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
               <out:for-each select="unterhaltsrelevanteleistung">
                  <field name="unterhaltsrelevanteleistung" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
            </group>
         </out:for-each>
         <out:for-each select="weiterekinder">
            <group name="weiterekinder">
               <out:for-each select="weitere_gemeinsame_kinder">
                  <list name="weitere_gemeinsame_kinder" protected="true" type="table">
                     <out:for-each select="weitere_gemeinsame_kinder-item">
                        <item>
                           <out:for-each select="name">
                              <field name="name" type="string">
                                 <out:if test="string-length(normalize-space(.))=0">
                                    <out:attribute name="type">string</out:attribute>
                                 </out:if>
                                 <out:apply-templates select="@*"/>
                                 <out:value-of select="."/>
                              </field>
                           </out:for-each>
                           <out:for-each select="vorname">
                              <field name="vorname" type="string">
                                 <out:if test="string-length(normalize-space(.))=0">
                                    <out:attribute name="type">string</out:attribute>
                                 </out:if>
                                 <out:apply-templates select="@*"/>
                                 <out:value-of select="."/>
                              </field>
                           </out:for-each>
                           <out:for-each select="geburtsdatum">
                              <field name="geburtsdatum" type="date">
                                 <out:if test="string-length(normalize-space(.))=0">
                                    <out:attribute name="type">string</out:attribute>
                                 </out:if>
                                 <out:apply-templates select="@*"/>
                                 <out:value-of select="."/>
                              </field>
                           </out:for-each>
                           <out:for-each select="lebtbei">
                              <field name="lebtbei" type="string">
                                 <out:if test="string-length(normalize-space(.))=0">
                                    <out:attribute name="type">string</out:attribute>
                                 </out:if>
                                 <out:apply-templates select="@*"/>
                                 <out:value-of select="."/>
                              </field>
                           </out:for-each>
                        </item>
                     </out:for-each>
                     <field masked="false" name="length" type="number">
                        <out:value-of select="count(weitere_gemeinsame_kinder-item)"/>
                     </field>
                     <option name="visible" value="true" type="boolean" masked="false"/>
                  </list>
               </out:for-each>
               <out:for-each select="bemerkungen">
                  <field name="bemerkungen" type="string">
                     <out:if test="string-length(normalize-space(.))=0">
                        <out:attribute name="type">string</out:attribute>
                     </out:if>
                     <out:apply-templates select="@*"/>
                     <out:value-of select="."/>
                  </field>
               </out:for-each>
            </group>
         </out:for-each>
         <out:for-each select="einwilligungdatenaustausch">
            <field name="einwilligungdatenaustausch" type="boolean">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_app_orgname1">
            <field name="bda_xfall_app_orgname1" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_app_orgname2">
            <field name="bda_xfall_app_orgname2" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_app_bezirknr">
            <field name="bda_xfall_app_bezirknr" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_app_email">
            <field name="bda_xfall_app_email" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_app_faxno">
            <field name="bda_xfall_app_faxno" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_app_bezirk">
            <field name="bda_xfall_app_bezirk" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_app_mobileno">
            <field name="bda_xfall_app_mobileno" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_app_houseno">
            <field name="bda_xfall_app_houseno" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_app_postalcode">
            <field name="bda_xfall_app_postalcode" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_app_city">
            <field name="bda_xfall_app_city" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_app_country">
            <field name="bda_xfall_app_country" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_app_telno">
            <field name="bda_xfall_app_telno" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_app_academictitle">
            <field name="bda_xfall_app_academictitle" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_app_formofaddress">
            <field name="bda_xfall_app_formofaddress" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_app_postofficebox">
            <field name="bda_xfall_app_postofficebox" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_app_identitynamespace">
            <field name="bda_xfall_app_identitynamespace" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_app_partnertype">
            <field name="bda_xfall_app_partnertype" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_app_street">
            <field name="bda_xfall_app_street" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_app_firstname">
            <field name="bda_xfall_app_firstname" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_app_lastname">
            <field name="bda_xfall_app_lastname" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_app_nationality">
            <field name="bda_xfall_app_nationality" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_partnertype">
            <field name="bda_xfall_aut_partnertype" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_country">
            <field name="bda_xfall_aut_country" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_email">
            <field name="bda_xfall_aut_email" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_faxno">
            <field name="bda_xfall_aut_faxno" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_mobileno">
            <field name="bda_xfall_aut_mobileno" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_telno">
            <field name="bda_xfall_aut_telno" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_orgname1">
            <field name="bda_xfall_aut_orgname1" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_postalcode">
            <field name="bda_xfall_aut_postalcode" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_street">
            <field name="bda_xfall_aut_street" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_houseno">
            <field name="bda_xfall_aut_houseno" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_nationality">
            <field name="bda_xfall_aut_nationality" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_bezirknr">
            <field name="bda_xfall_aut_bezirknr" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_postofficebox">
            <field name="bda_xfall_aut_postofficebox" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_identitynamespace">
            <field name="bda_xfall_aut_identitynamespace" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_city">
            <field name="bda_xfall_aut_city" type="string">
               <out:if test="string-length(normalize-space(.))=0">
                  <out:attribute name="type">string</out:attribute>
               </out:if>
               <out:if test="@xsi:type">
                  <out:attribute name="type">
                     <out:value-of select="@xsi:type"/>
                  </out:attribute>
               </out:if>
               <out:apply-templates select="@*"/>
               <out:value-of select="."/>
            </field>
         </out:for-each>
         <out:for-each select="dateien">
            <group name="dateien">
               <out:for-each select="scheidungsurteil">
                  <list name="scheidungsurteil" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="aufhebungsurkunde">
                  <list name="aufhebungsurkunde" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="sterbeurkunde">
                  <list name="sterbeurkunde" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="getrenntweilnachweis">
                  <list name="getrenntweilnachweis" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="aufenthaltstitel">
                  <list name="aufenthaltstitel" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="nachweiseuebereinkommenundkrankenkasse">
                  <list name="nachweiseuebereinkommenundkrankenkasse" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="geburtsurkunde">
                  <list name="geburtsurkunde" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="vaterschaftsanerkennungsurkunde">
                  <list name="vaterschaftsanerkennungsurkunde" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="leistungsbezugbescheid">
                  <list name="leistungsbezugbescheid" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="bewilligungsbescheid">
                  <list name="bewilligungsbescheid" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="antragsbestaetigungwaisenbezuege">
                  <list name="antragsbestaetigungwaisenbezuege" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="hilfelebensunterhaltbescheid">
                  <list name="hilfelebensunterhaltbescheid" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="anlagevereinbarung">
                  <list name="anlagevereinbarung" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="monatlicheauflistung">
                  <list name="monatlicheauflistung" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="bescheidjobcenter">
                  <list name="bescheidjobcenter" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="bescheidkinderwohngeld">
                  <list name="bescheidkinderwohngeld" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="schulbescheinigung">
                  <list name="schulbescheinigung" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="ausbildungsnachweis">
                  <list name="ausbildungsnachweis" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="nachweishalbwaisenrente">
                  <list name="nachweishalbwaisenrente" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="nachweisschadensersatzleistungen">
                  <list name="nachweisschadensersatzleistungen" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="nachweisnichtselbststaendigearbeit">
                  <list name="nachweisnichtselbststaendigearbeit" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="nachweisselbststaendigearbeit">
                  <list name="nachweisselbststaendigearbeit" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="nachweiskapitalvermoegen">
                  <list name="nachweiskapitalvermoegen" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="privatrechtlichevereinbarung">
                  <list name="privatrechtlichevereinbarung" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
               <out:for-each select="unterhaltsrelevanteleistungnachweis">
                  <list name="unterhaltsrelevanteleistungnachweis" type="file">
                     <out:for-each select="file">
                        <item>
                           <field name="file" type="string" description="{@description}" content-type="{@content-type}" id="{@id}">
                              <out:attribute name="length">
                                 <out:choose>
                                    <out:when test="string-length(@length)!=0">
                                       <out:value-of select="@length"/>
                                    </out:when>
                                    <out:otherwise>
                                       <out:text>-1</out:text>
                                    </out:otherwise>
                                 </out:choose>
                              </out:attribute>
                              <out:value-of select="."/>
                           </field>
                        </item>
                     </out:for-each>
                  </list>
               </out:for-each>
            </group>
         </out:for-each>
      </data>
   </out:template>
   <out:template match="@s:readonly">
      <out:attribute name="{local-name()}">
         <out:value-of select="."/>
      </out:attribute>
   </out:template>
   <out:template match="@*"/>
</out:stylesheet>