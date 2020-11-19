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
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="eid">
            <out:copy>
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
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000043">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000013">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000045">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000014">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000066">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000067">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geschlecht">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beruf">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="arbeitgeber">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geburtsort">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="staatsangehoerigkeit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="wohnhaftinberlin">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="strassenichtberlin">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="hausnummernichtberlin">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="postleitzahlnichtberlin">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ortnichtberlin">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000053">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="objtype">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000016">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000084">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="hnr">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000054">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="otname">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="bzrname">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="otnr">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="bzrnr">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="strnr">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="f00000035">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="land">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="k1000">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="k5000">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="xstat">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ystat">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="etrs89_x">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="etrs89_y">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="rbs_valid">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="dortwohnhaftseit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="telefon">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausweisung">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausweisnr">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="gueltigbis">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kontovorhanden">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="bankname">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kontoinhaber">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="F00000106">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="selectdistrict">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
         <out:for-each select="antragstellerweitere">
            <out:copy>
               <out:for-each select="familienstand">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vomanderenelternteilgetrennt">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geschiedenseit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="nichtmehringleichgeschlechtlicherlebenspartnerschaftseit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="verwitwetseit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vonelternteilgetrenntseit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vomehegattenehegattingetrenntseit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vonehepartnergetrenntweil">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geschlecht">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="name">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vorname">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geburtsdatum">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="strasse">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="hausnummer">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="postleitzahl">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ort">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="land">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
         <out:for-each select="kind">
            <out:copy>
               <out:for-each select="geschlecht">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="name">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vorname">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geburtsdatum">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geburtsort">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="staatsangehoerigkeit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="aufenthaltstitelgueltigbis">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="leistungsbezugnachuvg">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="leistungsbezugbehoerde">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="leistungsbezugvon">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="leistungsbezugbis">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="waisenrente">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="waisenrentehoehe">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="waisenrenteleistungsstelle">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="antragwaisenbezuegegestelltam">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="waisenbezuegebehoerde">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="waisenbezuegeaktenzeichen">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="hilfelebensunterhalt">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="hilfelebensunterhaltnr">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="hilfelebensunterhaltbegruendung">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
         <out:for-each select="kindueber12">
            <out:copy>
               <out:for-each select="leistungenjobcenter">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kinderwohngeld">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="erzielungbruttoeinkommen">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kindschule">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="schulebeendet">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="schulevoraussichtlichesende">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="schulebeendetseit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kindabschluss">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausbildungsbeginn">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausbildungals">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausbildungvoraussichtlichesende">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausbildungsverguetung">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausbildungunterkunft">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kinderwerbstaetigkeit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="verguetungerwerbstaetigkeit">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kindeinkuenfte">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kindhalbwaisenrente">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="halbwaisenrentehoehe">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="schadensersatzleistungen">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="nichtselbststaendigearbeit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="selbststaendigearbeit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kapitalvermoegen">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="erlernterberuf">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausgeuebtetaetigkeit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="monatlichesnettoeinkommen">
                  <out:copy>
                     <out:copy-of select="@currency"/>
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
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
         <out:for-each select="vormundschaft">
            <out:copy>
               <out:for-each select="beistandschaft">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beistandschaftseit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beistandschaftbeantragtam">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beistandschaftbehoerde">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beistandschaftgeschzeichen">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beistandauskunftserteilung">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beauftragungrechtsanwaltsbuero">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="name">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="strasse">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="hausnummer">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="postleitzahl">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ort">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="aktenzeichen">
                  <out:copy>
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
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vaterschaftnichtfeststellbarweil">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vaterschaftanerkannt">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="antragauffeststellungvaterschaft">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vaterschaftsfeststellungsverfahrenbei">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vaterschaftnochnichtfestgestelltweil">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ehemannvater">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vaterschaftsanfechtungsklage">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vaterschaftsanfechtungsklageamtsgericht">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geschlecht">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="name">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vorname">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="strasse">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="hausnummer">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="postleitzahl">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ort">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="land">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geburtsdatum">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="familienstand">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="staatsangehoerigkeit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geburtsort">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geburtsland">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="telefon">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
         <out:for-each select="andererelternteil2">
            <out:copy>
               <out:for-each select="schulabschluss">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="berufsausbildungkeine">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="berufsausbildungnichtbekannt">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="lehre">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="lehreals">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="lehreabgebrochen">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="fachschulausbildung">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="fachschulausbildungals">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="fachschulausbildungabgebrochen">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="studium">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="studiumals">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="studiumabgebrochen">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausbildungstudiumanerkanntindtl">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausbildungstudiumanerkanntin">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausbildungstudiumdauertnochan">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="ausbildungstudiumbis">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="aktuelleberuflichetaetigkeit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beruflichetaetigkeitseit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beruflichetaetigkeitbis">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="arbeitgeber">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="aktuellesnettoeinkommen">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="taetigkeitbeendet">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beendigungaufgrund">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="beendigunggruende">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="arbeitslos">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="arbeitslosseit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="arbeitsunfaehigerkrankt">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="arbeitsunfaehigerkranktseit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="erwerbsunfaehig">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="erwerbsunfaehigseit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
         <out:for-each select="andererelternteil3">
            <out:copy>
               <out:for-each select="bezugalg">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="algleistungsstelle">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="alghoehe">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="bezugalgii">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="algiileistungsstelle">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="algiihoehe">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="bezugkrankengeld">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="krankengeldleistungsstelle">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="krankengeldhoehe">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="bezugrente">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="renteleistungsstelle">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="rentehoehe">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="bezugsozialhilfe">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="sozialhilfeleistungsstelle">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="sozialhilfehoehe">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="krankenkasse">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="rentenversicherungstraeger">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="sonstigesozialversicherung">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="einkommenausnebentaetigkeit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="einkommennebentaetigkeithoehe">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="einkommenausvermietung">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="einkommenvermietunghoehe">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="sonstigeeinkommensumme">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="sonstigeseinkommenerlaeuterung">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="grundbesitz">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="grundbesitzstrasse">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="grundbesitzhausnummer">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="grundbesitzpostleitzahl">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="grundbesitzort">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="grundbesitzland">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kapitallebensversicherung">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="kapitallebensversicherungbei">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="sparguthaben">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="sparguthabenbei">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="wertpapiere">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="wertpapierebei">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="girokonto">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="girokontobei">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="F00000106">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="pkw">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="pkwmarke">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="pkwkennzeichen">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="pkwwert">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vermoegensonstiges">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vermoegensonstigeserlaeuterung">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="schwerbehinderung">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="behinderungsgrad">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="behinderungbekannt">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="behinderungsonstiges">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="behinderungsonstigesausfuehrung">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="weitere_unterhaltsverpflichtungen">
                  <out:copy>
                     <out:for-each select="weitere_unterhaltsverpflichtungen-item">
                        <out:copy>
                           <out:for-each select="berechtigtername">
                              <out:copy>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                           <out:for-each select="berechtigtervorname">
                              <out:copy>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                           <out:for-each select="berechtigtergeburtsdatum">
                              <out:copy>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                           <out:for-each select="berechtigterunterhalt">
                              <out:copy>
                                 <out:copy-of select="@currency"/>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="schulden">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="schuldenbei">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="schuldenhoehe">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="insolvenzverfahren">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="schuldnerberatung">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vermoegensauskunft">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vermoegensauskunfterlaeuterung">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="keineangaben">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="keineangabenweil">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
         <out:for-each select="betreuung">
            <out:copy>
               <out:for-each select="lebtinmeinemhaushaltseit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="betreuungkind">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="verinbarungumgangsrecht">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vereinbarunggilt">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vereinbarungumgangsrechtsonstige">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="betreuungszeiten_des_anderen_elternteiles">
                  <out:copy>
                     <out:for-each select="betreuungszeiten_des_anderen_elternteiles-item">
                        <out:copy>
                           <out:for-each select="tag">
                              <out:copy>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                           <out:for-each select="ganztags">
                              <out:copy>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                           <out:for-each select="inderzeitvon">
                              <out:copy>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                           <out:for-each select="inderzeitbis">
                              <out:copy>
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
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="unterhaltsfestsetzungbehoerde">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="verpflichtungunterhaltmonatlich">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="antragunterhaltsfestsetzungam">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="antragunterhaltsfestsetzungamtsgericht">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="antragunterhaltsfestsetzunggeschzeich">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="keinantragunterhaltsfestsetzungweil">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="keinantragunterhaltsfestsetzunganderergrund">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="unterhaltszahlungandereret">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="keinenunterhalt_seit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="letztezahlungam">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="unterhaltinhoehevon">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geringererunterhaltinhoehevon">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="geringererunterhaltseit">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vorauszahlung">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vorauszahlungmonate">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="vorauszahlunginhoehevon">
                  <out:copy>
                     <out:copy-of select="@currency"/>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="zahlungunterhaltsrelevanteleistungen">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
               <out:for-each select="unterhaltsrelevanteleistung">
                  <out:copy>
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
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                           <out:for-each select="vorname">
                              <out:copy>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                           <out:for-each select="geburtsdatum">
                              <out:copy>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                           <out:for-each select="lebtbei">
                              <out:copy>
                                 <out:value-of select="."/>
                              </out:copy>
                           </out:for-each>
                        </out:copy>
                     </out:for-each>
                  </out:copy>
               </out:for-each>
               <out:for-each select="bemerkungen">
                  <out:copy>
                     <out:value-of select="."/>
                  </out:copy>
               </out:for-each>
            </out:copy>
         </out:for-each>
         <out:for-each select="einwilligungdatenaustausch">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_orgname1">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_orgname2">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_bezirknr">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_email">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_faxno">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_bezirk">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_mobileno">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_houseno">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_postalcode">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_city">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_country">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_telno">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_academictitle">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_formofaddress">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_postofficebox">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_identitynamespace">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_partnertype">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_street">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_firstname">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_lastname">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_app_nationality">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_partnertype">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_country">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_email">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_faxno">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_mobileno">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_telno">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_orgname1">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_postalcode">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_street">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_houseno">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_nationality">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_bezirknr">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_postofficebox">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_identitynamespace">
            <out:copy>
               <out:value-of select="."/>
            </out:copy>
         </out:for-each>
         <out:for-each select="bda_xfall_aut_city">
            <out:copy>
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