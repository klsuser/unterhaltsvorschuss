<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %>

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
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow/>
         <cit:page-validation id="d0e1959-required" test="!My.empty(myForm.beistandschaft)"/>
         <cit:page-validation id="d0e2013-required" test="!(myForm.beistandschaft == true) || !My.empty(myForm.beistandauskunftserteilung)"/>
         <cit:page-validation id="d0e2022-required" test="!My.empty(myForm.beauftragungrechtsanwaltsbuero)"/>
      </cit:control>
   </head>
   <body id="angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand">
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
               <ul class="icons"><% final boolean unvisited_d50e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d50e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                        <a href="" class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d50e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d50e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d50e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d50e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                        <a href="" class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d50e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d50e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d50e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='past<%= unvisited_d50e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d50e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d50e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d50e8 = !isVisited(session, "rbs_bez"); %><li class='past<%= unvisited_d50e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("rbs_bez") != null) { %><span class="item clickable" data-submit-value="resync.rbs_bez">
                        <a href="" class="label">
                           <span class="labeltext">Anschrift Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d50e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Anschrift Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d50e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d50e10 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='past<%= unvisited_d50e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-zum-antragsteller-zur-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-zum-antragsteller-zur-antragstellerin">
                        <a href="" class="label">
                           <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d50e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d50e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d50e12 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d50e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-kind-fuer-das-die-leistung-beantragt-wird">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d50e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d50e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d50e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d50e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.demnaechst-vollenden-werden">
                        <a href="" class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d50e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d50e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d50e16 = !isVisited(session, "angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %><li class='present<%= unvisited_d50e16 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d50e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d50e18 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='future<%= unvisited_d50e18 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                           <span class="labelicon" title='<%= unvisited_d50e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d50e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d50e20 = !isVisited(session, "angaben-zum-anderen-elternteil-2-3"); %><li class='future<%= unvisited_d50e20 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                           <span class="labelicon" title='<%= unvisited_d50e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d50e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d50e22 = !isVisited(session, "angaben-zum-anderen-elternteil-3-3"); %><li class='future<%= unvisited_d50e22 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                           <span class="labelicon" title='<%= unvisited_d50e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d50e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d50e24 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d50e24 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d50e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d50e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d50e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d50e26 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d50e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d50e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d50e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d50e28 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d50e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d50e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d50e30 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d50e30 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d50e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d50e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d50e32 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d50e32 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Nachweise</span>
                           <span class="labelicon" title='<%= unvisited_d50e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d50e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d50e34 = !isVisited(session, "schriftformerfordernis"); %><li class='future<%= unvisited_d50e34 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Schriftformerfordernis</span>
                           <span class="labelicon" title='<%= unvisited_d50e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d50e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</h2>
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
                           <p class="required-hint">
                              <em>
                                 <span class="required-mark" aria-hidden="true">*</span>
                                 <span aria-hidden="true"> Pflichtfelder</span>
                                 <span class="accessibility">Diese Seite enthält Pflichtfelder.</span>
                              </em>
                           </p>
                           <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "beistandschaft") %>' data-live-stay="stay_nonval_d0e1959">
                              <cit:conditional test="!assistants.request.isValid('beistandschaft')">
                                 <p class="errorText v2">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <cit:errorText name="beistandschaft"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="beistandschaft" id="#page-strict">
                                 <p class="errorText v2" id="$$ID$$">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="beistandschaft" id="#page-soft">
                                 <p class="errorText v2 loose" id="$$ID$$">
                                    <span class="icon-exclamation-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:validationMessage for="d0e1959-required">
                                 <cit:conditional test="assistants.request.isValid('beistandschaft')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                    </p>
                                 </cit:conditional>
                              </cit:validationMessage>
                              <div class="label">
                                 <span class="pseudoLabel required">
                                    <span id="d0e1959_label">Für mein Kind wird zum Zweck der Unterhaltsregelung und/oder Vaterschaftsfeststellung eine Beistandschaft oder Vormundschaft bei einem Jugendamt oder der <abbr title="Arbeiterwohlfahrt">AWO</abbr> geführt<span class="required-mark">
                                          <span aria-hidden="true">*</span>
                                          <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                       </span>
                                    </span>
                                 </span>
                              </div>
                              <div class="formline">
                                 <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e1959_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "beistandschaft") %>'>
                                    <cit:choiceGroup type="boolean" name="beistandschaft" required="true">
                                       <div class="choice">
                                          <cit:inputChoice value="true" immediate="true"/>
                                          <cit:inputLabel name="beistandschaft.true">Ja</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="false" immediate="true"/>
                                          <cit:inputLabel name="beistandschaft.false">Nein</cit:inputLabel>
                                       </div>
                                    </cit:choiceGroup>
                                 </div>
                              </div>
                              <cit:inputSubmit type="stay.nonval.d0e1959" id="stay.nonval.d0e1959" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                              <script type="text/javascript">document.getElementById('stay_nonval_d0e1959').style.display='none';</script>
                              <cit:script>_unmask(myForm, "beistandschaft", "boolean");</cit:script>
                           </section>
                           <cit:conditional test="myForm.beistandschaft == true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "beistandschaftseit") %>'>
                                 <cit:conditional test="!assistants.request.isValid('beistandschaftseit')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="beistandschaftseit"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="beistandschaftseit" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="beistandschaftseit" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="beistandschaftseit" v="2">
                                       <span id="$$ID$$">seit</span>
                                       <span class="tooltip date_format_hint_only">
                                          <a target="intelliform_help" class="icon" href='<%= response.encodeURL("help.jsp#vormundschaft.beistandschaftseit") %>'>
                                             <span class="accessibility">Hilfe öffnen</span>
                                          </a>
                                       </span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputDate name="beistandschaftseit" class="tiny focus-mark-before" ariaLabelledby="$label-id $error-ids d0e1968_date_format_hint" showChooser="true"/>
                                    </div>
                                    <div class="tooltip_overlay">
                                       <div class="tooltip_text" id="d0e1968_tooltip">
                                          <p class="date_format_hint" id="d0e1968_date_format_hint">Bitte geben Sie hier ein Datum im Format TT.MM.JJJJ ein.</p>
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
                           <cit:conditional test="myForm.beistandschaft == true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "beistandschaftbeantragtam") %>'>
                                 <cit:conditional test="!assistants.request.isValid('beistandschaftbeantragtam')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="beistandschaftbeantragtam"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="beistandschaftbeantragtam" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="beistandschaftbeantragtam" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="beistandschaftbeantragtam" v="2">
                                       <span id="$$ID$$">bzw. wurde beantragt am</span>
                                       <span class="tooltip date_format_hint_only">
                                          <a target="intelliform_help" class="icon" href='<%= response.encodeURL("help.jsp#vormundschaft.beistandschaftbeantragtam") %>'>
                                             <span class="accessibility">Hilfe öffnen</span>
                                          </a>
                                       </span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputDate name="beistandschaftbeantragtam" class="tiny focus-mark-before" ariaLabelledby="$label-id $error-ids d0e1980_date_format_hint" showChooser="true"/>
                                    </div>
                                    <div class="tooltip_overlay">
                                       <div class="tooltip_text" id="d0e1980_tooltip">
                                          <p class="date_format_hint" id="d0e1980_date_format_hint">Bitte geben Sie hier ein Datum im Format TT.MM.JJJJ ein.</p>
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
                           <cit:conditional test="myForm.beistandschaft == true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "beistandschaftbehoerde") %>'>
                                 <cit:conditional test="!assistants.request.isValid('beistandschaftbehoerde')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="beistandschaftbehoerde"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="beistandschaftbehoerde" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="beistandschaftbehoerde" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="beistandschaftbehoerde" v="2">
                                       <span id="$$ID$$">beim</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputText name="beistandschaftbehoerde" ariaLabelledby="$label-id $error-ids"/>
                                    </div>
                                 </div>
                                 <footer><p>Behörde/Jugendamt</p></footer>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.beistandschaft == true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "beistandschaftgeschzeichen") %>'>
                                 <cit:conditional test="!assistants.request.isValid('beistandschaftgeschzeichen')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="beistandschaftgeschzeichen"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="beistandschaftgeschzeichen" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="beistandschaftgeschzeichen" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="beistandschaftgeschzeichen" v="2">
                                       <span id="$$ID$$">Geschäftszeichen</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputText name="beistandschaftgeschzeichen" ariaLabelledby="$label-id $error-ids"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.beistandschaft == true">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "beistandauskunftserteilung") %>'>
                                 <cit:conditional test="!assistants.request.isValid('beistandauskunftserteilung')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="beistandauskunftserteilung"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="beistandauskunftserteilung" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="beistandauskunftserteilung" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:validationMessage for="d0e2013-required">
                                    <cit:conditional test="assistants.request.isValid('beistandauskunftserteilung')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                       </p>
                                    </cit:conditional>
                                 </cit:validationMessage>
                                 <div class="label">
                                    <span class="pseudoLabel required">
                                       <span id="d0e2013_label">Mit der Auskunftserteilung des Beistandes an die Unterhaltsvorschussstelle bin ich einverstanden<span class="required-mark">
                                             <span aria-hidden="true">*</span>
                                             <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                          </span>
                                       </span>
                                    </span>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e2013_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "beistandauskunftserteilung") %>'>
                                       <cit:choiceGroup type="boolean" name="beistandauskunftserteilung" required="true">
                                          <div class="choice">
                                             <cit:inputChoice value="true"/>
                                             <cit:inputLabel name="beistandauskunftserteilung.true">Ja</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="false"/>
                                             <cit:inputLabel name="beistandauskunftserteilung.false">Nein</cit:inputLabel>
                                          </div>
                                       </cit:choiceGroup>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "beauftragungrechtsanwaltsbuero") %>' data-live-stay="stay_nonval_d0e2022">
                              <cit:conditional test="!assistants.request.isValid('beauftragungrechtsanwaltsbuero')">
                                 <p class="errorText v2">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <cit:errorText name="beauftragungrechtsanwaltsbuero"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="beauftragungrechtsanwaltsbuero" id="#page-strict">
                                 <p class="errorText v2" id="$$ID$$">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="beauftragungrechtsanwaltsbuero" id="#page-soft">
                                 <p class="errorText v2 loose" id="$$ID$$">
                                    <span class="icon-exclamation-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:validationMessage for="d0e2022-required">
                                 <cit:conditional test="assistants.request.isValid('beauftragungrechtsanwaltsbuero')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                    </p>
                                 </cit:conditional>
                              </cit:validationMessage>
                              <div class="label">
                                 <span class="pseudoLabel required">
                                    <span id="d0e2022_label">Ich habe ein Rechtsanwaltsbüro beauftragt<span class="required-mark">
                                          <span aria-hidden="true">*</span>
                                          <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                       </span>
                                    </span>
                                 </span>
                              </div>
                              <div class="formline">
                                 <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e2022_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "beauftragungrechtsanwaltsbuero") %>'>
                                    <cit:choiceGroup type="boolean" name="beauftragungrechtsanwaltsbuero" required="true">
                                       <div class="choice">
                                          <cit:inputChoice value="true" immediate="true"/>
                                          <cit:inputLabel name="beauftragungrechtsanwaltsbuero.true">Ja</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="false" immediate="true"/>
                                          <cit:inputLabel name="beauftragungrechtsanwaltsbuero.false">Nein</cit:inputLabel>
                                       </div>
                                    </cit:choiceGroup>
                                 </div>
                              </div>
                              <cit:inputSubmit type="stay.nonval.d0e2022" id="stay.nonval.d0e2022" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                              <script type="text/javascript">document.getElementById('stay_nonval_d0e2022').style.display='none';</script>
                              <cit:script>_unmask(myForm, "beauftragungrechtsanwaltsbuero", "boolean");</cit:script>
                           </section>
                           <cit:conditional test="myForm.beauftragungrechtsanwaltsbuero == true">
                              <section class="group narrow">
                                 <header>
                                    <h3>Angaben zum Rechtsanwaltsbüro</h3>
                                 </header>
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "name") %>'>
                                    <cit:conditional test="!assistants.request.isValid('name')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="name"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="name" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="name" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="name" v="2">
                                          <span id="$$ID$$">Name des Rechtsanwaltsbüros</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="name" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "strasse") %>'>
                                    <cit:conditional test="!assistants.request.isValid('strasse')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="strasse"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="strasse" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="strasse" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="strasse" v="2">
                                          <span id="$$ID$$">Straße</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="strasse" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before width-xs" data-comments='<%= getComments(pageContext.getAttribute("form"), "hausnummer") %>'>
                                    <cit:conditional test="!assistants.request.isValid('hausnummer')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="hausnummer"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="hausnummer" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="hausnummer" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="hausnummer" v="2">
                                          <span id="$$ID$$">Hausnummer</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="hausnummer" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "postleitzahl") %>'>
                                    <cit:conditional test="!assistants.request.isValid('postleitzahl')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="postleitzahl"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="postleitzahl" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="postleitzahl" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="postleitzahl" v="2">
                                          <span id="$$ID$$">Postleitzahl</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputNumber name="postleitzahl" class="number rightalign use-size" ariaLabelledby="$label-id $error-ids" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "ort") %>'>
                                    <cit:conditional test="!assistants.request.isValid('ort')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="ort"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="ort" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="ort" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="ort" v="2">
                                          <span id="$$ID$$">Ort</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="ort" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "aktenzeichen") %>'>
                                    <cit:conditional test="!assistants.request.isValid('aktenzeichen')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="aktenzeichen"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="aktenzeichen" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="aktenzeichen" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="aktenzeichen" v="2">
                                          <span id="$$ID$$">Aktenzeichen</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="aktenzeichen" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "beauftragtmit") %>'>
                                    <cit:conditional test="!assistants.request.isValid('beauftragtmit')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="beauftragtmit"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="beauftragtmit" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="beauftragtmit" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <span class="pseudoLabel">
                                          <span id="d0e2090_label">beauftragt mit</span>
                                       </span>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer" role="group" aria-labelledby='d0e2090_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "beauftragtmit") %>'>
                                          <cit:inputSelectMultiple name="beauftragtmit">
                                             <cit:option value="Scheidung">der Scheidung</cit:option>
                                             <cit:option value="Unterhaltsregelung">der Unterhaltsregelung</cit:option>
                                          </cit:inputSelectMultiple>
                                       </div>
                                    </div>
                                 </section>
                              </section>
                           </cit:conditional>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
                           <h3 class="accessibility">Dialogverlauf</h3>
                           <ul class="icons"><% final boolean unvisited_d52e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d52e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                                    <a href="" class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d52e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d52e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d52e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d52e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d52e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d52e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                                    <a href="" class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d52e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d52e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d52e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d52e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d52e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='past<%= unvisited_d52e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d52e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d52e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d52e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d52e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d52e8 = !isVisited(session, "rbs_bez"); %><li class='past<%= unvisited_d52e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("rbs_bez") != null) { %><span class="item clickable" data-submit-value="resync.rbs_bez">
                                    <a href="" class="label">
                                       <span class="labeltext">Anschrift Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d52e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d52e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Anschrift Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d52e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d52e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d52e10 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='past<%= unvisited_d52e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-zum-antragsteller-zur-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-zum-antragsteller-zur-antragstellerin">
                                    <a href="" class="label">
                                       <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d52e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d52e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d52e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d52e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d52e12 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d52e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-kind-fuer-das-die-leistung-beantragt-wird">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d52e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d52e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d52e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d52e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d52e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d52e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.demnaechst-vollenden-werden">
                                    <a href="" class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d52e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d52e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d52e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d52e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d52e16 = !isVisited(session, "angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %><li class='present<%= unvisited_d52e16 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d52e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d52e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d52e18 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='future<%= unvisited_d52e18 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d52e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d52e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d52e20 = !isVisited(session, "angaben-zum-anderen-elternteil-2-3"); %><li class='future<%= unvisited_d52e20 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d52e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d52e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d52e22 = !isVisited(session, "angaben-zum-anderen-elternteil-3-3"); %><li class='future<%= unvisited_d52e22 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d52e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d52e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d52e24 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d52e24 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d52e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d52e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d52e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d52e26 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d52e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d52e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d52e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d52e28 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d52e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d52e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d52e30 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d52e30 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d52e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d52e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d52e32 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d52e32 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Nachweise</span>
                                       <span class="labelicon" title='<%= unvisited_d52e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d52e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d52e34 = !isVisited(session, "schriftformerfordernis"); %><li class='future<%= unvisited_d52e34 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Schriftformerfordernis</span>
                                       <span class="labelicon" title='<%= unvisited_d52e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d52e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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