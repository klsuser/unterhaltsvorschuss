<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %>

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
    
      <script charset="utf-8" src="_plugins/theme-html5/script.js?1585580160000" type="text/javascript"/>
  <!--plugin:ui-rbs2-->
        
      <script src="_plugins/ui-rbs2/ui-rbs2.js?1605540876681" type="text/javascript"/>
        
      <script src="_plugins/ui-rbs2/bsnrbs.AutoSuggest_2.1.3.js?1604971106728" type="text/javascript"/>
   
      <title id="page-title">
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow>
            <cit:if action="gosub" href="rbs_bez.jsp" test="myForm.rbs_valid != true"/>
         </cit:flow>
         <cit:page-validation id="d0e882" mode="loose" test="_test_d0e882()"/>
         <cit:page-validation id="d0e285-required" test="!My.empty(myForm.wohnhaftinberlin)"/>
         <cit:page-validation id="d0e830-required" test="!My.empty(myForm.kontovorhanden)"/>
      </cit:control>
   </head>
   <body id="angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
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
               <button class="switch" type="button" onclick="return false;" aria-haspopup="true" aria-expanded="true" disabled="disabled">
                  <span class="icon-switch" aria-hidden="true"/>
                  <span class="accessibility">Dialogverlauf öffnen/schließen</span>
               </button>
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
                     </span><% } %></li><% final boolean unvisited_d13e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d13e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                        <a href="" class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d13e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d13e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d13e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d13e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d13e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='present<%= unvisited_d13e6 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d13e6 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d13e6 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d13e8 = !isVisited(session, "rbs_bez"); %><li class='future<%= unvisited_d13e8 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Anschrift Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d13e8 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d13e8 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d13e10 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='future<%= unvisited_d13e10 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d13e10 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d13e10 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d13e12 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='future<%= unvisited_d13e12 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d13e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d13e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d13e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='future<%= unvisited_d13e14 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d13e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d13e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d13e16 = !isVisited(session, "angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %><li class='future<%= unvisited_d13e16 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d13e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d13e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d13e18 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='future<%= unvisited_d13e18 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                           <span class="labelicon" title='<%= unvisited_d13e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d13e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d13e20 = !isVisited(session, "angaben-zum-anderen-elternteil-2-3"); %><li class='future<%= unvisited_d13e20 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                           <span class="labelicon" title='<%= unvisited_d13e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d13e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d13e22 = !isVisited(session, "angaben-zum-anderen-elternteil-3-3"); %><li class='future<%= unvisited_d13e22 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                           <span class="labelicon" title='<%= unvisited_d13e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d13e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d13e24 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d13e24 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d13e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d13e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d13e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d13e26 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d13e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d13e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d13e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d13e28 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d13e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d13e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d13e30 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d13e30 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d13e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d13e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d13e32 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d13e32 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Nachweise</span>
                           <span class="labelicon" title='<%= unvisited_d13e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d13e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d13e34 = !isVisited(session, "schriftformerfordernis"); %><li class='future<%= unvisited_d13e34 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Schriftformerfordernis</span>
                           <span class="labelicon" title='<%= unvisited_d13e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d13e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</h2>
                           <cit:conditional test="!assistants.request.valid &amp;&amp; (assistants.request.strictInvalid === undefined || assistants.request.strictInvalid === true)">
                              <p class="invalidInfo v2">
                                 <span class="icon-warning-sign" aria-hidden="true"/>
                                 <strong>Fehler beim Ausfüllen: Bitte überprüfen Sie Ihre Angaben.</strong>
                              </p>
                           </cit:conditional>
                           <cit:conditional test="!assistants.request.valid &amp;&amp; assistants.request.softInvalid === true">
                              <p class="invalidInfo v2 loose">
                                 <span class="icon-exclamation-sign" aria-hidden="true"/>
                                 <strong>Mögliche Fehler beim Ausfüllen: Bitte kontrollieren Sie Ihre Angaben nochmals. Wenn Sie sicher sind, klicken Sie erneut auf <em class="button-name icon-arrow-right">Weiter</em>.</strong>
                              </p>
                           </cit:conditional>
                           <cit:validationMessage for="d0e882">
                              <p class="invalidInfo v2 loose">
                                 <span aria-hidden="true" class="icon-exclamation-sign"/>
                                 <strong>Die von Ihnen angegebene Adresse ist in unserem System nicht hinterlegt und kann nicht gefunden werden.<br/></strong>
                              </p>
                           </cit:validationMessage>
                           <p class="required-hint">
                              <em>
                                 <span class="required-mark" aria-hidden="true">*</span>
                                 <span aria-hidden="true"> Pflichtfelder</span>
                                 <span class="accessibility">Diese Seite enthält Pflichtfelder.</span>
                              </em>
                           </p>
                           <cit:xmlResource id="C00000002" src="/WEB-INF/data/staatsangehoerigkeit_2019-04-01.xml"/>
                           <section class="infobox narrow">
                              <h3>Hinweis</h3><p>Wurden Ihr Geburtstag und -monat jeweils mit den Angaben 00 erfasst geben sie diese bitte als 01. Im Antrag an. Beispielsweise: „00.00.1996“ bitte als „01.01.1996“ angeben.</p></section>
                           <section class="group narrow">
                              <header>
                                 <h3>Persönliche Angaben</h3>
                              </header>
                              <cit:xmlResource id="C00000001" src="/WEB-INF/data/Geschlecht.xml"/>
                              <cit:xmlResource id="C00000002" src="/WEB-INF/data/staatsangehoerigkeit_2019-04-01.xml"/>
                              <cit:xmlResource id="C00000006" src="/WEB-INF/data/codelist_Familienstand_2.xml"/>
                              <cit:xmlResource id="C000aufenhalt" src="/WEB-INF/data/aufenthaltsstatus.xml"/>
                              <cit:conditional test="ro()">
                                 <section class="infobox narrow"><p><cit:display html="true" errorReplacement="―" expression="My.undefinedReplacement(getpersondata())"/></p></section>
                              </cit:conditional>
                              <cit:conditional test="!ro()">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "F00000013_h") %>'>
                                    <cit:conditional test="!assistants.request.isValid('F00000013_h')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="F00000013_h"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="F00000013_h" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="F00000013_h" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="F00000013_h" v="2" required="true">
                                          <span id="$$ID$$">Familienname<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="F00000013_h" ariaLabelledby="$label-id $error-ids" required="true" onDefault="getSKBLastname()"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="!ro()">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "F00000045_h") %>'>
                                    <cit:conditional test="!assistants.request.isValid('F00000045_h')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="F00000045_h"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="F00000045_h" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="F00000045_h" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="F00000045_h" v="2" required="true">
                                          <span id="$$ID$$">Vorname<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="F00000045_h" ariaLabelledby="$label-id $error-ids" required="true" onDefault="getSKBFirstname()"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="!ro()">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "F00000014_h") %>'>
                                    <cit:conditional test="!assistants.request.isValid('F00000014_h')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="F00000014_h"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="F00000014_h" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="F00000014_h" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="F00000014_h" v="2">
                                          <span id="$$ID$$">Geburtsname</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="F00000014_h" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="!ro()">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "F00000066_h") %>'>
                                    <cit:conditional test="!assistants.request.isValid('F00000066_h')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="F00000066_h"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="F00000066_h" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="F00000066_h" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="F00000066_h" v="2" required="true">
                                          <span id="$$ID$$">Geburtsdatum<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                          <span class="tooltip date_format_hint_only">
                                             <a target="intelliform_help" class="icon" href='<%= response.encodeURL("help.jsp#antragsteller.f00000066_h") %>'>
                                                <span class="accessibility">Hilfe öffnen</span>
                                             </a>
                                          </span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputDate name="F00000066_h" class="tiny focus-mark-before" ariaLabelledby="$label-id $error-ids d0e150_date_format_hint" showChooser="true" required="true" onDefault="(myForm.user) ? (myForm.user.dateofbirth) ? getSKBDate(myForm.user.dateofbirth) : &#34;&#34; : &#34;&#34;"/>
                                       </div>
                                       <div class="tooltip_overlay">
                                          <div class="tooltip_text" id="d0e150_tooltip">
                                             <p class="date_format_hint" id="d0e150_date_format_hint">Bitte geben Sie hier ein Datum im Format TT.MM.JJJJ ein.</p>
                                             <button class="close" type="button" onclick="return false;">
                                                <span class="icon-close" aria-hidden="true"/>
                                                <span class="accessibility">Schließen</span>
                                             </button>
                                          </div>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:inputComputed name="myage" value="calcAge()"/>
                              <cit:inputComputed name="f00000043" value="(ro()) ? geteIDAcademicTitle() : myForm.F00000043_h"/>
                              <cit:inputComputed name="f00000013" value="(ro()) ? geteIDFamilyNames() : myForm.F00000013_h"/>
                              <cit:inputComputed name="f00000045" value="(ro()) ? geteIDGivenNames() : myForm.F00000045_h"/>
                              <cit:inputComputed name="f00000014" value="(ro()) ? geteIDBirthName() : myForm.F00000014_h"/>
                              <cit:inputComputed name="f00000066" value="(ro()) ? geteIDDateOfBirth() : myForm.F00000066_h"/>
                              <cit:inputComputed name="f00000067" value="(ro()) ? geteIDPlaceOfBirth() : myForm.F00000067_h"/>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "geschlecht") %>'>
                              <cit:conditional test="!assistants.request.isValid('geschlecht')">
                                 <p class="errorText v2">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <cit:errorText name="geschlecht"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="geschlecht" id="#page-strict">
                                 <p class="errorText v2" id="$$ID$$">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="geschlecht" id="#page-soft">
                                 <p class="errorText v2 loose" id="$$ID$$">
                                    <span class="icon-exclamation-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <div class="pseudoLabel required">
                                    <span id="d0e223_label">Geschlecht<span class="required-mark">
                                          <span aria-hidden="true">*</span>
                                          <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                       </span>
                                    </span>
                                 </div>
                                 <div role="group" aria-labelledby='d0e223_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "geschlecht") %>' class="inputcontainer">
                                    <cit:choiceGroup name="geschlecht" required="true">
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
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "beruf") %>'>
                              <cit:conditional test="!assistants.request.isValid('beruf')">
                                 <p class="errorText v2">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <cit:errorText name="beruf"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="beruf" id="#page-strict">
                                 <p class="errorText v2" id="$$ID$$">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="beruf" id="#page-soft">
                                 <p class="errorText v2 loose" id="$$ID$$">
                                    <span class="icon-exclamation-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="beruf" v="2">
                                    <span id="$$ID$$">Beruf</span>
                                 </cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputText name="beruf" ariaLabelledby="$label-id $error-ids"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "arbeitgeber") %>'>
                              <cit:conditional test="!assistants.request.isValid('arbeitgeber')">
                                 <p class="errorText v2">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <cit:errorText name="arbeitgeber"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="arbeitgeber" id="#page-strict">
                                 <p class="errorText v2" id="$$ID$$">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="arbeitgeber" id="#page-soft">
                                 <p class="errorText v2 loose" id="$$ID$$">
                                    <span class="icon-exclamation-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="arbeitgeber" v="2">
                                    <span id="$$ID$$">Arbeitgeber</span>
                                 </cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputText name="arbeitgeber" ariaLabelledby="$label-id $error-ids"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "geburtsort") %>'>
                              <cit:conditional test="!assistants.request.isValid('geburtsort')">
                                 <p class="errorText v2">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <cit:errorText name="geburtsort"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="geburtsort" id="#page-strict">
                                 <p class="errorText v2" id="$$ID$$">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="geburtsort" id="#page-soft">
                                 <p class="errorText v2 loose" id="$$ID$$">
                                    <span class="icon-exclamation-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="geburtsort" v="2">
                                    <span id="$$ID$$">Geburtsort</span>
                                 </cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputText name="geburtsort" ariaLabelledby="$label-id $error-ids"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow" data-comments='<%= getComments(pageContext.getAttribute("form"), "staatsangehoerigkeit") %>'>
                              <cit:conditional test="!assistants.request.isValid('staatsangehoerigkeit')">
                                 <p class="errorText v2">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <cit:errorText name="staatsangehoerigkeit"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="staatsangehoerigkeit" id="#page-strict">
                                 <p class="errorText v2" id="$$ID$$">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="staatsangehoerigkeit" id="#page-soft">
                                 <p class="errorText v2 loose" id="$$ID$$">
                                    <span class="icon-exclamation-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="staatsangehoerigkeit" v="2" required="true">
                                    <span id="$$ID$$">Staatsangehörigkeit<span class="required-mark">
                                          <span aria-hidden="true">*</span>
                                          <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                       </span>
                                    </span>
                                 </cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputSelect name="staatsangehoerigkeit" ariaLabelledby="$label-id $error-ids" required="true" default="deutsch">
                                       <cit:option value="">--- bitte wählen Sie aus ---</cit:option>
                                       <cit:xmlOptions src="urn:xmlid:C00000002" select="/*/SimpleCodeList/Row/Value[@ColumnRef=&#34;Staatsangehoerigkeit&#34;]" text="SimpleValue"/>
                                    </cit:inputSelect>
                                 </div>
                              </div>
                           </section>
                           <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "wohnhaftinberlin") %>' data-live-stay="stay_nonval_d0e285">
                              <cit:conditional test="!assistants.request.isValid('wohnhaftinberlin')">
                                 <p class="errorText v2">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <cit:errorText name="wohnhaftinberlin"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="wohnhaftinberlin" id="#page-strict">
                                 <p class="errorText v2" id="$$ID$$">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="wohnhaftinberlin" id="#page-soft">
                                 <p class="errorText v2 loose" id="$$ID$$">
                                    <span class="icon-exclamation-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:validationMessage for="d0e285-required">
                                 <cit:conditional test="assistants.request.isValid('wohnhaftinberlin')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                    </p>
                                 </cit:conditional>
                              </cit:validationMessage>
                              <div class="label">
                                 <span class="pseudoLabel required">
                                    <span id="d0e285_label">Wohnen Sie aktuell in Berlin?<span class="required-mark">
                                          <span aria-hidden="true">*</span>
                                          <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                       </span>
                                    </span>
                                 </span>
                              </div>
                              <div class="formline">
                                 <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e285_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "wohnhaftinberlin") %>'>
                                    <cit:choiceGroup type="boolean" name="wohnhaftinberlin" required="true" default="true">
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
                              <cit:inputSubmit type="stay.nonval.d0e285" id="stay.nonval.d0e285" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                              <script type="text/javascript">document.getElementById('stay_nonval_d0e285').style.display='none';</script>
                              <cit:script>_unmask(myForm, "wohnhaftinberlin", "boolean");</cit:script>
                           </section>
                           <section class="infobox narrow">
                              <h3>Bitte geben Sie hier Ihre aktuelle Wohnanschrift an</h3>
                           </section>
                           <cit:conditional test="myForm.wohnhaftinberlin == false">
                              <section class="group narrow">
                                 <header>
                                    <h3>Anschrift außerhalb Berlins</h3>
                                 </header>
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "strassenichtberlin") %>'>
                                    <cit:conditional test="!assistants.request.isValid('strassenichtberlin')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="strassenichtberlin"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="strassenichtberlin" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="strassenichtberlin" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="strassenichtberlin" v="2">
                                          <span id="$$ID$$">Straße</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="strassenichtberlin" ariaLabelledby="$label-id $error-ids" onDefault="(ifReadSKB()) ? &#34;&#34; : getSKBStreet()"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before width-xs" data-comments='<%= getComments(pageContext.getAttribute("form"), "hausnummernichtberlin") %>'>
                                    <cit:conditional test="!assistants.request.isValid('hausnummernichtberlin')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="hausnummernichtberlin"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="hausnummernichtberlin" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="hausnummernichtberlin" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="hausnummernichtberlin" v="2">
                                          <span id="$$ID$$">Hausnummer</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="hausnummernichtberlin" ariaLabelledby="$label-id $error-ids" onDefault="(ifReadSKB()) ? &#34;&#34; : getSKBStreetNr() + getSKBStreetExt()"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before width-xs" data-comments='<%= getComments(pageContext.getAttribute("form"), "postleitzahlnichtberlin") %>'>
                                    <cit:conditional test="!assistants.request.isValid('postleitzahlnichtberlin')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="postleitzahlnichtberlin"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="postleitzahlnichtberlin" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="postleitzahlnichtberlin" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="postleitzahlnichtberlin" v="2">
                                          <span id="$$ID$$">Postleitzahl</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="postleitzahlnichtberlin" ariaLabelledby="$label-id $error-ids" onDefault="(ifReadSKB()) ? &#34;&#34; : getSKBPLZ()"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "ortnichtberlin") %>'>
                                    <cit:conditional test="!assistants.request.isValid('ortnichtberlin')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="ortnichtberlin"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="ortnichtberlin" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="ortnichtberlin" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="ortnichtberlin" v="2">
                                          <span id="$$ID$$">Ort</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="ortnichtberlin" ariaLabelledby="$label-id $error-ids" onDefault="(ifReadSKB()) ? &#34;&#34; : getSKBCity()"/>
                                       </div>
                                    </div>
                                 </section>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.wohnhaftinberlin == false">
                              <section class="infobox narrow">
                                 <h3>Bitte geben Sie hier Ihre letzte Wohnanschrift in Berlin an</h3><p>Ihre letzte Wohnanschrift in Berlin wird benötigt, um das zuständige Amt für Ihren Antrag auf Unterhaltsvorschuss zu ermitteln.</p></section>
                           </cit:conditional>
                           <cit:conditional test="myForm.wohnhaftinberlin == false || myForm.wohnhaftinberlin == true">
                              <section class="group narrow rbs">
                                 <header>
                                    <h3>Anschrift Berlin</h3>
                                 </header>
                                 <cit:xmlResource id="C00000009" src="/WEB-INF/data/staat_2019-04-01.xml"/>
                                 <cit:conditional test="ro()">
                                    <section class="infobox narrow"><p><cit:display html="true" errorReplacement="―" expression="My.undefinedReplacement(getaddressdata())"/></p></section>
                                 </cit:conditional>
                                 <section class="block narrow label_before 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "onlyberlin") %>'>
                                    <cit:conditional test="!assistants.request.isValid('onlyberlin')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="onlyberlin"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="onlyberlin" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="onlyberlin" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="onlyberlin" v="2">
                                          <span id="$$ID$$">onlyberlin:</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="onlyberlin" ariaLabelledby="$label-id $error-ids" onDefault="onlyBerlin()"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_above 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "beznrh") %>'>
                                    <cit:conditional test="!assistants.request.isValid('beznrh')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="beznrh"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="beznrh" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="beznrh" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="beznrh" v="2">
                                          <span id="$$ID$$">beznrh:</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="beznrh" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block live narrow 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "objtype") %>' data-live-stay="stay_nonval_d0e391">
                                    <cit:conditional test="!assistants.request.isValid('objtype')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="objtype"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="objtype" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="objtype" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="objtype" v="2">
                                          <span id="$$ID$$">Objekttyp</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputSelect name="objtype" immediate="true" ariaLabelledby="$label-id $error-ids" default="'*STRASSE*">
                                             <cit:option value="*STRASSE*">*STRASSE*</cit:option>
                                             <cit:option value="AUTOBAHN">AUTOBAHN</cit:option>
                                             <cit:option value="AUTOBAHNABSCHNITT">AUTOBAHNABSCHNITT</cit:option>
                                             <cit:option value="BAHNHOF">BAHNHOF</cit:option>
                                             <cit:option value="BRUECKE">BRUECKE</cit:option>
                                             <cit:option value="BRUECKE_IN_PARK">BRUECKE_IN_PARK</cit:option>
                                             <cit:option value="FLUGHAFEN">FLUGHAFEN</cit:option>
                                             <cit:option value="FORST">FORST</cit:option>
                                             <cit:option value="FORSTAMT">FORSTAMT</cit:option>
                                             <cit:option value="FUSS-/RADWEG">FUSS-/RADWEG</cit:option>
                                             <cit:option value="FUSSGAENGERBRUECKE">FUSSGAENGERBRUECKE</cit:option>
                                             <cit:option value="GEWAESSER">GEWAESSER</cit:option>
                                             <cit:option value="GRUENANLAGE">GRUENANLAGE</cit:option>
                                             <cit:option value="HALBINSEL">HALBINSEL</cit:option>
                                             <cit:option value="INSEL">INSEL</cit:option>
                                             <cit:option value="KLEINGARTENANLAGE">KLEINGARTENANLAGE</cit:option>
                                             <cit:option value="OBJEKT">OBJEKT</cit:option>
                                             <cit:option value="OERTL.BEGRIFF">OERTL.BEGRIFF</cit:option>
                                             <cit:option value="PARK">PARK</cit:option>
                                             <cit:option value="PARKPLATZ">PARKPLATZ</cit:option>
                                             <cit:option value="PLATZ">PLATZ</cit:option>
                                             <cit:option value="PLATZ_IN_FORST">PLATZ_IN_FORST</cit:option>
                                             <cit:option value="PRIVATSTRASSE">PRIVATSTRASSE</cit:option>
                                             <cit:option value="SCHLEUSE">SCHLEUSE</cit:option>
                                             <cit:option value="SIEDLUNG">SIEDLUNG</cit:option>
                                             <cit:option value="SPORTSTAETTE">SPORTSTAETTE</cit:option>
                                             <cit:option value="STADTBAHNBOGEN">STADTBAHNBOGEN</cit:option>
                                             <cit:option value="STRASSE">STRASSE</cit:option>
                                             <cit:option value="STRASSE_IN_FORST">STRASSE_IN_FORST</cit:option>
                                             <cit:option value="STRASSE_IN_KGA">STRASSE_IN_KGA</cit:option>
                                             <cit:option value="STRASSE_IN_PARK">STRASSE_IN_PARK</cit:option>
                                             <cit:option value="TUNNEL">TUNNEL</cit:option>
                                             <cit:option value="VERWALTUNGSWEG">VERWALTUNGSWEG</cit:option>
                                             <cit:option value="WALDWEG">WALDWEG</cit:option>
                                             <cit:option value="WASSERWERK">WASSERWERK</cit:option>
                                             <cit:option value="WOHNSCHIFF">WOHNSCHIFF</cit:option>
                                             <cit:option value="ZUFAHRT">ZUFAHRT</cit:option>
                                          </cit:inputSelect>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e391" id="stay.nonval.d0e391" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e391').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "objtype", "string");</cit:script>
                                 </section>
                                 <cit:conditional test="!ro()">
                                    <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "F00000053h") %>'>
                                       <cit:conditional test="!assistants.request.isValid('F00000053h')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <cit:errorText name="F00000053h"/>
                                             </strong>
                                          </p>
                                       </cit:conditional>
                                       <cit:errorText name="F00000053h" id="#page-strict">
                                          <p class="errorText v2" id="$$ID$$">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:errorText name="F00000053h" id="#page-soft">
                                          <p class="errorText v2 loose" id="$$ID$$">
                                             <span class="icon-exclamation-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <div class="label">
                                          <cit:inputLabel name="F00000053h" v="2" required="true">
                                             <span id="$$ID$$">Straße<span class="required-mark">
                                                   <span aria-hidden="true">*</span>
                                                   <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                                </span>
                                             </span>
                                          </cit:inputLabel>
                                       </div>
                                       <div class="formline">
                                          <div class="inputcontainer">
                                             <cit:inputText name="F00000053h" ariaLabelledby="$label-id $error-ids" required="true" onDefault="(ifReadSKB()) ? getSKBStreet() : &#34;&#34;"/>
                                          </div>
                                       </div>
                                    </section>
                                 </cit:conditional>
                                 <section class="block narrow label_above 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "F00000016h") %>'>
                                    <cit:conditional test="!assistants.request.isValid('F00000016h')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="F00000016h"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="F00000016h" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="F00000016h" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="F00000016h" v="2">
                                          <span id="$$ID$$">hausnr:</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="F00000016h" ariaLabelledby="$label-id $error-ids" onDefault="(ifReadSKB()) ? getSKBStreetNr() : &#34;&#34;"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_above 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "F00000084h") %>'>
                                    <cit:conditional test="!assistants.request.isValid('F00000084h')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="F00000084h"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="F00000084h" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="F00000084h" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="F00000084h" v="2">
                                          <span id="$$ID$$">hausnrz:</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="F00000084h" ariaLabelledby="$label-id $error-ids" onDefault="(ifReadSKB()) ? getSKBStreetExt() : &#34;&#34;"/>
                                       </div>
                                    </div>
                                 </section>
                                 <cit:conditional test="!ro()">
                                    <section class="block narrow label_above width-xs" data-comments='<%= getComments(pageContext.getAttribute("form"), "hnrh") %>'>
                                       <cit:conditional test="!assistants.request.isValid('hnrh')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <cit:conditional test="!My.isCustomReason('hnrh')">
                                                   <cit:errorText name="hnrh"/>
                                                </cit:conditional>
                                                <cit:conditional test="My.isCustomReason('hnrh')">
                                                   <cit:errorText name="hnrh">
                                                      <span id="$$ID$$">
                                                         <span class="accessibility">Fehler: </span>Bitte wählen Sie ein Hausnummer aus!</span>
                                                   </cit:errorText>
                                                </cit:conditional>
                                             </strong>
                                          </p>
                                       </cit:conditional>
                                       <cit:errorText name="hnrh" id="#page-strict">
                                          <p class="errorText v2" id="$$ID$$">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:errorText name="hnrh" id="#page-soft">
                                          <p class="errorText v2 loose" id="$$ID$$">
                                             <span class="icon-exclamation-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <div class="label">
                                          <cit:inputLabel name="hnrh" v="2">
                                             <span id="$$ID$$">Hausnummer (von)</span>
                                          </cit:inputLabel>
                                       </div>
                                       <div class="formline">
                                          <div class="inputcontainer">
                                             <cit:inputText name="hnrh" ariaLabelledby="$label-id $error-ids" onValidate="(/^\s*$/.test(value))||(myForm.objtype.includes(&#34;STRASSE&#34;) == true &amp;&amp; value.length == 0 ? false : true)" errtitle="Bitte wählen Sie ein Hausnummer aus!" onDefault="(ifReadSKB()) ? getSKBStreetNr() + getSKBStreetExt() : &#34;&#34;"/>
                                          </div>
                                       </div>
                                    </section>
                                 </cit:conditional>
                                 <cit:conditional test="!ro()">
                                    <section class="block narrow label_above width-xs" data-comments='<%= getComments(pageContext.getAttribute("form"), "F00000054h") %>'>
                                       <cit:conditional test="!assistants.request.isValid('F00000054h')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <cit:errorText name="F00000054h"/>
                                             </strong>
                                          </p>
                                       </cit:conditional>
                                       <cit:errorText name="F00000054h" id="#page-strict">
                                          <p class="errorText v2" id="$$ID$$">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:errorText name="F00000054h" id="#page-soft">
                                          <p class="errorText v2 loose" id="$$ID$$">
                                             <span class="icon-exclamation-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <div class="label">
                                          <cit:inputLabel name="F00000054h" v="2" required="true">
                                             <span id="$$ID$$">Postleitzahl<span class="required-mark">
                                                   <span aria-hidden="true">*</span>
                                                   <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                                </span>
                                             </span>
                                          </cit:inputLabel>
                                       </div>
                                       <div class="formline">
                                          <div class="inputcontainer">
                                             <cit:inputText name="F00000054h" ariaLabelledby="$label-id $error-ids" required="true" onDefault="(ifReadSKB()) ? getSKBPLZ() : &#34;&#34;"/>
                                          </div>
                                       </div>
                                    </section>
                                 </cit:conditional>
                                 <section class="block narrow label_before 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "otname") %>'>
                                    <cit:conditional test="!assistants.request.isValid('otname')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="otname"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="otname" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="otname" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="otname" v="2">
                                          <span id="$$ID$$">Ortsteil</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="otname" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_above 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "bzrname") %>'>
                                    <cit:conditional test="!assistants.request.isValid('bzrname')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="bzrname"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="bzrname" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="bzrname" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="bzrname" v="2">
                                          <span id="$$ID$$">Bezirk</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="bzrname" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "otnr") %>'>
                                    <cit:conditional test="!assistants.request.isValid('otnr')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="otnr"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="otnr" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="otnr" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="otnr" v="2">
                                          <span id="$$ID$$">otnr:</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="otnr" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "bzrnr") %>'>
                                    <cit:conditional test="!assistants.request.isValid('bzrnr')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="bzrnr"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="bzrnr" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="bzrnr" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="bzrnr" v="2">
                                          <span id="$$ID$$">bzrnr:</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="bzrnr" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <cit:conditional test="!ro()">
                                    <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "F00000035h") %>'>
                                       <cit:conditional test="!assistants.request.isValid('F00000035h')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <cit:errorText name="F00000035h"/>
                                             </strong>
                                          </p>
                                       </cit:conditional>
                                       <cit:errorText name="F00000035h" id="#page-strict">
                                          <p class="errorText v2" id="$$ID$$">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:errorText name="F00000035h" id="#page-soft">
                                          <p class="errorText v2 loose" id="$$ID$$">
                                             <span class="icon-exclamation-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <div class="label">
                                          <cit:inputLabel name="F00000035h" v="2" required="true">
                                             <span id="$$ID$$">Ort<span class="required-mark">
                                                   <span aria-hidden="true">*</span>
                                                   <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                                </span>
                                             </span>
                                          </cit:inputLabel>
                                       </div>
                                       <div class="formline">
                                          <div class="inputcontainer">
                                             <cit:inputText name="F00000035h" ariaLabelledby="$label-id $error-ids" required="true" onDefault="(ifReadSKB()) ? getSKBCity() : &#34;&#34;"/>
                                          </div>
                                       </div>
                                    </section>
                                 </cit:conditional>
                                 <section class="block narrow label_above 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "strnr") %>'>
                                    <cit:conditional test="!assistants.request.isValid('strnr')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="strnr"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="strnr" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="strnr" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="strnr" v="2">
                                          <span id="$$ID$$">strnr:</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="strnr" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <cit:conditional test="!ro()">
                                    <section class="block narrow label_above 2_ro" data-comments='<%= getComments(pageContext.getAttribute("form"), "landh") %>'>
                                       <cit:conditional test="!assistants.request.isValid('landh')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <cit:errorText name="landh"/>
                                             </strong>
                                          </p>
                                       </cit:conditional>
                                       <cit:errorText name="landh" id="#page-strict">
                                          <p class="errorText v2" id="$$ID$$">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:errorText name="landh" id="#page-soft">
                                          <p class="errorText v2 loose" id="$$ID$$">
                                             <span class="icon-exclamation-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <div class="label">
                                          <cit:inputLabel name="landh" v="2">
                                             <span id="$$ID$$">Land</span>
                                          </cit:inputLabel>
                                       </div>
                                       <div class="formline">
                                          <div class="inputcontainer">
                                             <cit:inputSelect name="landh" ariaLabelledby="$label-id $error-ids" onDefault="getSKBLand()">
                                                <cit:option value="">---bitte auswählen---</cit:option>
                                                <cit:xmlOptions src="urn:xmlid:C00000009" select="/*/SimpleCodeList/Row" text="Value[@ColumnRef=&#34;Staatsname_kurz&#34;]/SimpleValue" value="Value[@ColumnRef=&#34;DESTATIS_Schluessel_Staat&#34;]/SimpleValue"/>
                                             </cit:inputSelect>
                                          </div>
                                       </div>
                                    </section>
                                 </cit:conditional>
                                 <section class="block narrow label_before 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "k1000") %>'>
                                    <cit:conditional test="!assistants.request.isValid('k1000')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="k1000"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="k1000" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="k1000" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="k1000" v="2">
                                          <span id="$$ID$$">k1000:</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="k1000" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "k5000") %>'>
                                    <cit:conditional test="!assistants.request.isValid('k5000')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="k5000"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="k5000" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="k5000" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="k5000" v="2">
                                          <span id="$$ID$$">k5000:</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="k5000" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "xstat") %>'>
                                    <cit:conditional test="!assistants.request.isValid('xstat')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="xstat"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="xstat" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="xstat" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="xstat" v="2">
                                          <span id="$$ID$$">xstat:</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="xstat" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "ystat") %>'>
                                    <cit:conditional test="!assistants.request.isValid('ystat')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="ystat"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="ystat" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="ystat" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="ystat" v="2">
                                          <span id="$$ID$$">ystat:</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="ystat" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "etrs89_x") %>'>
                                    <cit:conditional test="!assistants.request.isValid('etrs89_x')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="etrs89_x"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="etrs89_x" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="etrs89_x" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="etrs89_x" v="2">
                                          <span id="$$ID$$">etrs89_x:</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="etrs89_x" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "etrs89_y") %>'>
                                    <cit:conditional test="!assistants.request.isValid('etrs89_y')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="etrs89_y"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="etrs89_y" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="etrs89_y" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="etrs89_y" v="2">
                                          <span id="$$ID$$">etrs89_y:</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="etrs89_y" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <cit:inputComputed name="f00000053" value="myForm.F00000053h"/>
                                 <cit:inputComputed name="f00000016" value="myForm.F00000016h"/>
                                 <cit:inputComputed name="f00000084" value="myForm.F00000084h"/>
                                 <cit:inputComputed name="hnr" value="myForm.hnrh"/>
                                 <cit:inputComputed name="f00000054" value="myForm.F00000054h"/>
                                 <cit:inputComputed name="f00000035" value="myForm.F00000035h"/>
                                 <cit:inputComputed name="land" value="checkSelectedLand()"/>
                                 <cit:inputComputed name="rbs_valid" value="validateAddress()"/>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.wohnhaftinberlin == false || myForm.wohnhaftinberlin == true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "dortwohnhaftseit") %>'>
                                 <cit:conditional test="!assistants.request.isValid('dortwohnhaftseit')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:conditional test="!My.isCustomReason('dortwohnhaftseit')">
                                             <cit:errorText name="dortwohnhaftseit"/>
                                          </cit:conditional>
                                          <cit:conditional test="My.isCustomReason('dortwohnhaftseit')">
                                             <cit:errorText name="dortwohnhaftseit">
                                                <span id="$$ID$$">
                                                   <span class="accessibility">Fehler: </span>Das Datum muss in der Vergangenheit liegen</span>
                                             </cit:errorText>
                                          </cit:conditional>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="dortwohnhaftseit" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="dortwohnhaftseit" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="dortwohnhaftseit" v="2">
                                       <span id="$$ID$$">dort wohnhaft seit</span>
                                       <span class="tooltip date_format_hint_only">
                                          <a target="intelliform_help" class="icon" href='<%= response.encodeURL("help.jsp#antragsteller.dortwohnhaftseit") %>'>
                                             <span class="accessibility">Hilfe öffnen</span>
                                          </a>
                                       </span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputDate name="dortwohnhaftseit" class="tiny focus-mark-before" ariaLabelledby="$label-id $error-ids d0e745_date_format_hint" showChooser="true" onValidate="(/^\s*$/.test(value))||(value &lt; new Date())" errtitle="Das Datum muss in der Vergangenheit liegen"/>
                                    </div>
                                    <div class="tooltip_overlay">
                                       <div class="tooltip_text" id="d0e745_tooltip">
                                          <p class="date_format_hint" id="d0e745_date_format_hint">Bitte geben Sie hier ein Datum im Format TT.MM.JJJJ ein.</p>
                                          <button class="close" type="button" onclick="return false;">
                                             <span class="icon-close" aria-hidden="true"/>
                                             <span class="accessibility">Schließen</span>
                                          </button>
                                       </div>
                                    </div>
                                 </div>
                                 <footer><p>TT.MM.JJJJ</p></footer>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.wohnhaftinberlin == false || myForm.wohnhaftinberlin == true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "telefon") %>'>
                                 <cit:conditional test="!assistants.request.isValid('telefon')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:conditional test="!My.isCustomReason('telefon')">
                                             <cit:errorText name="telefon"/>
                                          </cit:conditional>
                                          <cit:conditional test="My.isCustomReason('telefon')">
                                             <cit:errorText name="telefon">
                                                <span id="$$ID$$">
                                                   <span class="accessibility">Fehler: </span>Bitte geben Sie eine gültige Telefonnummer an.</span>
                                             </cit:errorText>
                                          </cit:conditional>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="telefon" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="telefon" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="telefon" v="2">
                                       <span id="$$ID$$">Telefon</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputText name="telefon" ariaLabelledby="$label-id $error-ids" pattern="/(^\s*$)|(^(^([0(+][0-9\.-\/\+ ()]{7,})$)$)/" errtitle="Bitte geben Sie eine gültige Telefonnummer an."/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.eid == false">
                              <section class="group narrow">
                                 <header>
                                    <h3>Ausgewiesen durch...</h3>
                                 </header>
                                 <section class="block live narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausweisung") %>' data-live-stay="stay_nonval_d0e777">
                                    <cit:conditional test="!assistants.request.isValid('ausweisung')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="ausweisung"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="ausweisung" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="ausweisung" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="ausweisung" v="2" required="true">
                                          <span id="$$ID$$">Bitte geben Sie die Art an, wie Sie sich ausweisen wollen<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputSelectLive name="ausweisung" ariaLabelledby="$label-id $error-ids" live="false" required="true">
                                             <cit:option value=""/>
                                             <cit:option value="Personalausweis">Personalausweis</cit:option>
                                             <cit:option value="Reisepass">Reisepass</cit:option>
                                          </cit:inputSelectLive>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e777" id="stay.nonval.d0e777" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e777').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "ausweisung", "string");</cit:script>
                                 </section>
                                 <cit:conditional test="myForm.ausweisung == &#34;Personalausweis&#34; || myForm.ausweisung == &#34;Reisepass&#34;">
                                    <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausweisnr") %>'>
                                       <cit:conditional test="!assistants.request.isValid('ausweisnr')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <cit:errorText name="ausweisnr"/>
                                             </strong>
                                          </p>
                                       </cit:conditional>
                                       <cit:errorText name="ausweisnr" id="#page-strict">
                                          <p class="errorText v2" id="$$ID$$">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:errorText name="ausweisnr" id="#page-soft">
                                          <p class="errorText v2 loose" id="$$ID$$">
                                             <span class="icon-exclamation-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <div class="formline">
                                          <cit:inputLabel name="ausweisnr" v="2" required="true">
                                             <span id="$$ID$$">
                                                <cit:display errorReplacement="―" expression="My.undefinedReplacement(myForm.ausweisung)"/>nummer<span class="required-mark">
                                                   <span aria-hidden="true">*</span>
                                                   <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                                </span>
                                             </span>
                                          </cit:inputLabel>
                                          <div class="inputcontainer">
                                             <cit:inputText name="ausweisnr" ariaLabelledby="$label-id $error-ids" required="true"/>
                                          </div>
                                       </div>
                                    </section>
                                 </cit:conditional>
                                 <cit:conditional test="myForm.ausweisung == &#34;Personalausweis&#34; || myForm.ausweisung == &#34;Reisepass&#34;">
                                    <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "gueltigbis") %>'>
                                       <cit:conditional test="!assistants.request.isValid('gueltigbis')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <cit:conditional test="!My.isCustomReason('gueltigbis')">
                                                   <cit:errorText name="gueltigbis"/>
                                                </cit:conditional>
                                                <cit:conditional test="My.isCustomReason('gueltigbis')">
                                                   <cit:errorText name="gueltigbis">
                                                      <span id="$$ID$$">
                                                         <span class="accessibility">Fehler: </span>Das Datum muss in der Zukunft liegen</span>
                                                   </cit:errorText>
                                                </cit:conditional>
                                             </strong>
                                          </p>
                                       </cit:conditional>
                                       <cit:errorText name="gueltigbis" id="#page-strict">
                                          <p class="errorText v2" id="$$ID$$">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:errorText name="gueltigbis" id="#page-soft">
                                          <p class="errorText v2 loose" id="$$ID$$">
                                             <span class="icon-exclamation-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <div class="formline">
                                          <cit:inputLabel name="gueltigbis" v="2" required="true">
                                             <span id="$$ID$$">gültig bis<span class="required-mark">
                                                   <span aria-hidden="true">*</span>
                                                   <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                                </span>
                                             </span>
                                             <span class="tooltip date_format_hint_only">
                                                <a target="intelliform_help" class="icon" href='<%= response.encodeURL("help.jsp#antragsteller.gueltigbis") %>'>
                                                   <span class="accessibility">Hilfe öffnen</span>
                                                </a>
                                             </span>
                                          </cit:inputLabel>
                                          <div class="inputcontainer">
                                             <cit:inputDate name="gueltigbis" class="tiny focus-mark-before" ariaLabelledby="$label-id $error-ids d0e803_date_format_hint" showChooser="true" required="true" errtitle="Das Datum muss in der Zukunft liegen"/>
                                          </div>
                                          <div class="tooltip_overlay">
                                             <div class="tooltip_text" id="d0e803_tooltip">
                                                <p class="date_format_hint" id="d0e803_date_format_hint">Bitte geben Sie hier ein Datum im Format TT.MM.JJJJ ein.</p>
                                                <button class="close" type="button" onclick="return false;">
                                                   <span class="icon-close" aria-hidden="true"/>
                                                   <span class="accessibility">Schließen</span>
                                                </button>
                                             </div>
                                          </div>
                                       </div>
                                       <footer><p>TT.MM.JJJJ</p></footer>
                                    </section>
                                 </cit:conditional>
                              </section>
                           </cit:conditional>
                           <section class="group narrow">
                              <header>
                                 <h3>Bankdaten Antragsteller/in</h3>
                              </header>
                              <section class="block live narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "kontovorhanden") %>' data-live-stay="stay_nonval_d0e830">
                                 <cit:conditional test="!assistants.request.isValid('kontovorhanden')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="kontovorhanden"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="kontovorhanden" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="kontovorhanden" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:validationMessage for="d0e830-required">
                                    <cit:conditional test="assistants.request.isValid('kontovorhanden')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                       </p>
                                    </cit:conditional>
                                 </cit:validationMessage>
                                 <div class="formline">
                                    <span class="pseudoLabel required">
                                       <span id="d0e830_label">Verfügen Sie über ein eigenes Bankkonto?<span class="required-mark">
                                             <span aria-hidden="true">*</span>
                                             <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                          </span>
                                       </span>
                                    </span>
                                    <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e830_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "kontovorhanden") %>'>
                                       <cit:choiceGroup type="boolean" name="kontovorhanden" required="true" default="true">
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
                                 <cit:inputSubmit type="stay.nonval.d0e830" id="stay.nonval.d0e830" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e830').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "kontovorhanden", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.antragsteller.kontovorhanden == false">
                                 <section class="infobox narrow"><p>Bitte geben Sie den Kontoinhaber/die Kontoinhaberin und die Kontodaten des Kontos an, welches bei Zahlungen herangezogen werden soll</p></section>
                              </cit:conditional>
                              <cit:conditional test="myForm.antragsteller.kontovorhanden == false">
                                 <section class="infobox narrow">
                                    <h3><STRONG>Wichtiger Hinweis:</STRONG></h3><p>Sofern Sie die Zahlung der Leistung auf ein anderes als Ihr eigenes Konto wünschen oder ein fremdes Konto angeben, kann die tatsächliche und rechtzeitige Auszahlung an Sie nicht garantiert werden. Das Risiko der Überweisung auf Fremdkonten tragen Sie allein!</p><br/><br/></section>
                              </cit:conditional>
                              <cit:conditional test="myForm.kontovorhanden == true || myForm.kontovorhanden == false">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "bankname") %>'>
                                    <cit:conditional test="!assistants.request.isValid('bankname')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="bankname"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="bankname" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="bankname" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="bankname" v="2" required="true">
                                          <span id="$$ID$$">Name der Bank<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="bankname" ariaLabelledby="$label-id $error-ids" required="true"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.antragsteller.kontovorhanden == false">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "kontoinhaber") %>'>
                                    <cit:conditional test="!assistants.request.isValid('kontoinhaber')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="kontoinhaber"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="kontoinhaber" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="kontoinhaber" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="kontoinhaber" v="2" required="true">
                                          <span id="$$ID$$">Kontoinhaber/in<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="kontoinhaber" ariaLabelledby="$label-id $error-ids" required="true"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.kontovorhanden == true || myForm.kontovorhanden == false">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "F00000106") %>'>
                                    <cit:conditional test="!assistants.request.isValid('F00000106')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="F00000106"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="F00000106" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="F00000106" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="F00000106" v="2" required="true">
                                          <span id="$$ID$$"><span lang="en"><abbr title="International Bank Account Number">IBAN</abbr></span><span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="F00000106" ariaLabelledby="$label-id $error-ids" required="true" onValidate="isValidIBAN(value)"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                           </section>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
                           <h3 class="accessibility">Dialogverlauf</h3>
                           <ul class="icons"><% final boolean unvisited_d19e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d19e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                                    <a href="" class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d19e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d19e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d19e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d19e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d19e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d19e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                                    <a href="" class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d19e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d19e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d19e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d19e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d19e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='present<%= unvisited_d19e6 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d19e6 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d19e6 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d19e8 = !isVisited(session, "rbs_bez"); %><li class='future<%= unvisited_d19e8 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Anschrift Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d19e8 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d19e8 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d19e10 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='future<%= unvisited_d19e10 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d19e10 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d19e10 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d19e12 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='future<%= unvisited_d19e12 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d19e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d19e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d19e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='future<%= unvisited_d19e14 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d19e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d19e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d19e16 = !isVisited(session, "angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %><li class='future<%= unvisited_d19e16 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d19e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d19e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d19e18 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='future<%= unvisited_d19e18 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d19e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d19e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d19e20 = !isVisited(session, "angaben-zum-anderen-elternteil-2-3"); %><li class='future<%= unvisited_d19e20 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d19e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d19e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d19e22 = !isVisited(session, "angaben-zum-anderen-elternteil-3-3"); %><li class='future<%= unvisited_d19e22 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d19e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d19e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d19e24 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d19e24 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d19e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d19e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d19e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d19e26 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d19e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d19e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d19e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d19e28 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d19e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d19e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d19e30 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d19e30 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d19e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d19e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d19e32 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d19e32 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Nachweise</span>
                                       <span class="labelicon" title='<%= unvisited_d19e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d19e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d19e34 = !isVisited(session, "schriftformerfordernis"); %><li class='future<%= unvisited_d19e34 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Schriftformerfordernis</span>
                                       <span class="labelicon" title='<%= unvisited_d19e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d19e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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