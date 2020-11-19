<?xml version="1.0" encoding="us-ascii"?>
<out:stylesheet xmlns:out="http://www.w3.org/1999/XSL/Transform" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ifp="http://xmlns.cit.de/intelliform/pages/annotation/1.0" xmlns:a="http://xmlns.cit.de/assistants/internal" xmlns:java="http://xml.apache.org/xslt/java" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0" exclude-result-prefixes="xsl" extension-element-prefixes="java">
   <out:template match="/*">
      <out:copy>
         <out:apply-templates select="@*"/>
         <out:for-each select="idData">
            <out:apply-templates select="." mode="copy"/>
         </out:for-each>
         <out:for-each select="ja_nein_feld">
            <out:copy>
               <out:attribute name="ifp:label">Ich bin damit einverstanden, dass die von mir eingegebenen Daten weiterverarbeitet werden d&#252;rfen.</out:attribute>
               <out:attribute name="ifp:type">boolean</out:attribute>
               <out:attribute name="xsi:type">xs:boolean</out:attribute>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="eid">
            <out:copy>
               <out:attribute name="ifp:label">M&#246;chten Sie die eID Ihres nPA nutzen?</out:attribute>
               <out:attribute name="ifp:type">boolean</out:attribute>
               <out:attribute name="xsi:type">xs:boolean</out:attribute>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="id_feld">
            <out:copy>
               <out:apply-templates select="*" mode="copy"/>
            </out:copy>
         </out:for-each>
         <out:for-each select="antragsteller">
            <out:copy>
               <out:for-each select="myage">
                  <out:copy>
                     <out:attribute name="ifp:label">myage:</out:attribute>
                     <out:choose>
                        <out:when test="@a:type='number'">
                           <out:attribute name="ifp:type">decimal</out:attribute>
                           <out:attribute name="xsi:type">xs:decimal</out:attribute>
                        </out:when>
                        <out:when test="@a:type='boolean'">
                           <out:attribute name="ifp:type">boolean</out:attribute>
                           <out:attribute name="xsi:type">xs:boolean</out:attribute>
                        </out:when>
                        <out:when test="@a:type='date'">
                           <out:attribute name="ifp:type">date</out:attribute>
                           <out:attribute name="xsi:type">xs:date</out:attribute>
                        </out:when>
                        <out:otherwise>
                           <out:attribute name="ifp:type">string</out:attribute>
                        </out:otherwise>
                     </out:choose>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000043">
                  <out:copy>
                     <out:attribute name="ifp:label">F00000043:</out:attribute>
                     <out:choose>
                        <out:when test="@a:type='number'">
                           <out:attribute name="ifp:type">decimal</out:attribute>
                           <out:attribute name="xsi:type">xs:decimal</out:attribute>
                        </out:when>
                        <out:when test="@a:type='boolean'">
                           <out:attribute name="ifp:type">boolean</out:attribute>
                           <out:attribute name="xsi:type">xs:boolean</out:attribute>
                        </out:when>
                        <out:when test="@a:type='date'">
                           <out:attribute name="ifp:type">date</out:attribute>
                           <out:attribute name="xsi:type">xs:date</out:attribute>
                        </out:when>
                        <out:otherwise>
                           <out:attribute name="ifp:type">string</out:attribute>
                        </out:otherwise>
                     </out:choose>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000013">
                  <out:copy>
                     <out:attribute name="ifp:label">F00000013:</out:attribute>
                     <out:choose>
                        <out:when test="@a:type='number'">
                           <out:attribute name="ifp:type">decimal</out:attribute>
                           <out:attribute name="xsi:type">xs:decimal</out:attribute>
                        </out:when>
                        <out:when test="@a:type='boolean'">
                           <out:attribute name="ifp:type">boolean</out:attribute>
                           <out:attribute name="xsi:type">xs:boolean</out:attribute>
                        </out:when>
                        <out:when test="@a:type='date'">
                           <out:attribute name="ifp:type">date</out:attribute>
                           <out:attribute name="xsi:type">xs:date</out:attribute>
                        </out:when>
                        <out:otherwise>
                           <out:attribute name="ifp:type">string</out:attribute>
                        </out:otherwise>
                     </out:choose>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000045">
                  <out:copy>
                     <out:attribute name="ifp:label">F00000045:</out:attribute>
                     <out:choose>
                        <out:when test="@a:type='number'">
                           <out:attribute name="ifp:type">decimal</out:attribute>
                           <out:attribute name="xsi:type">xs:decimal</out:attribute>
                        </out:when>
                        <out:when test="@a:type='boolean'">
                           <out:attribute name="ifp:type">boolean</out:attribute>
                           <out:attribute name="xsi:type">xs:boolean</out:attribute>
                        </out:when>
                        <out:when test="@a:type='date'">
                           <out:attribute name="ifp:type">date</out:attribute>
                           <out:attribute name="xsi:type">xs:date</out:attribute>
                        </out:when>
                        <out:otherwise>
                           <out:attribute name="ifp:type">string</out:attribute>
                        </out:otherwise>
                     </out:choose>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000014">
                  <out:copy>
                     <out:attribute name="ifp:label">F00000014:</out:attribute>
                     <out:choose>
                        <out:when test="@a:type='number'">
                           <out:attribute name="ifp:type">decimal</out:attribute>
                           <out:attribute name="xsi:type">xs:decimal</out:attribute>
                        </out:when>
                        <out:when test="@a:type='boolean'">
                           <out:attribute name="ifp:type">boolean</out:attribute>
                           <out:attribute name="xsi:type">xs:boolean</out:attribute>
                        </out:when>
                        <out:when test="@a:type='date'">
                           <out:attribute name="ifp:type">date</out:attribute>
                           <out:attribute name="xsi:type">xs:date</out:attribute>
                        </out:when>
                        <out:otherwise>
                           <out:attribute name="ifp:type">string</out:attribute>
                        </out:otherwise>
                     </out:choose>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000066">
                  <out:copy>
                     <out:attribute name="ifp:label">F00000066:</out:attribute>
                     <out:choose>
                        <out:when test="@a:type='number'">
                           <out:attribute name="ifp:type">decimal</out:attribute>
                           <out:attribute name="xsi:type">xs:decimal</out:attribute>
                        </out:when>
                        <out:when test="@a:type='boolean'">
                           <out:attribute name="ifp:type">boolean</out:attribute>
                           <out:attribute name="xsi:type">xs:boolean</out:attribute>
                        </out:when>
                        <out:when test="@a:type='date'">
                           <out:attribute name="ifp:type">date</out:attribute>
                           <out:attribute name="xsi:type">xs:date</out:attribute>
                        </out:when>
                        <out:otherwise>
                           <out:attribute name="ifp:type">string</out:attribute>
                        </out:otherwise>
                     </out:choose>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000067">
                  <out:copy>
                     <out:attribute name="ifp:label">F00000067:</out:attribute>
                     <out:choose>
                        <out:when test="@a:type='number'">
                           <out:attribute name="ifp:type">decimal</out:attribute>
                           <out:attribute name="xsi:type">xs:decimal</out:attribute>
                        </out:when>
                        <out:when test="@a:type='boolean'">
                           <out:attribute name="ifp:type">boolean</out:attribute>
                           <out:attribute name="xsi:type">xs:boolean</out:attribute>
                        </out:when>
                        <out:when test="@a:type='date'">
                           <out:attribute name="ifp:type">date</out:attribute>
                           <out:attribute name="xsi:type">xs:date</out:attribute>
                        </out:when>
                        <out:otherwise>
                           <out:attribute name="ifp:type">string</out:attribute>
                        </out:otherwise>
                     </out:choose>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geschlecht">
                  <out:copy>
                     <out:attribute name="ifp:label">Geschlecht</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beruf">
                  <out:copy>
                     <out:attribute name="ifp:label">Beruf</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="arbeitgeber">
                  <out:copy>
                     <out:attribute name="ifp:label">Arbeitgeber</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geburtsort">
                  <out:copy>
                     <out:attribute name="ifp:label">Geburtsort</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="staatsangehoerigkeit">
                  <out:copy>
                     <out:attribute name="ifp:label">Staatsangeh&#246;rigkeit</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="wohnhaftinberlin">
                  <out:copy>
                     <out:attribute name="ifp:label">Wohnen Sie aktuell in Berlin?</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="strassenichtberlin">
                  <out:copy>
                     <out:attribute name="ifp:label">Stra&#223;e</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="hausnummernichtberlin">
                  <out:copy>
                     <out:attribute name="ifp:label">Hausnummer</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="postleitzahlnichtberlin">
                  <out:copy>
                     <out:attribute name="ifp:label">Postleitzahl</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ortnichtberlin">
                  <out:copy>
                     <out:attribute name="ifp:label">Ort</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000053">
                  <out:copy>
                     <out:attribute name="ifp:label">F00000053:</out:attribute>
                     <out:choose>
                        <out:when test="@a:type='number'">
                           <out:attribute name="ifp:type">decimal</out:attribute>
                           <out:attribute name="xsi:type">xs:decimal</out:attribute>
                        </out:when>
                        <out:when test="@a:type='boolean'">
                           <out:attribute name="ifp:type">boolean</out:attribute>
                           <out:attribute name="xsi:type">xs:boolean</out:attribute>
                        </out:when>
                        <out:when test="@a:type='date'">
                           <out:attribute name="ifp:type">date</out:attribute>
                           <out:attribute name="xsi:type">xs:date</out:attribute>
                        </out:when>
                        <out:otherwise>
                           <out:attribute name="ifp:type">string</out:attribute>
                        </out:otherwise>
                     </out:choose>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="objtype">
                  <out:copy>
                     <out:attribute name="ifp:label">Objekttyp</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000016">
                  <out:copy>
                     <out:attribute name="ifp:label">F00000016:</out:attribute>
                     <out:choose>
                        <out:when test="@a:type='number'">
                           <out:attribute name="ifp:type">decimal</out:attribute>
                           <out:attribute name="xsi:type">xs:decimal</out:attribute>
                        </out:when>
                        <out:when test="@a:type='boolean'">
                           <out:attribute name="ifp:type">boolean</out:attribute>
                           <out:attribute name="xsi:type">xs:boolean</out:attribute>
                        </out:when>
                        <out:when test="@a:type='date'">
                           <out:attribute name="ifp:type">date</out:attribute>
                           <out:attribute name="xsi:type">xs:date</out:attribute>
                        </out:when>
                        <out:otherwise>
                           <out:attribute name="ifp:type">string</out:attribute>
                        </out:otherwise>
                     </out:choose>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000084">
                  <out:copy>
                     <out:attribute name="ifp:label">F00000084:</out:attribute>
                     <out:choose>
                        <out:when test="@a:type='number'">
                           <out:attribute name="ifp:type">decimal</out:attribute>
                           <out:attribute name="xsi:type">xs:decimal</out:attribute>
                        </out:when>
                        <out:when test="@a:type='boolean'">
                           <out:attribute name="ifp:type">boolean</out:attribute>
                           <out:attribute name="xsi:type">xs:boolean</out:attribute>
                        </out:when>
                        <out:when test="@a:type='date'">
                           <out:attribute name="ifp:type">date</out:attribute>
                           <out:attribute name="xsi:type">xs:date</out:attribute>
                        </out:when>
                        <out:otherwise>
                           <out:attribute name="ifp:type">string</out:attribute>
                        </out:otherwise>
                     </out:choose>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="hnr">
                  <out:copy>
                     <out:attribute name="ifp:label">hnr:</out:attribute>
                     <out:choose>
                        <out:when test="@a:type='number'">
                           <out:attribute name="ifp:type">decimal</out:attribute>
                           <out:attribute name="xsi:type">xs:decimal</out:attribute>
                        </out:when>
                        <out:when test="@a:type='boolean'">
                           <out:attribute name="ifp:type">boolean</out:attribute>
                           <out:attribute name="xsi:type">xs:boolean</out:attribute>
                        </out:when>
                        <out:when test="@a:type='date'">
                           <out:attribute name="ifp:type">date</out:attribute>
                           <out:attribute name="xsi:type">xs:date</out:attribute>
                        </out:when>
                        <out:otherwise>
                           <out:attribute name="ifp:type">string</out:attribute>
                        </out:otherwise>
                     </out:choose>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000054">
                  <out:copy>
                     <out:attribute name="ifp:label">F00000054:</out:attribute>
                     <out:choose>
                        <out:when test="@a:type='number'">
                           <out:attribute name="ifp:type">decimal</out:attribute>
                           <out:attribute name="xsi:type">xs:decimal</out:attribute>
                        </out:when>
                        <out:when test="@a:type='boolean'">
                           <out:attribute name="ifp:type">boolean</out:attribute>
                           <out:attribute name="xsi:type">xs:boolean</out:attribute>
                        </out:when>
                        <out:when test="@a:type='date'">
                           <out:attribute name="ifp:type">date</out:attribute>
                           <out:attribute name="xsi:type">xs:date</out:attribute>
                        </out:when>
                        <out:otherwise>
                           <out:attribute name="ifp:type">string</out:attribute>
                        </out:otherwise>
                     </out:choose>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="otname">
                  <out:copy>
                     <out:attribute name="ifp:label">Ortsteil</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="bzrname">
                  <out:copy>
                     <out:attribute name="ifp:label">Bezirk</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="otnr">
                  <out:copy>
                     <out:attribute name="ifp:label">otnr:</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="bzrnr">
                  <out:copy>
                     <out:attribute name="ifp:label">bzrnr:</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="strnr">
                  <out:copy>
                     <out:attribute name="ifp:label">strnr:</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000035">
                  <out:copy>
                     <out:attribute name="ifp:label">F00000035:</out:attribute>
                     <out:choose>
                        <out:when test="@a:type='number'">
                           <out:attribute name="ifp:type">decimal</out:attribute>
                           <out:attribute name="xsi:type">xs:decimal</out:attribute>
                        </out:when>
                        <out:when test="@a:type='boolean'">
                           <out:attribute name="ifp:type">boolean</out:attribute>
                           <out:attribute name="xsi:type">xs:boolean</out:attribute>
                        </out:when>
                        <out:when test="@a:type='date'">
                           <out:attribute name="ifp:type">date</out:attribute>
                           <out:attribute name="xsi:type">xs:date</out:attribute>
                        </out:when>
                        <out:otherwise>
                           <out:attribute name="ifp:type">string</out:attribute>
                        </out:otherwise>
                     </out:choose>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="land">
                  <out:copy>
                     <out:attribute name="ifp:label">land:</out:attribute>
                     <out:choose>
                        <out:when test="@a:type='number'">
                           <out:attribute name="ifp:type">decimal</out:attribute>
                           <out:attribute name="xsi:type">xs:decimal</out:attribute>
                        </out:when>
                        <out:when test="@a:type='boolean'">
                           <out:attribute name="ifp:type">boolean</out:attribute>
                           <out:attribute name="xsi:type">xs:boolean</out:attribute>
                        </out:when>
                        <out:when test="@a:type='date'">
                           <out:attribute name="ifp:type">date</out:attribute>
                           <out:attribute name="xsi:type">xs:date</out:attribute>
                        </out:when>
                        <out:otherwise>
                           <out:attribute name="ifp:type">string</out:attribute>
                        </out:otherwise>
                     </out:choose>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="k1000">
                  <out:copy>
                     <out:attribute name="ifp:label">k1000:</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="k5000">
                  <out:copy>
                     <out:attribute name="ifp:label">k5000:</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="xstat">
                  <out:copy>
                     <out:attribute name="ifp:label">xstat:</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ystat">
                  <out:copy>
                     <out:attribute name="ifp:label">ystat:</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="etrs89_x">
                  <out:copy>
                     <out:attribute name="ifp:label">etrs89_x:</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="etrs89_y">
                  <out:copy>
                     <out:attribute name="ifp:label">etrs89_y:</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="rbs_valid">
                  <out:copy>
                     <out:attribute name="ifp:label">rbs_valid:</out:attribute>
                     <out:choose>
                        <out:when test="@a:type='number'">
                           <out:attribute name="ifp:type">decimal</out:attribute>
                           <out:attribute name="xsi:type">xs:decimal</out:attribute>
                        </out:when>
                        <out:when test="@a:type='boolean'">
                           <out:attribute name="ifp:type">boolean</out:attribute>
                           <out:attribute name="xsi:type">xs:boolean</out:attribute>
                        </out:when>
                        <out:when test="@a:type='date'">
                           <out:attribute name="ifp:type">date</out:attribute>
                           <out:attribute name="xsi:type">xs:date</out:attribute>
                        </out:when>
                        <out:otherwise>
                           <out:attribute name="ifp:type">string</out:attribute>
                        </out:otherwise>
                     </out:choose>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="dortwohnhaftseit">
                  <out:copy>
                     <out:attribute name="ifp:label">dort wohnhaft seit</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="telefon">
                  <out:copy>
                     <out:attribute name="ifp:label">Telefon</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausweisung">
                  <out:copy>
                     <out:attribute name="ifp:label">Bitte geben Sie die Art an, wie Sie sich ausweisen wollen</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausweisnr">
                  <out:copy>
                     <out:attribute name="ifp:label">{myForm.ausweisung}nummer</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="gueltigbis">
                  <out:copy>
                     <out:attribute name="ifp:label">g&#252;ltig bis</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kontovorhanden">
                  <out:copy>
                     <out:attribute name="ifp:label">Verf&#252;gen Sie &#252;ber ein eigenes Bankkonto?</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="bankname">
                  <out:copy>
                     <out:attribute name="ifp:label">Name der Bank</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kontoinhaber">
                  <out:copy>
                     <out:attribute name="ifp:label">Kontoinhaber/in</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="F00000106">
                  <out:copy>
                     <out:attribute name="ifp:label">&lt;span lang="en"&gt;&lt;abbr title="International Bank Account Number"&gt;IBAN&lt;/abbr&gt;&lt;/span&gt;</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="selectdistrict">
                  <out:copy>
                     <out:attribute name="ifp:label">selectDistrict:</out:attribute>
                     <out:choose>
                        <out:when test="@a:type='number'">
                           <out:attribute name="ifp:type">decimal</out:attribute>
                           <out:attribute name="xsi:type">xs:decimal</out:attribute>
                        </out:when>
                        <out:when test="@a:type='boolean'">
                           <out:attribute name="ifp:type">boolean</out:attribute>
                           <out:attribute name="xsi:type">xs:boolean</out:attribute>
                        </out:when>
                        <out:when test="@a:type='date'">
                           <out:attribute name="ifp:type">date</out:attribute>
                           <out:attribute name="xsi:type">xs:date</out:attribute>
                        </out:when>
                        <out:otherwise>
                           <out:attribute name="ifp:type">string</out:attribute>
                        </out:otherwise>
                     </out:choose>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
         <out:for-each select="antragstellerweitere">
            <out:copy>
               <out:for-each select="familienstand">
                  <out:copy>
                     <out:attribute name="ifp:label">&lt;p/&gt;</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vomanderenelternteilgetrennt">
                  <out:copy>
                     <out:attribute name="ifp:label">Bitte w&#228;hlen Sie den zutreffenden Punkt aus</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geschiedenseit">
                  <out:copy>
                     <out:attribute name="ifp:label">Ich bin rechtskr&#228;ftig geschieden seit dem</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="nichtmehringleichgeschlechtlicherlebenspartnerschaftseit">
                  <out:copy>
                     <out:attribute name="ifp:label">Ich lebe nicht mehr in einer eingetragenen (gleichgeschlechtlichen) Lebenspartnerschaft seit dem</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="verwitwetseit">
                  <out:copy>
                     <out:attribute name="ifp:label">Ich bin verwitwet seit dem</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vonelternteilgetrenntseit">
                  <out:copy>
                     <out:attribute name="ifp:label">Ich lebe vom anderen Elternteil getrennt seit dem</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vomehegattenehegattingetrenntseit">
                  <out:copy>
                     <out:attribute name="ifp:label">Ich lebe vom Ehegatten/Lebenspartner/der Ehegattin/Lebenspartnerin getrennt seit dem</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vonehepartnergetrenntweil">
                  <out:copy>
                     <out:attribute name="ifp:label">Begr&#252;ndung</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geschlecht">
                  <out:copy>
                     <out:attribute name="ifp:label">Geschlecht</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="name">
                  <out:copy>
                     <out:attribute name="ifp:label">Name</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vorname">
                  <out:copy>
                     <out:attribute name="ifp:label">Vorname</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geburtsdatum">
                  <out:copy>
                     <out:attribute name="ifp:label">Geburtsdatum</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="strasse">
                  <out:copy>
                     <out:attribute name="ifp:label">Stra&#223;e</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="hausnummer">
                  <out:copy>
                     <out:attribute name="ifp:label">Hausnummer</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="postleitzahl">
                  <out:copy>
                     <out:attribute name="ifp:label">Postleitzahl</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ort">
                  <out:copy>
                     <out:attribute name="ifp:label">Ort</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="land">
                  <out:copy>
                     <out:attribute name="ifp:label">Land</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
         <out:for-each select="kind">
            <out:copy>
               <out:for-each select="geschlecht">
                  <out:copy>
                     <out:attribute name="ifp:label">Geschlecht</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="name">
                  <out:copy>
                     <out:attribute name="ifp:label">Name</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vorname">
                  <out:copy>
                     <out:attribute name="ifp:label">Vorname</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geburtsdatum">
                  <out:copy>
                     <out:attribute name="ifp:label">Geburtsdatum</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geburtsort">
                  <out:copy>
                     <out:attribute name="ifp:label">Geburtsort</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="staatsangehoerigkeit">
                  <out:copy>
                     <out:attribute name="ifp:label">Staatsangeh&#246;rigkeit</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="aufenthaltstitelgueltigbis">
                  <out:copy>
                     <out:attribute name="ifp:label">Aufenthaltstitel g&#252;ltig bis</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="leistungsbezugnachuvg">
                  <out:copy>
                     <out:attribute name="ifp:label">F&#252;r mein Kind wurden bereits Leistungen nach dem &lt;abbr title="Unterhaltsvorschuss"&gt;UVG&lt;/abbr&gt; bezogen</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="leistungsbezugbehoerde">
                  <out:copy>
                     <out:attribute name="ifp:label">Bei welcher Beh&#246;rde wurden bereits Leistungen nach dem &lt;abbr title="Unterhaltsvorschuss"&gt;UVG&lt;/abbr&gt; bezogen?</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="leistungsbezugvon">
                  <out:copy>
                     <out:attribute name="ifp:label">Zeitraum von</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="leistungsbezugbis">
                  <out:copy>
                     <out:attribute name="ifp:label">bis</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="waisenrente">
                  <out:copy>
                     <out:attribute name="ifp:label">Bitte machen Sie eine Angabe zu den Waisenbez&#252;gen oder Schadenersatzleitungen Ihres Kindes</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="waisenrentehoehe">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:attribute name="ifp:label">Ich erhalte f&#252;r mein Kind Waisenbez&#252;ge oder Schadenersatzleistungen in H&#246;he von monatlich</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="waisenrenteleistungsstelle">
                  <out:copy>
                     <out:attribute name="ifp:label">Bei welcher Leistungsstelle wurden bereits Waisenbez&#252;ge oder Schadenersatzleistungen bezogen?</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="antragwaisenbezuegegestelltam">
                  <out:copy>
                     <out:attribute name="ifp:label">Wann haben Sie einen Antrag auf Waisenbez&#252;ge f&#252;r Ihr Kind gestellt?</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="waisenbezuegebehoerde">
                  <out:copy>
                     <out:attribute name="ifp:label">Bei welcher Beh&#246;rde wurde ein Antrag auf Waisenbez&#252;ge gestellt?</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="waisenbezuegeaktenzeichen">
                  <out:copy>
                     <out:attribute name="ifp:label">Aktenzeichen</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="hilfelebensunterhalt">
                  <out:copy>
                     <out:attribute name="ifp:label">Erhalten Sie bisher Hilfen zur Sicherung des Lebensunterhalts vom JobCenter/Sozialamt?</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="hilfelebensunterhaltnr">
                  <out:copy>
                     <out:attribute name="ifp:label">Aktenzeichen oder Bedarfsgemeinschaftsnummer</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="hilfelebensunterhaltbegruendung">
                  <out:copy>
                     <out:attribute name="ifp:label">Begr&#252;ndung</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
         <out:for-each select="kindueber12">
            <out:copy>
               <out:for-each select="leistungenjobcenter">
                  <out:copy>
                     <out:attribute name="ifp:label">Leistungen vom Jobcenter nach dem &lt;abbr title="Sozialgesetzbuch"&gt;SGB&lt;/abbr&gt; II ("Hartz IV") beantragt/erhalten</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kinderwohngeld">
                  <out:copy>
                     <out:attribute name="ifp:label">Kinderwohngeld beantragt/erhalten</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="erzielungbruttoeinkommen">
                  <out:copy>
                     <out:attribute name="ifp:label">Der Elternteil, bei dem das Kind lebt, hat im ma&#223;geblichen Monat Bruttoeinkommen in H&#246;he von mindestens 600 Euro erzielt</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kindschule">
                  <out:copy>
                     <out:attribute name="ifp:label">Das Kind geht/ging in folgende Schule</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="schulebeendet">
                  <out:copy>
                     <out:attribute name="ifp:label">Hat das Kind die Schule beendet?</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="schulevoraussichtlichesende">
                  <out:copy>
                     <out:attribute name="ifp:label">voraussichtliches Ende</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="schulebeendetseit">
                  <out:copy>
                     <out:attribute name="ifp:label">beendet seit</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kindabschluss">
                  <out:copy>
                     <out:attribute name="ifp:label">angestrebter oder erreichter Abschluss</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausbildungsbeginn">
                  <out:copy>
                     <out:attribute name="ifp:label">Das Kind hat eine Ausbildung begonnen am</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausbildungals">
                  <out:copy>
                     <out:attribute name="ifp:label">als</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausbildungvoraussichtlichesende">
                  <out:copy>
                     <out:attribute name="ifp:label">voraussichtliches Ende</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausbildungsverguetung">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:attribute name="ifp:label">Ausbildungsverg&#252;tung netto</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausbildungunterkunft">
                  <out:copy>
                     <out:attribute name="ifp:label">Das Kind hat ausbildungsbedingt eine eigene Unterkunft au&#223;erhalb des elterlichen Haushalts</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kinderwerbstaetigkeit">
                  <out:copy>
                     <out:attribute name="ifp:label">Das Kind hat statt einer Ausbildung eine Erwerbst&#228;tigkeit aufgenommen</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="verguetungerwerbstaetigkeit">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:attribute name="ifp:label">Monatliche Verg&#252;tung netto</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kindeinkuenfte">
                  <out:copy>
                     <out:attribute name="ifp:label">Das Kind bezieht Eink&#252;nfte</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kindhalbwaisenrente">
                  <out:copy>
                     <out:attribute name="ifp:label">Halbwaisenrente</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="halbwaisenrentehoehe">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:attribute name="ifp:label">Halbwaisenrente in H&#246;he von monatlich</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="schadensersatzleistungen">
                  <out:copy>
                     <out:attribute name="ifp:label">Schadenersatzleistungen, die wegen des Todes des anderen Elternteils oder eines Stiefelternteils gezahlt werden</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="nichtselbststaendigearbeit">
                  <out:copy>
                     <out:attribute name="ifp:label">Eink&#252;nfte aus nichtselbstst&#228;ndiger Arbeit, Ausbildung, Freiwilligendienst</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="selbststaendigearbeit">
                  <out:copy>
                     <out:attribute name="ifp:label">Eink&#252;nfte aus Land- oder Forstwirtschaft, Gewerbebetrieb oder selbstst&#228;ndiger T&#228;tigkeit</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kapitalvermoegen">
                  <out:copy>
                     <out:attribute name="ifp:label">Eink&#252;nfte aus Kapitalverm&#246;gen, Vermietung oder Verpachtung</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="erlernterberuf">
                  <out:copy>
                     <out:attribute name="ifp:label">Erlernter Beruf</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausgeuebtetaetigkeit">
                  <out:copy>
                     <out:attribute name="ifp:label">Derzeit ausge&#252;bte T&#228;tigkeit</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="monatlichesnettoeinkommen">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:attribute name="ifp:label">Monatliches Nettoeinkommen</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="steuerklasse">
                  <out:copy>
                     <out:for-each select="*">
                        <out:copy>
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                           <out:value-of select="."/>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kinderfreibetrag">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:attribute name="ifp:label">Kinderfreibetrag</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
         <out:for-each select="vormundschaft">
            <out:copy>
               <out:for-each select="beistandschaft">
                  <out:copy>
                     <out:attribute name="ifp:label">F&#252;r mein Kind wird zum Zweck der Unterhaltsregelung und/oder Vaterschaftsfeststellung eine Beistandschaft oder Vormundschaft bei einem Jugendamt oder der &lt;abbr title="Arbeiterwohlfahrt"&gt;AWO&lt;/abbr&gt; gef&#252;hrt</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beistandschaftseit">
                  <out:copy>
                     <out:attribute name="ifp:label">seit</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beistandschaftbeantragtam">
                  <out:copy>
                     <out:attribute name="ifp:label">bzw. wurde beantragt am</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beistandschaftbehoerde">
                  <out:copy>
                     <out:attribute name="ifp:label">beim</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beistandschaftgeschzeichen">
                  <out:copy>
                     <out:attribute name="ifp:label">Gesch&#228;ftszeichen</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beistandauskunftserteilung">
                  <out:copy>
                     <out:attribute name="ifp:label">Mit der Auskunftserteilung des Beistandes an die Unterhaltsvorschussstelle bin ich einverstanden</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beauftragungrechtsanwaltsbuero">
                  <out:copy>
                     <out:attribute name="ifp:label">Ich habe ein Rechtsanwaltsb&#252;ro beauftragt</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="name">
                  <out:copy>
                     <out:attribute name="ifp:label">Name des Rechtsanwaltsb&#252;ros</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="strasse">
                  <out:copy>
                     <out:attribute name="ifp:label">Stra&#223;e</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="hausnummer">
                  <out:copy>
                     <out:attribute name="ifp:label">Hausnummer</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="postleitzahl">
                  <out:copy>
                     <out:attribute name="ifp:label">Postleitzahl</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ort">
                  <out:copy>
                     <out:attribute name="ifp:label">Ort</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="aktenzeichen">
                  <out:copy>
                     <out:attribute name="ifp:label">Aktenzeichen</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beauftragtmit">
                  <out:copy>
                     <out:for-each select="*">
                        <out:copy>
                           <out:attribute name="label">
                              <out:value-of select="@a:label"/>
                           </out:attribute>
                           <out:value-of select="."/>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
         <out:for-each select="andererelternteil1">
            <out:copy>
               <out:for-each select="kindehelich">
                  <out:copy>
                     <out:attribute name="ifp:label">Bitte w&#228;hlen Sie den zutreffenden Punkt aus</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vaterschaftnichtfeststellbarweil">
                  <out:copy>
                     <out:attribute name="ifp:label">Begr&#252;ndung</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vaterschaftanerkannt">
                  <out:copy>
                     <out:attribute name="ifp:label">Ist die Vaterschaft anerkannt?</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="antragauffeststellungvaterschaft">
                  <out:copy>
                     <out:attribute name="ifp:label">Wurde ein Antrag auf Feststellung der Vaterschaft gestellt?</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vaterschaftsfeststellungsverfahrenbei">
                  <out:copy>
                     <out:attribute name="ifp:label">Ein Vaterschaftsfeststellungsverfahren ist bereits eingeleitet durch/bei</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vaterschaftnochnichtfestgestelltweil">
                  <out:copy>
                     <out:attribute name="ifp:label">Die Vaterschaft ist noch nicht festgestellt, weil</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ehemannvater">
                  <out:copy>
                     <out:attribute name="ifp:label">Der Ehemann ist der Vater des Kindes</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vaterschaftsanfechtungsklage">
                  <out:copy>
                     <out:attribute name="ifp:label">Ist eine Vaterschaftsanfechtungsklage anh&#228;ngig?</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vaterschaftsanfechtungsklageamtsgericht">
                  <out:copy>
                     <out:attribute name="ifp:label">Eine Vaterschaftsanfechtungsklage ist bereits anh&#228;ngig bei</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geschlecht">
                  <out:copy>
                     <out:attribute name="ifp:label">Geschlecht</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="name">
                  <out:copy>
                     <out:attribute name="ifp:label">Name</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vorname">
                  <out:copy>
                     <out:attribute name="ifp:label">Vorname</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="strasse">
                  <out:copy>
                     <out:attribute name="ifp:label">Stra&#223;e</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="hausnummer">
                  <out:copy>
                     <out:attribute name="ifp:label">Hausnummer</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="postleitzahl">
                  <out:copy>
                     <out:attribute name="ifp:label">Postleitzahl</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ort">
                  <out:copy>
                     <out:attribute name="ifp:label">Ort</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="land">
                  <out:copy>
                     <out:attribute name="ifp:label">Land</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geburtsdatum">
                  <out:copy>
                     <out:attribute name="ifp:label">Geburtsdatum</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="familienstand">
                  <out:copy>
                     <out:attribute name="ifp:label">Familienstand</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="staatsangehoerigkeit">
                  <out:copy>
                     <out:attribute name="ifp:label">Staatsangeh&#246;rigkeit</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geburtsort">
                  <out:copy>
                     <out:attribute name="ifp:label">Geburtsort</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geburtsland">
                  <out:copy>
                     <out:attribute name="ifp:label">Geburtsland</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="telefon">
                  <out:copy>
                     <out:attribute name="ifp:label">Telefon</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
         <out:for-each select="andererelternteil2">
            <out:copy>
               <out:for-each select="schulabschluss">
                  <out:copy>
                     <out:attribute name="ifp:label">Schulabschluss</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="berufsausbildungkeine">
                  <out:copy>
                     <out:attribute name="ifp:label">keine</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="berufsausbildungnichtbekannt">
                  <out:copy>
                     <out:attribute name="ifp:label">nicht bekannt</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="lehre">
                  <out:copy>
                     <out:attribute name="ifp:label">Lehre</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="lehreals">
                  <out:copy>
                     <out:attribute name="ifp:label">Lehre als</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="lehreabgebrochen">
                  <out:copy>
                     <out:attribute name="ifp:label">abgebrochen</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="fachschulausbildung">
                  <out:copy>
                     <out:attribute name="ifp:label">Fachschulausbildung</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="fachschulausbildungals">
                  <out:copy>
                     <out:attribute name="ifp:label">Fachschulausbildung als</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="fachschulausbildungabgebrochen">
                  <out:copy>
                     <out:attribute name="ifp:label">abgebrochen</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="studium">
                  <out:copy>
                     <out:attribute name="ifp:label">Studium</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="studiumals">
                  <out:copy>
                     <out:attribute name="ifp:label">Studium mit Fachrichtung</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="studiumabgebrochen">
                  <out:copy>
                     <out:attribute name="ifp:label">abgebrochen</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausbildungstudiumanerkanntindtl">
                  <out:copy>
                     <out:attribute name="ifp:label">Ausbildung/Studium anerkannt in Deutschland</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausbildungstudiumanerkanntin">
                  <out:copy>
                     <out:attribute name="ifp:label">Ausbildung/Studium anerkannt in</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausbildungstudiumdauertnochan">
                  <out:copy>
                     <out:attribute name="ifp:label">Ausbildung/Studium dauert noch an</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausbildungstudiumbis">
                  <out:copy>
                     <out:attribute name="ifp:label">bis</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="aktuelleberuflichetaetigkeit">
                  <out:copy>
                     <out:attribute name="ifp:label">Aktuelle oder letzte berufliche T&#228;tigkeit</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beruflichetaetigkeitseit">
                  <out:copy>
                     <out:attribute name="ifp:label">seit</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beruflichetaetigkeitbis">
                  <out:copy>
                     <out:attribute name="ifp:label">bis</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="arbeitgeber">
                  <out:copy>
                     <out:attribute name="ifp:label">Arbeitgeber</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="aktuellesnettoeinkommen">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:attribute name="ifp:label">Aktuelles oder zuletzt bezogenes Nettoeinkommen monatlich etwa</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="taetigkeitbeendet">
                  <out:copy>
                     <out:attribute name="ifp:label">T&#228;tigkeit beendet/abgebrochen</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beendigungaufgrund">
                  <out:copy>
                     <out:attribute name="ifp:label">Beendigung aufgrund</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beendigunggruende">
                  <out:copy>
                     <out:attribute name="ifp:label">Gr&#252;nde f&#252;r die Beendigung (wie Betriebsaufgabe oder Betriebsverkleinerung)</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="arbeitslos">
                  <out:copy>
                     <out:attribute name="ifp:label">arbeitslos</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="arbeitslosseit">
                  <out:copy>
                     <out:attribute name="ifp:label">seit</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="arbeitsunfaehigerkrankt">
                  <out:copy>
                     <out:attribute name="ifp:label">arbeitsunf&#228;hig erkrankt</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="arbeitsunfaehigerkranktseit">
                  <out:copy>
                     <out:attribute name="ifp:label">seit</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="erwerbsunfaehig">
                  <out:copy>
                     <out:attribute name="ifp:label">erwerbsunf&#228;hig</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="erwerbsunfaehigseit">
                  <out:copy>
                     <out:attribute name="ifp:label">seit</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
         <out:for-each select="andererelternteil3">
            <out:copy>
               <out:for-each select="bezugalg">
                  <out:copy>
                     <out:attribute name="ifp:label">Bezug von Arbeitslosengeld</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="algleistungsstelle">
                  <out:copy>
                     <out:attribute name="ifp:label">Leistungsstelle</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="alghoehe">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:attribute name="ifp:label">H&#246;he des Arbeitslosengeldes monatlich ca.</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="bezugalgii">
                  <out:copy>
                     <out:attribute name="ifp:label">Bezug von Arbeitslosengeld II</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="algiileistungsstelle">
                  <out:copy>
                     <out:attribute name="ifp:label">Leistungsstelle</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="algiihoehe">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:attribute name="ifp:label">H&#246;he des Arbeitslosengeldes II monatlich ca.</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="bezugkrankengeld">
                  <out:copy>
                     <out:attribute name="ifp:label">Krankengeld</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="krankengeldleistungsstelle">
                  <out:copy>
                     <out:attribute name="ifp:label">Leistungsstelle</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="krankengeldhoehe">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:attribute name="ifp:label">H&#246;he des Krankengeldes monatlich ca.</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="bezugrente">
                  <out:copy>
                     <out:attribute name="ifp:label">Rente</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="renteleistungsstelle">
                  <out:copy>
                     <out:attribute name="ifp:label">Leistungsstelle</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="rentehoehe">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:attribute name="ifp:label">H&#246;he der Rente monatlich ca.</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="bezugsozialhilfe">
                  <out:copy>
                     <out:attribute name="ifp:label">Sozialhilfe</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="sozialhilfeleistungsstelle">
                  <out:copy>
                     <out:attribute name="ifp:label">Leistungsstelle</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="sozialhilfehoehe">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:attribute name="ifp:label">H&#246;he der Sozialhilfe monatlich ca.</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="krankenkasse">
                  <out:copy>
                     <out:attribute name="ifp:label">Krankenkasse</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="rentenversicherungstraeger">
                  <out:copy>
                     <out:attribute name="ifp:label">Rentenversicherungstr&#228;ger</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="sonstigesozialversicherung">
                  <out:copy>
                     <out:attribute name="ifp:label">Sonstige Sozialversicherung</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="einkommenausnebentaetigkeit">
                  <out:copy>
                     <out:attribute name="ifp:label">Einkommen aus Nebent&#228;tigkeit</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="einkommennebentaetigkeithoehe">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:attribute name="ifp:label">Nettoeinkommen monatlich ca.</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="einkommenausvermietung">
                  <out:copy>
                     <out:attribute name="ifp:label">Einkommen aus Vermietung / Verpachtung</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="einkommenvermietunghoehe">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:attribute name="ifp:label">Nettoeinkommen monatlich ca.</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="sonstigeeinkommensumme">
                  <out:copy>
                     <out:attribute name="ifp:label">Summe der sonstigen Einkommen</out:attribute>
                     <out:choose>
                        <out:when test="@a:type='number'">
                           <out:attribute name="ifp:type">decimal</out:attribute>
                           <out:attribute name="xsi:type">xs:decimal</out:attribute>
                        </out:when>
                        <out:when test="@a:type='boolean'">
                           <out:attribute name="ifp:type">boolean</out:attribute>
                           <out:attribute name="xsi:type">xs:boolean</out:attribute>
                        </out:when>
                        <out:when test="@a:type='date'">
                           <out:attribute name="ifp:type">date</out:attribute>
                           <out:attribute name="xsi:type">xs:date</out:attribute>
                        </out:when>
                        <out:otherwise>
                           <out:attribute name="ifp:type">string</out:attribute>
                        </out:otherwise>
                     </out:choose>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="sonstigeseinkommenerlaeuterung">
                  <out:copy>
                     <out:attribute name="ifp:label">Erl&#228;uterungen</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="grundbesitz">
                  <out:copy>
                     <out:attribute name="ifp:label">Grundbesitz (Haus / Eigentumswohnung / unbebautes Grundst&#252;ck - auch im Ausland)</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="grundbesitzstrasse">
                  <out:copy>
                     <out:attribute name="ifp:label">Stra&#223;e</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="grundbesitzhausnummer">
                  <out:copy>
                     <out:attribute name="ifp:label">Hausnummer</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="grundbesitzpostleitzahl">
                  <out:copy>
                     <out:attribute name="ifp:label">Postleitzahl</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="grundbesitzort">
                  <out:copy>
                     <out:attribute name="ifp:label">Ort</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="grundbesitzland">
                  <out:copy>
                     <out:attribute name="ifp:label">Land</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kapitallebensversicherung">
                  <out:copy>
                     <out:attribute name="ifp:label">Kapitallebensversicherung</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kapitallebensversicherungbei">
                  <out:copy>
                     <out:attribute name="ifp:label">bei</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="sparguthaben">
                  <out:copy>
                     <out:attribute name="ifp:label">Sparguthaben</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="sparguthabenbei">
                  <out:copy>
                     <out:attribute name="ifp:label">bei</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="wertpapiere">
                  <out:copy>
                     <out:attribute name="ifp:label">Wertpapiere (Aktien / Fondsanteile)</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="wertpapierebei">
                  <out:copy>
                     <out:attribute name="ifp:label">bei</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="girokonto">
                  <out:copy>
                     <out:attribute name="ifp:label">Girokonto</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="girokontobei">
                  <out:copy>
                     <out:attribute name="ifp:label">bei</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="F00000106">
                  <out:copy>
                     <out:attribute name="ifp:label">&lt;span lang="en"&gt;&lt;abbr title="International Bank Account Number"&gt;IBAN&lt;/abbr&gt;&lt;/span&gt;</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="pkw">
                  <out:copy>
                     <out:attribute name="ifp:label">PKW</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="pkwmarke">
                  <out:copy>
                     <out:attribute name="ifp:label">Marke</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="pkwkennzeichen">
                  <out:copy>
                     <out:attribute name="ifp:label">Kennzeichen</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="pkwwert">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:attribute name="ifp:label">Wert ca.</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vermoegensonstiges">
                  <out:copy>
                     <out:attribute name="ifp:label">Sonstiges</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vermoegensonstigeserlaeuterung">
                  <out:copy>
                     <out:attribute name="ifp:label">Erl&#228;uterungen</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="schwerbehinderung">
                  <out:copy>
                     <out:attribute name="ifp:label">Schwerbehinderung</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="behinderungsgrad">
                  <out:copy>
                     <out:attribute name="ifp:label">%</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="behinderungbekannt">
                  <out:copy>
                     <out:attribute name="ifp:label">keine bekannt</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="behinderungsonstiges">
                  <out:copy>
                     <out:attribute name="ifp:label">Sonstiges (wie Art der gesundheitlichen Beeintr&#228;chtigung)</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="behinderungsonstigesausfuehrung">
                  <out:copy>
                     <out:attribute name="ifp:label">Erl&#228;uterungen</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="weitere_unterhaltsverpflichtungen">
                  <out:copy>
                     <out:for-each select="weitere_unterhaltsverpflichtungen-item">
                        <out:copy>
                           <out:for-each select="berechtigtername">
                              <out:copy>
                                 <out:attribute name="ifp:label">Name</out:attribute>
                                 <out:attribute name="ifp:type">string</out:attribute>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                           <out:for-each select="berechtigtervorname">
                              <out:copy>
                                 <out:attribute name="ifp:label">Vorname(n)</out:attribute>
                                 <out:attribute name="ifp:type">string</out:attribute>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                           <out:for-each select="berechtigtergeburtsdatum">
                              <out:copy>
                                 <out:attribute name="ifp:label">Geburtsdatum</out:attribute>
                                 <out:attribute name="ifp:type">date</out:attribute>
                                 <out:attribute name="xsi:type">xs:date</out:attribute>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                           <out:for-each select="berechtigterunterhalt">
                              <out:copy>
                                 <out:copy-of select="@currency"/>
                                 <out:attribute name="ifp:label">H&#246;he des Unterhalts</out:attribute>
                                 <out:attribute name="ifp:type">decimal</out:attribute>
                                 <out:attribute name="xsi:type">xs:decimal</out:attribute>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="schulden">
                  <out:copy>
                     <out:attribute name="ifp:label">Schulden</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="schuldenbei">
                  <out:copy>
                     <out:attribute name="ifp:label">bei</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="schuldenhoehe">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:attribute name="ifp:label">H&#246;he ca.</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="insolvenzverfahren">
                  <out:copy>
                     <out:attribute name="ifp:label">Insolvenzverfahren er&#246;ffnet/beantragt</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="schuldnerberatung">
                  <out:copy>
                     <out:attribute name="ifp:label">z. B. Schuldnerberatung</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vermoegensauskunft">
                  <out:copy>
                     <out:attribute name="ifp:label">Verm&#246;gensauskunft (fr&#252;her: eidesstattliche Versicherung) wurde bereits abgegeben</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vermoegensauskunfterlaeuterung">
                  <out:copy>
                     <out:attribute name="ifp:label">Erl&#228;uterungen</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="keineangaben">
                  <out:copy>
                     <out:attribute name="ifp:label">Ich kann keine Angaben machen</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="keineangabenweil">
                  <out:copy>
                     <out:attribute name="ifp:label">weil</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
         <out:for-each select="betreuung">
            <out:copy>
               <out:for-each select="lebtinmeinemhaushaltseit">
                  <out:copy>
                     <out:attribute name="ifp:label">Das Kind lebt in meinem Haushalt seit dem</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="betreuungkind">
                  <out:copy>
                     <out:attribute name="ifp:label">Bitte machen Sie Angaben zur Versorgung und Betreuung Ihres Kindes</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="verinbarungumgangsrecht">
                  <out:copy>
                     <out:attribute name="ifp:label">Geben Sie bitte die Vereinbarungsart an, welche f&#252;r das Umgangsrecht getroffen wurde</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vereinbarunggilt">
                  <out:copy>
                     <out:attribute name="ifp:label">Die Regelung gilt</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vereinbarungumgangsrechtsonstige">
                  <out:copy>
                     <out:attribute name="ifp:label">Bitte beschreiben Sie die Regelung</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="betreuungszeiten_des_anderen_elternteiles">
                  <out:copy>
                     <out:for-each select="betreuungszeiten_des_anderen_elternteiles-item">
                        <out:copy>
                           <out:for-each select="tag">
                              <out:copy>
                                 <out:attribute name="ifp:label">Wochentag</out:attribute>
                                 <out:attribute name="ifp:type">string</out:attribute>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                           <out:for-each select="ganztags">
                              <out:copy>
                                 <out:attribute name="ifp:label">ganztags</out:attribute>
                                 <out:attribute name="ifp:type">boolean</out:attribute>
                                 <out:attribute name="xsi:type">xs:boolean</out:attribute>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                           <out:for-each select="inderzeitvon">
                              <out:copy>
                                 <out:attribute name="ifp:label">in der Zeit von</out:attribute>
                                 <out:attribute name="ifp:type">string</out:attribute>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                           <out:for-each select="inderzeitbis">
                              <out:copy>
                                 <out:attribute name="ifp:label">bis</out:attribute>
                                 <out:attribute name="ifp:type">string</out:attribute>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
         <out:for-each select="unterhalt">
            <out:copy>
               <out:for-each select="unterhaltsfestsetzung">
                  <out:copy>
                     <out:attribute name="ifp:label">Bitte w&#228;hlen Sie den zutreffenden Punkt bez&#252;glich der Unterhaltsfestsetzung aus</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="unterhaltsfestsetzungbehoerde">
                  <out:copy>
                     <out:attribute name="ifp:label">Welche Beh&#246;rde hat die Unterhaltsfestsetzung beschlossen?</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="verpflichtungunterhaltmonatlich">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:attribute name="ifp:label">Nach der Unterhaltsfestsetzung besteht die Verpflichtung, f&#252;r das Kind monatlich folgenden Unterhalt zu zahlen</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="antragunterhaltsfestsetzungam">
                  <out:copy>
                     <out:attribute name="ifp:label">Ein Antrag auf Unterhaltsfestsetzung ist am</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="antragunterhaltsfestsetzungamtsgericht">
                  <out:copy>
                     <out:attribute name="ifp:label">gestellt worden beim</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="antragunterhaltsfestsetzunggeschzeich">
                  <out:copy>
                     <out:attribute name="ifp:label">Gesch&#228;ftszeichen</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="keinantragunterhaltsfestsetzungweil">
                  <out:copy>
                     <out:attribute name="ifp:label">weil</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="keinantragunterhaltsfestsetzunganderergrund">
                  <out:copy>
                     <out:attribute name="ifp:label">Es ist kein Antrag auf Unterhaltsfestsetzung gestellt worden, weil</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="unterhaltszahlungandereret">
                  <out:copy>
                     <out:attribute name="ifp:label">Der andere Elternteil zahlt</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="keinenunterhalt_seit">
                  <out:copy>
                     <out:attribute name="ifp:label">seit</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="letztezahlungam">
                  <out:copy>
                     <out:attribute name="ifp:label">letzte Zahlung am</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="unterhaltinhoehevon">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:attribute name="ifp:label">in H&#246;he von</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geringererunterhaltinhoehevon">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:attribute name="ifp:label">in H&#246;he von</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geringererunterhaltseit">
                  <out:copy>
                     <out:attribute name="ifp:label">seit</out:attribute>
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vorauszahlung">
                  <out:copy>
                     <out:attribute name="ifp:label">Erfolgte eine Vorauszahlung?</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vorauszahlungmonate">
                  <out:copy>
                     <out:attribute name="ifp:label">Es erfolgte eine Vorauszahlung f&#252;r die Monate</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vorauszahlunginhoehevon">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:attribute name="ifp:label">in H&#246;he von</out:attribute>
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="zahlungunterhaltsrelevanteleistungen">
                  <out:copy>
                     <out:attribute name="ifp:label">Zahlt der andere Elternteil unterhaltsrelevante Leistungen an mich?</out:attribute>
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="unterhaltsrelevanteleistung">
                  <out:copy>
                     <out:attribute name="ifp:label">Der andere Elternteil zahlt an mich folgende unterhaltsrelevante Leistungen</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
         <out:for-each select="weiterekinder">
            <out:copy>
               <out:for-each select="weitere_gemeinsame_kinder">
                  <out:copy>
                     <out:for-each select="weitere_gemeinsame_kinder-item">
                        <out:copy>
                           <out:for-each select="name">
                              <out:copy>
                                 <out:attribute name="ifp:label">Name</out:attribute>
                                 <out:attribute name="ifp:type">string</out:attribute>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                           <out:for-each select="vorname">
                              <out:copy>
                                 <out:attribute name="ifp:label">Vorname(n)</out:attribute>
                                 <out:attribute name="ifp:type">string</out:attribute>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                           <out:for-each select="geburtsdatum">
                              <out:copy>
                                 <out:attribute name="ifp:label">Geburtsdatum</out:attribute>
                                 <out:attribute name="ifp:type">date</out:attribute>
                                 <out:attribute name="xsi:type">xs:date</out:attribute>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                           <out:for-each select="lebtbei">
                              <out:copy>
                                 <out:attribute name="ifp:label">lebt bei</out:attribute>
                                 <out:attribute name="ifp:type">string</out:attribute>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="bemerkungen">
                  <out:copy>
                     <out:attribute name="ifp:label">Bemerkungen</out:attribute>
                     <out:attribute name="ifp:type">string</out:attribute>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
         <out:for-each select="einwilligungdatenaustausch">
            <out:copy>
               <out:attribute name="ifp:label">Ich bin damit einverstanden, dass die notwendigen Daten zur Durchf&#252;hrung des &lt;abbr title="Unterhaltsvorschussgesetz"&gt;UVG&lt;/abbr&gt; mit dem Beistand, dem (Amts-)Pfleger oder dem Vormund ausgetauscht werden k&#246;nnen. Die erteilte Einwilligung ist freiwillig und kann jederzeit widerrufen werden. Bis zum Widerruf bleibt die Rechtm&#228;&#223;igkeit der Verarbeitung auf der Grundlage der Einwilligung unber&#252;hrt.</out:attribute>
               <out:attribute name="ifp:type">boolean</out:attribute>
               <out:attribute name="xsi:type">xs:boolean</out:attribute>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_orgname1">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_app_orgName1:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_orgname2">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_app_orgname2:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_bezirknr">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_app_bezirkNr:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_email">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_app_eMail:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_faxno">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_app_faxNo:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_bezirk">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_app_bezirk:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_mobileno">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_app_mobileNo:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_houseno">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_app_houseNo:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_postalcode">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_app_postalCode:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_city">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_app_city:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_country">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_app_country:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_telno">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_app_telNo:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_academictitle">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_app_academicTitle:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_formofaddress">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_app_formOfAddress:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_postofficebox">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_app_postOfficeBox:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_identitynamespace">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_app_identityNamespace:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_partnertype">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_app_partnerType:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_street">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_app_street:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_firstname">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_app_firstName:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_lastname">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_app_lastName:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_nationality">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_app_nationality:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_partnertype">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_aut_partnerType:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_country">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_aut_country:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_email">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_aut_eMail:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_faxno">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_aut_faxNo:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_mobileno">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_aut_mobileNo:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_telno">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_aut_telNo:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_orgname1">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_aut_orgName1:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_postalcode">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_aut_postalCode:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_street">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_aut_street:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_houseno">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_aut_houseNo:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_nationality">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_aut_nationality:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_bezirknr">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_aut_bezirkNr:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_postofficebox">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_aut_postOfficeBox:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_identitynamespace">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_aut_identityNamespace:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_city">
            <out:copy>
               <out:attribute name="ifp:label">bda_xfall_aut_city:</out:attribute>
               <out:choose>
                  <out:when test="@a:type='number'">
                     <out:attribute name="ifp:type">decimal</out:attribute>
                     <out:attribute name="xsi:type">xs:decimal</out:attribute>
                  </out:when>
                  <out:when test="@a:type='boolean'">
                     <out:attribute name="ifp:type">boolean</out:attribute>
                     <out:attribute name="xsi:type">xs:boolean</out:attribute>
                  </out:when>
                  <out:when test="@a:type='date'">
                     <out:attribute name="ifp:type">date</out:attribute>
                     <out:attribute name="xsi:type">xs:date</out:attribute>
                  </out:when>
                  <out:otherwise>
                     <out:attribute name="ifp:type">string</out:attribute>
                  </out:otherwise>
               </out:choose>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="dateien">
            <out:copy>
               <out:for-each select="scheidungsurteil">
                  <out:copy>
                     <out:for-each select="scheidungsurteil-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="aufhebungsurkunde">
                  <out:copy>
                     <out:for-each select="aufhebungsurkunde-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="sterbeurkunde">
                  <out:copy>
                     <out:for-each select="sterbeurkunde-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="getrenntweilnachweis">
                  <out:copy>
                     <out:for-each select="getrenntweilnachweis-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="aufenthaltstitel">
                  <out:copy>
                     <out:for-each select="aufenthaltstitel-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="nachweiseuebereinkommenundkrankenkasse">
                  <out:copy>
                     <out:for-each select="nachweiseuebereinkommenundkrankenkasse-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geburtsurkunde">
                  <out:copy>
                     <out:for-each select="geburtsurkunde-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vaterschaftsanerkennungsurkunde">
                  <out:copy>
                     <out:for-each select="vaterschaftsanerkennungsurkunde-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="leistungsbezugbescheid">
                  <out:copy>
                     <out:for-each select="leistungsbezugbescheid-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="bewilligungsbescheid">
                  <out:copy>
                     <out:for-each select="bewilligungsbescheid-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="antragsbestaetigungwaisenbezuege">
                  <out:copy>
                     <out:for-each select="antragsbestaetigungwaisenbezuege-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="hilfelebensunterhaltbescheid">
                  <out:copy>
                     <out:for-each select="hilfelebensunterhaltbescheid-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="anlagevereinbarung">
                  <out:copy>
                     <out:for-each select="anlagevereinbarung-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="monatlicheauflistung">
                  <out:copy>
                     <out:for-each select="monatlicheauflistung-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="bescheidjobcenter">
                  <out:copy>
                     <out:for-each select="bescheidjobcenter-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="bescheidkinderwohngeld">
                  <out:copy>
                     <out:for-each select="bescheidkinderwohngeld-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="schulbescheinigung">
                  <out:copy>
                     <out:for-each select="schulbescheinigung-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausbildungsnachweis">
                  <out:copy>
                     <out:for-each select="ausbildungsnachweis-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="nachweishalbwaisenrente">
                  <out:copy>
                     <out:for-each select="nachweishalbwaisenrente-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="nachweisschadensersatzleistungen">
                  <out:copy>
                     <out:for-each select="nachweisschadensersatzleistungen-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="nachweisnichtselbststaendigearbeit">
                  <out:copy>
                     <out:for-each select="nachweisnichtselbststaendigearbeit-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="nachweisselbststaendigearbeit">
                  <out:copy>
                     <out:for-each select="nachweisselbststaendigearbeit-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="nachweiskapitalvermoegen">
                  <out:copy>
                     <out:for-each select="nachweiskapitalvermoegen-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="privatrechtlichevereinbarung">
                  <out:copy>
                     <out:for-each select="privatrechtlichevereinbarung-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="unterhaltsrelevanteleistungnachweis">
                  <out:copy>
                     <out:for-each select="unterhaltsrelevanteleistungnachweis-item">
                        <out:copy>
                           <out:for-each select="file">
                              <out:copy>
                                 <out:apply-templates select="@*" mode="copy"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
      </out:copy>
   </out:template>
   <out:template match="@*">
      <out:copy>
         <out:apply-templates select="node()"/>
      </out:copy>
   </out:template>
   <out:template match="@*|node()" mode="copy">
      <out:copy>
         <out:apply-templates select="@*|node()" mode="copy"/>
      </out:copy>
   </out:template>
   <out:template match="@*[namespace-uri()='http://xmlns.cit.de/assistants/internal']" mode="copy"/>
</out:stylesheet>