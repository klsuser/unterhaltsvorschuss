<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung"); %>

<%!
static java.lang.reflect.Method getComments;
static {
  try {
    getComments = de.cit.jsp.tags.FormTag.class.getMethod("getComments", String.class);
  } catch (NoSuchMethodException e) {
  }
}
   static String getComments(final Object form, final String fieldname) {
      try {
         return form != null && getComments != null ? (String) getComments.invoke(form, fieldname) : "";
      } catch (Exception e) {
         return "";
      }
   }
%>
    

<!DOCTYPE html
  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:cit="http://www.cit.de/ns/jsp" xmlns:html="http://www.w3.org/1999/xhtml" lang="de-DE" class="no-js">
   <head>
      <cit:useBean name="myForm" class="de.cit.assistants.DataBean"/>
      <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
      <meta content="width=device-width, initial-scale=1, user-scalable=yes" name="viewport"/><% String buildRelease = application.getInitParameter("build.release"); if (buildRelease != null) {%><meta name="build.release" content="<%= buildRelease %>"/><% } %><% String buildNumber = application.getInitParameter("build.number"); if (buildNumber != null) {%><meta name="build.number" content="<%= buildNumber %>"/><% } %><% String buildRevision = application.getInitParameter("build.revision"); if (buildRevision != null) {%><meta name="build.revision" content="<%= buildRevision %>"/><% } %><!--plugin:theme-html5-->
    <cit:theme/>
    
      <script charset="utf-8" src="_plugins/theme-html5/script.js?1572602692000" type="text/javascript"/>
  
      <title id="page-title">
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow/>
      </cit:control>
   </head>
   <body id="antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung">
      <div id="custom_top"/>
      <div id="if">
         <div id="page" class=" has_roadmap_right">
            <header>
               <div class="dynamic_area">
                  <div class="headercontent">
                     <div id="logo"/>
                     <h1>unterhaltsvorschuss</h1>
                     <section id="useraccount"/>
                  </div>
               </div>
            </header>
            <nav id="roadmap" class="roadmap roadmap_right">
               <h3 class="accessibility">Dialogverlauf</h3>
               <span class="switch" title="Dialogverlauf öffnen/schließen">
                  <span class="accessibility">Dialogverlauf öffnen/schließen</span>
               </span>
               <ul class="icons"><% final boolean unvisited_d9e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d9e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                        <a href="" class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d9e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d9e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d9e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d9e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d9e4 = !isVisited(session, "antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung"); %><li class='present<%= unvisited_d9e4 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                           <span class="labelicon" title='<%= unvisited_d9e4 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d9e4 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d9e6 = !isVisited(session, "weitere-angaben-antragsteller-in"); %><li class='future<%= unvisited_d9e6 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben Antragsteller/in</span>
                           <span class="labelicon" title='<%= unvisited_d9e6 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d9e6 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d9e8 = !isVisited(session, "angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='future<%= unvisited_d9e8 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d9e8 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d9e8 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d9e10 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d9e10 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d9e10 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d9e10 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d9e12 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='future<%= unvisited_d9e12 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d9e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d9e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d9e14 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='future<%= unvisited_d9e14 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d9e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d9e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d9e16 = !isVisited(session, "angaben-anderes-elternteil-1-3"); %><li class='future<%= unvisited_d9e16 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben anderes Elternteil (1/3)</span>
                           <span class="labelicon" title='<%= unvisited_d9e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d9e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d9e18 = !isVisited(session, "angaben-anderes-elternteil-2-3"); %><li class='future<%= unvisited_d9e18 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben anderes Elternteil (2/3)</span>
                           <span class="labelicon" title='<%= unvisited_d9e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d9e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d9e20 = !isVisited(session, "angaben-anderes-elternteil-3-3"); %><li class='future<%= unvisited_d9e20 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben anderes Elternteil (3/3)</span>
                           <span class="labelicon" title='<%= unvisited_d9e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d9e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d9e22 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d9e22 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d9e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d9e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d9e24 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d9e24 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d9e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d9e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d9e26 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d9e26 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d9e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d9e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li>
               </ul>
            </nav>
            <div class="dynamic_area">
               <article>
                  <section id="content" class=" narrow">
                     <cit:form beanName="myForm">
                        <div class="wizard-body">
                           <h2 id="title">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</h2>
                           <cit:conditional test="!assistants.request.valid &amp;&amp; (assistants.request.strictInvalid === undefined || assistants.request.strictInvalid === true)">
                              <p class="invalidInfo">
                                 <strong>Fehler beim Ausfüllen: Bitte überprüfen Sie Ihre Angaben.</strong>
                              </p>
                           </cit:conditional>
                           <cit:conditional test="!assistants.request.valid &amp;&amp; assistants.request.softInvalid === true">
                              <p class="invalidInfo loose">
                                 <strong>Mögliche Fehler beim Ausfüllen: Bitte kontrollieren Sie Ihre Angaben nochmals. Wenn Sie sicher sind, klicken Sie erneut auf <em class="button-name icon-arrow-right">Weiter</em>.</strong>
                              </p>
                           </cit:conditional>
                           <cit:xmlResource id="C00000002" src="/WEB-INF/data/staatsangehoerigkeit_2019-04-01.xml"/>
                           <section class="infobox narrow">Angaben zum <u>Antragsteller</u>/zur <u>Antragstellerin</u> als gesetzliche/r Vertreter/in des Kindes</section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "geschlecht") %>'>
                              <cit:conditional test="!assistants.request.isValid('geschlecht')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="geschlecht"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="geschlecht" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="geschlecht" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <div class="pseudoLabel">Geschlecht:</div>
                                 <div class="inputcontainer">
                                    <cit:choiceGroup name="geschlecht">
                                       <div class="choice">
                                          <cit:inputChoice value="männlich"/>
                                          <cit:inputLabel name="geschlecht.männlich">männlich</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="weiblich"/>
                                          <cit:inputLabel name="geschlecht.weiblich">weiblich</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="divers"/>
                                          <cit:inputLabel name="geschlecht.divers">divers</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="ohne Angabe (gemäß § 45 b Personenstandsgesetz)"/>
                                          <cit:inputLabel name="geschlecht.ohne Angabe (gemäß § 45 b Personenstandsgesetz)">ohne Angabe (gemäß § 45 b Personenstandsgesetz)</cit:inputLabel>
                                       </div>
                                    </cit:choiceGroup>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "name") %>'>
                              <cit:conditional test="!assistants.request.isValid('name')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="name"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="name" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="name" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="name">Name:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputText name="name"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "vorname") %>'>
                              <cit:conditional test="!assistants.request.isValid('vorname')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="vorname"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="vorname" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="vorname" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="vorname">Vorname:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputText name="vorname"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "geburtsname") %>'>
                              <cit:conditional test="!assistants.request.isValid('geburtsname')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="geburtsname"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="geburtsname" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="geburtsname" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="geburtsname">ggf. Geburtsname:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputText name="geburtsname"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "geburtsdatum") %>'>
                              <cit:conditional test="!assistants.request.isValid('geburtsdatum')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:conditional test="!My.isCustomReason('geburtsdatum')">
                                          <cit:errorText name="geburtsdatum"/>
                                       </cit:conditional>
                                       <cit:conditional test="My.isCustomReason('geburtsdatum')">
                                          <cit:errorText name="geburtsdatum">Das Datum muss in der Vergangenheit liegen</cit:errorText>
                                       </cit:conditional>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="geburtsdatum" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="geburtsdatum" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="geburtsdatum">Geburtsdatum:<span class="tooltip">
                                       <a target="intelliform_help" class="icon" href='<%= response.encodeURL("help.jsp#antragsteller.geburtsdatum") %>'>
                                          <span class="accessibility">Hilfe [Neues Fenster]</span>
                                       </a>
                                    </span>
                                 </cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputDate name="geburtsdatum" class="tiny focus-mark-before" showChooser="true" onValidate="(/^\s*$/.test(value))||(value &lt; new Date())" errtitle="Das Datum muss in der Vergangenheit liegen" placeholder="TT.MM.JJJJ"/>
                                 </div>
                                 <div class="tooltip_overlay">
                                    <div class="tooltip_text">Für den Fall, dass Ihr Geburtstag mit dem Datum 00.00.XXXX erfasst ist, tragen Sie hier bitte den 01.01.XXXX ein.<span class="close">
                                          <span class="accessibility">Schließen</span>
                                       </span>
                                    </div>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "beruf") %>'>
                              <cit:conditional test="!assistants.request.isValid('beruf')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="beruf"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="beruf" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="beruf" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="beruf">Beruf:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputText name="beruf"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "arbeitgeber") %>'>
                              <cit:conditional test="!assistants.request.isValid('arbeitgeber')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="arbeitgeber"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="arbeitgeber" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="arbeitgeber" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="arbeitgeber">Arbeitgeber:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputText name="arbeitgeber"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "geburtsort") %>'>
                              <cit:conditional test="!assistants.request.isValid('geburtsort')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="geburtsort"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="geburtsort" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="geburtsort" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="geburtsort">Geburtsort:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputText name="geburtsort"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "staatsangehoerigkeit") %>'>
                              <cit:conditional test="!assistants.request.isValid('staatsangehoerigkeit')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="staatsangehoerigkeit"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="staatsangehoerigkeit" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="staatsangehoerigkeit" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="staatsangehoerigkeit">Staatsangehörigkeit:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputSelect name="staatsangehoerigkeit" default="deutsch">
                                       <cit:option value="">--- bitte wählen Sie aus ---</cit:option>
                                       <cit:xmlOptions src="urn:xmlid:C00000002" select="/*/SimpleCodeList/Row/Value[@ColumnRef=&#34;Staatsangehoerigkeit&#34;]" text="SimpleValue"/>
                                    </cit:inputSelect>
                                 </div>
                              </div>
                           </section>
                           <section class="group narrow">
                              <header>
                                 <h3>Adressdaten Antragsteller/in</h3>
                              </header>
                              <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "wohnhaftinberlin") %>' data-live-stay="stay_nonval_d0e142">
                                 <cit:conditional test="!assistants.request.isValid('wohnhaftinberlin')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="wohnhaftinberlin"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="wohnhaftinberlin" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="wohnhaftinberlin" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <span class="pseudoLabel">Wohnen Sie aktuell in Berlin?</span>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer choice-inline">
                                       <cit:choiceGroup type="boolean" name="wohnhaftinberlin" default="true">
                                          <div class="choice">
                                             <cit:inputChoice value="true" immediate="true"/>
                                             <cit:inputLabel name="wohnhaftinberlin.true">Ja</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="false" immediate="true"/>
                                             <cit:inputLabel name="wohnhaftinberlin.false">Nein</cit:inputLabel>
                                          </div>
                                       </cit:choiceGroup>
                                    </div>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e142" id="stay.nonval.d0e142" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e142').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "wohnhaftinberlin", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.wohnhaftinberlin == false">
                                 <section class="infobox narrow"><p><b>Bitte geben Sie hier Ihre letzte Wohnanschrift in Berlin an</b></p><br/><br/></section>
                              </cit:conditional>
                              <cit:conditional test="myForm.wohnhaftinberlin == true">
                                 <section class="infobox narrow"><p><strong>Bitte geben Sie hier Ihre aktuelle Wohnanschrift an</strong></p><br/><br/></section>
                              </cit:conditional>
                              <cit:conditional test="myForm.wohnhaftinberlin == false || myForm.wohnhaftinberlin == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "strasse") %>'>
                                    <cit:conditional test="!assistants.request.isValid('strasse')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="strasse"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="strasse" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="strasse" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="strasse">Straße:</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="strasse"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.wohnhaftinberlin == false || myForm.wohnhaftinberlin == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "hausnummer") %>'>
                                    <cit:conditional test="!assistants.request.isValid('hausnummer')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="hausnummer"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="hausnummer" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="hausnummer" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="hausnummer">Hausnummer:</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="hausnummer"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.wohnhaftinberlin == false || myForm.wohnhaftinberlin == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "postleitzahl") %>'>
                                    <cit:conditional test="!assistants.request.isValid('postleitzahl')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="postleitzahl"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="postleitzahl" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="postleitzahl" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="postleitzahl">Postleitzahl:</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputNumber name="postleitzahl" class="number rightalign use-size" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.wohnhaftinberlin == false || myForm.wohnhaftinberlin == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "ort") %>'>
                                    <cit:conditional test="!assistants.request.isValid('ort')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="ort"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="ort" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="ort" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="ort">Ort:</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="ort"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.wohnhaftinberlin == false">
                                 <section class="infobox narrow"><br/><br/><strong>Bitte geben Sie hier Ihre aktuelle Wohnanschrift an</strong><br/><br/></section>
                              </cit:conditional>
                              <cit:conditional test="myForm.wohnhaftinberlin == false">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "strassenichtberlin") %>'>
                                    <cit:conditional test="!assistants.request.isValid('strassenichtberlin')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="strassenichtberlin"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="strassenichtberlin" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="strassenichtberlin" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="strassenichtberlin">Straße:</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="strassenichtberlin"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.wohnhaftinberlin == false">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "hausnummernichtberlin") %>'>
                                    <cit:conditional test="!assistants.request.isValid('hausnummernichtberlin')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="hausnummernichtberlin"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="hausnummernichtberlin" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="hausnummernichtberlin" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="hausnummernichtberlin">Hausnummer:</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="hausnummernichtberlin"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.wohnhaftinberlin == false">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "postleitzahlnichtberlin") %>'>
                                    <cit:conditional test="!assistants.request.isValid('postleitzahlnichtberlin')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="postleitzahlnichtberlin"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="postleitzahlnichtberlin" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="postleitzahlnichtberlin" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="postleitzahlnichtberlin">Postleitzahl:</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputNumber name="postleitzahlnichtberlin" class="number rightalign use-size" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.wohnhaftinberlin == false">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "ortnichtberlin") %>'>
                                    <cit:conditional test="!assistants.request.isValid('ortnichtberlin')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="ortnichtberlin"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="ortnichtberlin" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="ortnichtberlin" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="ortnichtberlin">Ort</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="ortnichtberlin"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                           </section>
                           <cit:conditional test="myForm.wohnhaftinberlin == false || myForm.wohnhaftinberlin == true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "dortwohnhaftseit") %>'>
                                 <cit:conditional test="!assistants.request.isValid('dortwohnhaftseit')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:conditional test="!My.isCustomReason('dortwohnhaftseit')">
                                             <cit:errorText name="dortwohnhaftseit"/>
                                          </cit:conditional>
                                          <cit:conditional test="My.isCustomReason('dortwohnhaftseit')">
                                             <cit:errorText name="dortwohnhaftseit">Das Datum muss in der Vergangenheit liegen</cit:errorText>
                                          </cit:conditional>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="dortwohnhaftseit" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="dortwohnhaftseit" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="dortwohnhaftseit">dort wohnhaft seit:</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputDate name="dortwohnhaftseit" class="tiny focus-mark-before" showChooser="true" onValidate="(/^\s*$/.test(value))||(value &lt; new Date())" errtitle="Das Datum muss in der Vergangenheit liegen" placeholder="TT.MM.JJJJ"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.wohnhaftinberlin == false || myForm.wohnhaftinberlin == true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "telefon") %>'>
                                 <cit:conditional test="!assistants.request.isValid('telefon')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="telefon"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="telefon" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="telefon" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="telefon">Telefon:</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputNumber name="telefon" class="number rightalign use-size" size="15"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <section class="group narrow">
                              <header>
                                 <h3>Ausgewiesen durch...</h3>
                              </header>
                              <section class="block live narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausweisung") %>' data-live-stay="stay_nonval_d0e268">
                                 <cit:conditional test="!assistants.request.isValid('ausweisung')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="ausweisung"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="ausweisung" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="ausweisung" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="ausweisung">Bitte geben Sie die Art an, wie Sie sich ausweisen wollen:</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputSelect name="ausweisung" immediate="true">
                                          <cit:option value="--- bitte wählen Sie aus ---">--- bitte wählen Sie aus ---</cit:option>
                                          <cit:option value="Personalausweis">Personalausweis</cit:option>
                                          <cit:option value="Reisepass">Reisepass</cit:option>
                                       </cit:inputSelect>
                                    </div>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e268" id="stay.nonval.d0e268" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e268').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "ausweisung", "string");</cit:script>
                              </section>
                              <cit:conditional test="myForm.ausweisung == &#34;Personalausweis&#34; || myForm.ausweisung == &#34;Reisepass&#34;">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausweisnr") %>'>
                                    <cit:conditional test="!assistants.request.isValid('ausweisnr')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="ausweisnr"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="ausweisnr" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="ausweisnr" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="ausweisnr">
                                          <cit:display errorReplacement="―" expression="My.undefinedReplacement(myForm.ausweisung)"/>nummer</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="ausweisnr"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                           </section>
                           <section class="block live narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "kontovorhanden") %>' data-live-stay="stay_nonval_d0e296">
                              <cit:conditional test="!assistants.request.isValid('kontovorhanden')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="kontovorhanden"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="kontovorhanden" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="kontovorhanden" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <span class="pseudoLabel">Verfügen Sie über ein eigenes Bankkonto?</span>
                                 <div class="inputcontainer choice-inline">
                                    <cit:choiceGroup type="boolean" name="kontovorhanden">
                                       <div class="choice">
                                          <cit:inputChoice value="true" immediate="true"/>
                                          <cit:inputLabel name="kontovorhanden.true">Ja</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="false" immediate="true"/>
                                          <cit:inputLabel name="kontovorhanden.false">Nein</cit:inputLabel>
                                       </div>
                                    </cit:choiceGroup>
                                 </div>
                              </div>
                              <cit:inputSubmit type="stay.nonval.d0e296" id="stay.nonval.d0e296" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                              <script type="text/javascript">document.getElementById('stay_nonval_d0e296').style.display='none';</script>
                              <cit:script>_unmask(myForm, "kontovorhanden", "boolean");</cit:script>
                           </section>
                           <cit:conditional test="myForm.kontovorhanden == true || myForm.kontovorhanden == false">
                              <section class="group narrow">
                                 <header>
                                    <h3>Bankdaten Antragsteller</h3>
                                 </header>
                                 <cit:conditional test="myForm.antragsteller.kontovorhanden == false">
                                    <section class="infobox narrow"><p>Bitte geben Sie den Kontoinhaber und die Kontodaten des Kontos an, welches bei Zahlungen herangezogen werden soll.</p><br/><br/><p><strong>Wichtiger Hinweis:</strong></p><p>Sofern Sie die Zahlung der Leistung auf ein anderes als Ihr eigenes Konto wünschen bzw. ein fremdes Konto angeben, kann die tatsächliche und rechtzeitige Auszahlung an Sie nicht garantiert werden. Das Risiko der Überweisung auf Fremdkonten tragen Sie allein!</p><br/><br/></section>
                                 </cit:conditional>
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "bankname") %>'>
                                    <cit:conditional test="!assistants.request.isValid('bankname')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="bankname"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="bankname" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="bankname" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="bankname">Name der Bank:</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="bankname"/>
                                       </div>
                                    </div>
                                 </section>
                                 <cit:conditional test="myForm.antragsteller.kontovorhanden == false">
                                    <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "kontoinhaber") %>'>
                                       <cit:conditional test="!assistants.request.isValid('kontoinhaber')">
                                          <p class="errorText">
                                             <strong>
                                                <cit:errorText name="kontoinhaber"/>
                                             </strong>
                                          </p>
                                       </cit:conditional>
                                       <cit:errorText name="kontoinhaber" id="#page-strict">
                                          <p class="errorText">
                                             <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:errorText name="kontoinhaber" id="#page-soft">
                                          <p class="errorText loose">
                                             <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <div class="formline">
                                          <cit:inputLabel name="kontoinhaber">Kontoinhaber:</cit:inputLabel>
                                          <div class="inputcontainer">
                                             <cit:inputText name="kontoinhaber"/>
                                          </div>
                                       </div>
                                    </section>
                                 </cit:conditional>
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "F00000106") %>'>
                                    <cit:conditional test="!assistants.request.isValid('F00000106')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="F00000106"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="F00000106" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="F00000106" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="F00000106"><span lang="en"><abbr title="International Bank Account Number">IBAN:</abbr></span></cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="F00000106" onValidate="(/^\s*$/.test(value))||(isValidIBAN(value))"/>
                                       </div>
                                    </div>
                                 </section>
                              </section>
                           </cit:conditional>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
                           <h3 class="accessibility">Dialogverlauf</h3>
                           <span class="switch" title="Dialogverlauf öffnen/schließen">
                              <span class="accessibility">Dialogverlauf öffnen/schließen</span>
                           </span>
                           <ul class="icons"><% final boolean unvisited_d13e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d13e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                                    <a href="" class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d13e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d13e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d13e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d13e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d13e4 = !isVisited(session, "antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung"); %><li class='present<%= unvisited_d13e4 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                                       <span class="labelicon" title='<%= unvisited_d13e4 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d13e4 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d13e6 = !isVisited(session, "weitere-angaben-antragsteller-in"); %><li class='future<%= unvisited_d13e6 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben Antragsteller/in</span>
                                       <span class="labelicon" title='<%= unvisited_d13e6 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d13e6 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d13e8 = !isVisited(session, "angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='future<%= unvisited_d13e8 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d13e8 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d13e8 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d13e10 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d13e10 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d13e10 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d13e10 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d13e12 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='future<%= unvisited_d13e12 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d13e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d13e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d13e14 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='future<%= unvisited_d13e14 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d13e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d13e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d13e16 = !isVisited(session, "angaben-anderes-elternteil-1-3"); %><li class='future<%= unvisited_d13e16 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben anderes Elternteil (1/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d13e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d13e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d13e18 = !isVisited(session, "angaben-anderes-elternteil-2-3"); %><li class='future<%= unvisited_d13e18 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben anderes Elternteil (2/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d13e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d13e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d13e20 = !isVisited(session, "angaben-anderes-elternteil-3-3"); %><li class='future<%= unvisited_d13e20 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben anderes Elternteil (3/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d13e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d13e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d13e22 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d13e22 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d13e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d13e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d13e24 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d13e24 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d13e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d13e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d13e26 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d13e26 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d13e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d13e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li>
                           </ul>
                        </nav>
                        <div class="wizard-buttons">
                           <div class="wizard-buttons-row">
                              <div class="button">
                                 <cit:inputSubmit type="cancel" class="submit-cancel prio3 icon-remove-sign" tabindex="0" value="Abbrechen"/>
                              </div>
                              <div class="button">
                                 <cit:inputSubmit type="save" class="submit-save prio3 icon-save" tabindex="0" value="Unterbrechen..." title="Klicken Sie hier, wenn Sie den Vorgang jetzt unterbrechen und später fortsetzen möchten."/>
                              </div>
                              <div class="button">
                                 <cit:inputSubmit type="back" class="submit-back prio2 icon-arrow-left" tabindex="0" value="Zurück"/>
                              </div>
                              <div class="button">
                                 <cit:inputSubmit class="submit-forward" tabindex="0" value="Weiter" type="forward"/>
                              </div>
                           </div>
                        </div>
                     </cit:form>
                     <footer>
                        <div class="footercontent">
                           <span>Powered by cit intelliForm</span>
                        </div>
                     </footer>
                  </section>
               </article>
            </div>
         </div>
      </div>
      <div id="custom_bottom"/>
   </body>
</html>