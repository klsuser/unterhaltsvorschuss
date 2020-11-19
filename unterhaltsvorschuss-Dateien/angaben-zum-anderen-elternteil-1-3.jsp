<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("angaben-zum-anderen-elternteil-1-3"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("angaben-zum-anderen-elternteil-1-3"); %>

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
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Angaben zum anderen Elternteil (1/3)</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow/>
         <cit:page-validation id="d0e2147-required" test="!(myForm.kindehelich == &#34;nicht ehelich&#34;) || !My.empty(myForm.vaterschaftanerkannt)"/>
         <cit:page-validation id="d0e2162-required" test="!(myForm.vaterschaftanerkannt == false) || !My.empty(myForm.antragauffeststellungvaterschaft)"/>
         <cit:page-validation id="d0e2189-required" test="!(myForm.kindehelich === &#34;ehelich&#34;) || !My.empty(myForm.ehemannvater)"/>
         <cit:page-validation id="d0e2198-required" test="!(myForm.ehemannvater == false) || !My.empty(myForm.vaterschaftsanfechtungsklage)"/>
      </cit:control>
   </head>
   <body id="angaben-zum-anderen-elternteil-1-3">
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
               <ul class="icons"><% final boolean unvisited_d54e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d54e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                        <a href="" class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d54e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d54e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d54e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d54e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d54e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d54e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                        <a href="" class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d54e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d54e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d54e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d54e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d54e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='past<%= unvisited_d54e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d54e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d54e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d54e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d54e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d54e8 = !isVisited(session, "rbs_bez"); %><li class='past<%= unvisited_d54e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("rbs_bez") != null) { %><span class="item clickable" data-submit-value="resync.rbs_bez">
                        <a href="" class="label">
                           <span class="labeltext">Anschrift Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d54e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d54e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Anschrift Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d54e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d54e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d54e10 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='past<%= unvisited_d54e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-zum-antragsteller-zur-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-zum-antragsteller-zur-antragstellerin">
                        <a href="" class="label">
                           <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d54e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d54e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d54e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d54e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d54e12 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d54e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-kind-fuer-das-die-leistung-beantragt-wird">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d54e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d54e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d54e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d54e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d54e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d54e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.demnaechst-vollenden-werden">
                        <a href="" class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d54e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d54e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d54e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d54e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d54e16 = !isVisited(session, "angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %><li class='past<%= unvisited_d54e16 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d54e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d54e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d54e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d54e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d54e18 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='present<%= unvisited_d54e18 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                           <span class="labelicon" title='<%= unvisited_d54e18 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d54e18 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d54e20 = !isVisited(session, "angaben-zum-anderen-elternteil-2-3"); %><li class='future<%= unvisited_d54e20 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                           <span class="labelicon" title='<%= unvisited_d54e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d54e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d54e22 = !isVisited(session, "angaben-zum-anderen-elternteil-3-3"); %><li class='future<%= unvisited_d54e22 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                           <span class="labelicon" title='<%= unvisited_d54e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d54e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d54e24 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d54e24 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d54e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d54e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d54e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d54e26 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d54e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d54e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d54e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d54e28 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d54e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d54e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d54e30 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d54e30 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d54e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d54e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d54e32 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d54e32 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Nachweise</span>
                           <span class="labelicon" title='<%= unvisited_d54e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d54e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d54e34 = !isVisited(session, "schriftformerfordernis"); %><li class='future<%= unvisited_d54e34 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Schriftformerfordernis</span>
                           <span class="labelicon" title='<%= unvisited_d54e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d54e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">Angaben zum anderen Elternteil (1/3)</h2>
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
                           <section class="group narrow">
                              <header>
                                 <h3>Angaben zur Vaterschaft</h3>
                              </header>
                              <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "kindehelich") %>' data-live-stay="stay_nonval_d0e2120">
                                 <cit:conditional test="!assistants.request.isValid('kindehelich')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="kindehelich"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="kindehelich" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="kindehelich" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <span class="pseudoLabel required">
                                       <span id="d0e2120_label">Bitte wählen Sie den zutreffenden Punkt aus<span class="required-mark">
                                             <span aria-hidden="true">*</span>
                                             <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                          </span>
                                       </span>
                                    </span>
                                 </div>
                                 <div class="formline">
                                    <div role="group" aria-labelledby='d0e2120_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "kindehelich") %>' class="inputcontainer">
                                       <cit:choiceGroup name="kindehelich" required="true">
                                          <div class="choice">
                                             <cit:inputChoice value="vaterschaft nicht feststellbar"/>
                                             <cit:inputLabel name="kindehelich.vaterschaft nicht feststellbar">Die Vaterschaft ist nicht feststellbar</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="nicht ehelich"/>
                                             <cit:inputLabel name="kindehelich.nicht ehelich">Das Kind ist nicht ehelich geboren</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="ehelich"/>
                                             <cit:inputLabel name="kindehelich.ehelich">Das Kind ist ehelich geboren</cit:inputLabel>
                                          </div>
                                       </cit:choiceGroup>
                                    </div>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2120" id="stay.nonval.d0e2120" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2120').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "kindehelich", "string");</cit:script>
                              </section>
                              <cit:conditional test="myForm.kindehelich == &#34;vaterschaft nicht feststellbar&#34;">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vaterschaftnichtfeststellbarweil") %>'>
                                    <cit:conditional test="!assistants.request.isValid('vaterschaftnichtfeststellbarweil')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="vaterschaftnichtfeststellbarweil"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vaterschaftnichtfeststellbarweil" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vaterschaftnichtfeststellbarweil" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="vaterschaftnichtfeststellbarweil" v="2">
                                          <span id="$$ID$$">Begründung</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputTextarea name="vaterschaftnichtfeststellbarweil" ariaLabelledby="$label-id $error-ids" maxlength="400"/>
                                       </div>
                                       <aside>
                                          <noscript>Max. 400 Zeichen</noscript>
                                          <span id="d0e2138-counter" class="textarea-counter">Noch <span id="vaterschaftnichtfeststellbarweil_remaining">0</span>/400 Zeichen</span>
                                       </aside>
                                       <script type="text/javascript">document.getElementById('d0e2138-counter').style.display='inline';</script>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.kindehelich == &#34;nicht ehelich&#34;">
                                 <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vaterschaftanerkannt") %>' data-live-stay="stay_nonval_d0e2147">
                                    <cit:conditional test="!assistants.request.isValid('vaterschaftanerkannt')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="vaterschaftanerkannt"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vaterschaftanerkannt" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vaterschaftanerkannt" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:validationMessage for="d0e2147-required">
                                       <cit:conditional test="assistants.request.isValid('vaterschaftanerkannt')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                          </p>
                                       </cit:conditional>
                                    </cit:validationMessage>
                                    <div class="label">
                                       <span class="pseudoLabel required">
                                          <span id="d0e2147_label">Ist die Vaterschaft anerkannt?<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                       </span>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e2147_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "vaterschaftanerkannt") %>'>
                                          <cit:choiceGroup type="boolean" name="vaterschaftanerkannt" required="true">
                                             <div class="choice">
                                                <cit:inputChoice value="true" immediate="true"/>
                                                <cit:inputLabel name="vaterschaftanerkannt.true">Ja</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="false" immediate="true"/>
                                                <cit:inputLabel name="vaterschaftanerkannt.false">Nein</cit:inputLabel>
                                             </div>
                                          </cit:choiceGroup>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e2147" id="stay.nonval.d0e2147" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e2147').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "vaterschaftanerkannt", "boolean");</cit:script>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.vaterschaftanerkannt == true">
                                 <section class="infobox narrow"><p><br/><br/>Sofern in der Geburtsurkunde der Vater ausgewiesen wird, werden an dieser Stelle keine weiteren Nachweise erforderlich. Wird der Vater nicht in der Geburtsurkunde ausgewiesen, können Sie am Ende des Antrags eine Vaterschaftsanerkennungsurkunde hochladen.<br/><br/></p></section>
                              </cit:conditional>
                              <cit:conditional test="myForm.vaterschaftanerkannt == false">
                                 <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "antragauffeststellungvaterschaft") %>' data-live-stay="stay_nonval_d0e2162">
                                    <cit:conditional test="!assistants.request.isValid('antragauffeststellungvaterschaft')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="antragauffeststellungvaterschaft"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="antragauffeststellungvaterschaft" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="antragauffeststellungvaterschaft" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:validationMessage for="d0e2162-required">
                                       <cit:conditional test="assistants.request.isValid('antragauffeststellungvaterschaft')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                          </p>
                                       </cit:conditional>
                                    </cit:validationMessage>
                                    <div class="label">
                                       <span class="pseudoLabel required">
                                          <span id="d0e2162_label">Wurde ein Antrag auf Feststellung der Vaterschaft gestellt?<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                       </span>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e2162_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "antragauffeststellungvaterschaft") %>'>
                                          <cit:choiceGroup type="boolean" name="antragauffeststellungvaterschaft" required="true">
                                             <div class="choice">
                                                <cit:inputChoice value="true" immediate="true"/>
                                                <cit:inputLabel name="antragauffeststellungvaterschaft.true">Ja</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="false" immediate="true"/>
                                                <cit:inputLabel name="antragauffeststellungvaterschaft.false">Nein</cit:inputLabel>
                                             </div>
                                          </cit:choiceGroup>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e2162" id="stay.nonval.d0e2162" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e2162').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "antragauffeststellungvaterschaft", "boolean");</cit:script>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.antragauffeststellungvaterschaft == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vaterschaftsfeststellungsverfahrenbei") %>'>
                                    <cit:conditional test="!assistants.request.isValid('vaterschaftsfeststellungsverfahrenbei')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="vaterschaftsfeststellungsverfahrenbei"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vaterschaftsfeststellungsverfahrenbei" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vaterschaftsfeststellungsverfahrenbei" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="vaterschaftsfeststellungsverfahrenbei" v="2">
                                          <span id="$$ID$$">Ein Vaterschaftsfeststellungsverfahren ist bereits eingeleitet durch/bei</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="vaterschaftsfeststellungsverfahrenbei" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.antragauffeststellungvaterschaft == false">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vaterschaftnochnichtfestgestelltweil") %>'>
                                    <cit:conditional test="!assistants.request.isValid('vaterschaftnochnichtfestgestelltweil')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="vaterschaftnochnichtfestgestelltweil"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vaterschaftnochnichtfestgestelltweil" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vaterschaftnochnichtfestgestelltweil" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="vaterschaftnochnichtfestgestelltweil" v="2">
                                          <span id="$$ID$$">Die Vaterschaft ist noch nicht festgestellt, weil</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputTextarea name="vaterschaftnochnichtfestgestelltweil" ariaLabelledby="$label-id $error-ids" maxlength="400"/>
                                       </div>
                                       <aside>
                                          <noscript>Max. 400 Zeichen</noscript>
                                          <span id="d0e2180-counter" class="textarea-counter">Noch <span id="vaterschaftnochnichtfestgestelltweil_remaining">0</span>/400 Zeichen</span>
                                       </aside>
                                       <script type="text/javascript">document.getElementById('d0e2180-counter').style.display='inline';</script>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.kindehelich === &#34;ehelich&#34;">
                                 <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "ehemannvater") %>' data-live-stay="stay_nonval_d0e2189">
                                    <cit:conditional test="!assistants.request.isValid('ehemannvater')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="ehemannvater"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="ehemannvater" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="ehemannvater" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:validationMessage for="d0e2189-required">
                                       <cit:conditional test="assistants.request.isValid('ehemannvater')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                          </p>
                                       </cit:conditional>
                                    </cit:validationMessage>
                                    <div class="label">
                                       <span class="pseudoLabel required">
                                          <span id="d0e2189_label">Der Ehemann ist der Vater des Kindes<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                       </span>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e2189_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "ehemannvater") %>'>
                                          <cit:choiceGroup type="boolean" name="ehemannvater" required="true">
                                             <div class="choice">
                                                <cit:inputChoice value="true" immediate="true"/>
                                                <cit:inputLabel name="ehemannvater.true">Ja</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="false" immediate="true"/>
                                                <cit:inputLabel name="ehemannvater.false">Nein</cit:inputLabel>
                                             </div>
                                          </cit:choiceGroup>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e2189" id="stay.nonval.d0e2189" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e2189').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "ehemannvater", "boolean");</cit:script>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.ehemannvater == false">
                                 <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vaterschaftsanfechtungsklage") %>' data-live-stay="stay_nonval_d0e2198">
                                    <cit:conditional test="!assistants.request.isValid('vaterschaftsanfechtungsklage')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="vaterschaftsanfechtungsklage"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vaterschaftsanfechtungsklage" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vaterschaftsanfechtungsklage" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:validationMessage for="d0e2198-required">
                                       <cit:conditional test="assistants.request.isValid('vaterschaftsanfechtungsklage')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                          </p>
                                       </cit:conditional>
                                    </cit:validationMessage>
                                    <div class="label">
                                       <span class="pseudoLabel required">
                                          <span id="d0e2198_label">Ist eine Vaterschaftsanfechtungsklage anhängig?<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                       </span>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e2198_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "vaterschaftsanfechtungsklage") %>'>
                                          <cit:choiceGroup type="boolean" name="vaterschaftsanfechtungsklage" required="true">
                                             <div class="choice">
                                                <cit:inputChoice value="true" immediate="true"/>
                                                <cit:inputLabel name="vaterschaftsanfechtungsklage.true">Ja</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="false" immediate="true"/>
                                                <cit:inputLabel name="vaterschaftsanfechtungsklage.false">Nein</cit:inputLabel>
                                             </div>
                                          </cit:choiceGroup>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e2198" id="stay.nonval.d0e2198" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e2198').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "vaterschaftsanfechtungsklage", "boolean");</cit:script>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.vaterschaftsanfechtungsklage === true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vaterschaftsanfechtungsklageamtsgericht") %>'>
                                    <cit:conditional test="!assistants.request.isValid('vaterschaftsanfechtungsklageamtsgericht')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="vaterschaftsanfechtungsklageamtsgericht"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vaterschaftsanfechtungsklageamtsgericht" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vaterschaftsanfechtungsklageamtsgericht" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="vaterschaftsanfechtungsklageamtsgericht" v="2">
                                          <span id="$$ID$$">Eine Vaterschaftsanfechtungsklage ist bereits anhängig bei</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="vaterschaftsanfechtungsklageamtsgericht" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                    <footer><p>Bitte Amtsgericht angeben.</p></footer>
                                 </section>
                              </cit:conditional>
                           </section>
                           <cit:conditional test="myForm.ehemannvater == true || myForm.vaterschaftanerkannt == true">
                              <section class="group narrow">
                                 <header>
                                    <h3>Angaben zum anderen Elternteil</h3>
                                 </header>
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
                                       <div class="pseudoLabel">
                                          <span id="d0e2225_label">Geschlecht</span>
                                       </div>
                                       <div role="group" aria-labelledby='d0e2225_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "geschlecht") %>' class="inputcontainer">
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
                                          <span id="$$ID$$">Name</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="name" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "vorname") %>'>
                                    <cit:conditional test="!assistants.request.isValid('vorname')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="vorname"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vorname" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vorname" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="vorname" v="2">
                                          <span id="$$ID$$">Vorname</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="vorname" ariaLabelledby="$label-id $error-ids"/>
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
                                 <section class="block narrow label_before width-xs" data-comments='<%= getComments(pageContext.getAttribute("form"), "postleitzahl") %>'>
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
                                          <cit:inputText name="postleitzahl" ariaLabelledby="$label-id $error-ids"/>
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
                                 <section class="block narrow" data-comments='<%= getComments(pageContext.getAttribute("form"), "land") %>'>
                                    <cit:conditional test="!assistants.request.isValid('land')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="land"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="land" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="land" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="land" v="2">
                                          <span id="$$ID$$">Land</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputSelect name="land" ariaLabelledby="$label-id $error-ids">
                                             <cit:option value="">--- bitte auswählen ---</cit:option>
                                             <cit:xmlOptions src="urn:xmlid:C00000009" select="/*/SimpleCodeList/Row/Value[@ColumnRef=&#34;Staatsname_kurz&#34;]" text="SimpleValue" value="SimpleValue">
                                                <cit:sort select="SimpleValue" data-type="text" order="ascending" lang="de" case-order="upper-first"/>
                                             </cit:xmlOptions>
                                          </cit:inputSelect>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "geburtsdatum") %>'>
                                    <cit:conditional test="!assistants.request.isValid('geburtsdatum')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="geburtsdatum"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="geburtsdatum" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="geburtsdatum" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="geburtsdatum" v="2">
                                          <span id="$$ID$$">Geburtsdatum</span>
                                          <span class="tooltip date_format_hint_only">
                                             <a target="intelliform_help" class="icon" href='<%= response.encodeURL("help.jsp#andererelternteil1.geburtsdatum") %>'>
                                                <span class="accessibility">Hilfe öffnen</span>
                                             </a>
                                          </span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputDate name="geburtsdatum" class="tiny focus-mark-before" ariaLabelledby="$label-id $error-ids d0e2318_date_format_hint" showChooser="true"/>
                                       </div>
                                       <div class="tooltip_overlay">
                                          <div class="tooltip_text" id="d0e2318_tooltip">
                                             <p class="date_format_hint" id="d0e2318_date_format_hint">Bitte geben Sie hier ein Datum im Format TT.MM.JJJJ ein.</p>
                                             <button class="close" type="button" onclick="return false;">
                                                <span class="icon-close" aria-hidden="true"/>
                                                <span class="accessibility">Schließen</span>
                                             </button>
                                          </div>
                                       </div>
                                    </div>
                                    <footer><p>TT.MM.JJJJ</p></footer>
                                 </section>
                                 <section class="block narrow" data-comments='<%= getComments(pageContext.getAttribute("form"), "familienstand") %>'>
                                    <cit:conditional test="!assistants.request.isValid('familienstand')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="familienstand"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="familienstand" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="familienstand" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="familienstand" v="2">
                                          <span id="$$ID$$">Familienstand</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputSelect name="familienstand" ariaLabelledby="$label-id $error-ids">
                                             <cit:option value=""/>
                                             <cit:option value="ledig">ledig</cit:option>
                                             <cit:option value="verheiratet">verheiratet</cit:option>
                                             <cit:option value="verwitwet">verwitwet</cit:option>
                                             <cit:option value="geschieden">geschieden</cit:option>
                                             <cit:option value="Ehe aufgehoben">Ehe aufgehoben</cit:option>
                                             <cit:option value="in eingetragener Lebenspartnerschaft">in eingetragener Lebenspartnerschaft</cit:option>
                                             <cit:option value="durch Tod aufgelöste Lebenspartnerschaft">durch Tod aufgelöste Lebenspartnerschaft</cit:option>
                                             <cit:option value="aufgehobene Lebenspartnerschaft">aufgehobene Lebenspartnerschaft</cit:option>
                                             <cit:option value="durch Todeserklärung aufgelöste Lebenspartnerschaft">durch Todeserklärung aufgelöste Lebenspartnerschaft</cit:option>
                                             <cit:option value="nicht bekannt">nicht bekannt</cit:option>
                                          </cit:inputSelect>
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
                                       <cit:inputLabel name="staatsangehoerigkeit" v="2">
                                          <span id="$$ID$$">Staatsangehörigkeit</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputSelect name="staatsangehoerigkeit" ariaLabelledby="$label-id $error-ids">
                                             <cit:option value="--- bitte auswählen ---">--- bitte auswählen ---</cit:option>
                                             <cit:xmlOptions src="urn:xmlid:C00000002" select="/*/SimpleCodeList/Row/Value[@ColumnRef=&#34;Staatsangehoerigkeit&#34;]" text="SimpleValue"/>
                                          </cit:inputSelect>
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
                                 <section class="block narrow" data-comments='<%= getComments(pageContext.getAttribute("form"), "geburtsland") %>'>
                                    <cit:conditional test="!assistants.request.isValid('geburtsland')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="geburtsland"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="geburtsland" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="geburtsland" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="geburtsland" v="2">
                                          <span id="$$ID$$">Geburtsland</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputSelect name="geburtsland" ariaLabelledby="$label-id $error-ids">
                                             <cit:option value="">--- bitte auswählen ---</cit:option>
                                             <cit:xmlOptions src="urn:xmlid:C00000009" select="/*/SimpleCodeList/Row/Value[@ColumnRef=&#34;Staatsname_kurz&#34;]" text="SimpleValue" value="SimpleValue">
                                                <cit:sort select="SimpleValue" data-type="text" order="ascending" lang="de" case-order="upper-first"/>
                                             </cit:xmlOptions>
                                          </cit:inputSelect>
                                       </div>
                                    </div>
                                 </section>
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
                              </section>
                           </cit:conditional>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
                           <h3 class="accessibility">Dialogverlauf</h3>
                           <ul class="icons"><% final boolean unvisited_d58e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d58e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                                    <a href="" class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d58e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d58e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d58e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d58e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d58e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d58e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                                    <a href="" class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d58e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d58e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d58e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d58e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d58e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='past<%= unvisited_d58e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d58e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d58e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d58e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d58e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d58e8 = !isVisited(session, "rbs_bez"); %><li class='past<%= unvisited_d58e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("rbs_bez") != null) { %><span class="item clickable" data-submit-value="resync.rbs_bez">
                                    <a href="" class="label">
                                       <span class="labeltext">Anschrift Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d58e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d58e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Anschrift Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d58e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d58e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d58e10 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='past<%= unvisited_d58e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-zum-antragsteller-zur-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-zum-antragsteller-zur-antragstellerin">
                                    <a href="" class="label">
                                       <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d58e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d58e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d58e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d58e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d58e12 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d58e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-kind-fuer-das-die-leistung-beantragt-wird">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d58e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d58e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d58e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d58e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d58e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d58e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.demnaechst-vollenden-werden">
                                    <a href="" class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d58e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d58e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d58e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d58e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d58e16 = !isVisited(session, "angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %><li class='past<%= unvisited_d58e16 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d58e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d58e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d58e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d58e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d58e18 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='present<%= unvisited_d58e18 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d58e18 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d58e18 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d58e20 = !isVisited(session, "angaben-zum-anderen-elternteil-2-3"); %><li class='future<%= unvisited_d58e20 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d58e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d58e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d58e22 = !isVisited(session, "angaben-zum-anderen-elternteil-3-3"); %><li class='future<%= unvisited_d58e22 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d58e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d58e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d58e24 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d58e24 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d58e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d58e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d58e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d58e26 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d58e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d58e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d58e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d58e28 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d58e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d58e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d58e30 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d58e30 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d58e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d58e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d58e32 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d58e32 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Nachweise</span>
                                       <span class="labelicon" title='<%= unvisited_d58e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d58e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d58e34 = !isVisited(session, "schriftformerfordernis"); %><li class='future<%= unvisited_d58e34 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Schriftformerfordernis</span>
                                       <span class="labelicon" title='<%= unvisited_d58e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d58e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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