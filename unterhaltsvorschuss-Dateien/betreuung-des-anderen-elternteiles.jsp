<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("betreuung-des-anderen-elternteiles"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("betreuung-des-anderen-elternteiles"); %>

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
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Betreuung des anderen Elternteiles</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow/>
         <cit:page-validation id="d0e3576-max-count" test="!(submit=='forward'||submit=='finish')||!(myForm.betreuungkind == &#34;geteilt&#34;)||(length(myForm['betreuungszeiten_des_anderen_elternteiles'])&lt;=7)"/>
      </cit:control>
   </head>
   <body id="betreuung-des-anderen-elternteiles">
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
               <ul class="icons"><% final boolean unvisited_d70e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d70e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                        <a href="" class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d70e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d70e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d70e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d70e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                        <a href="" class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d70e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d70e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d70e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='past<%= unvisited_d70e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d70e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d70e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d70e8 = !isVisited(session, "rbs_bez"); %><li class='past<%= unvisited_d70e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("rbs_bez") != null) { %><span class="item clickable" data-submit-value="resync.rbs_bez">
                        <a href="" class="label">
                           <span class="labeltext">Anschrift Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d70e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Anschrift Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d70e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d70e10 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='past<%= unvisited_d70e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-zum-antragsteller-zur-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-zum-antragsteller-zur-antragstellerin">
                        <a href="" class="label">
                           <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d70e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d70e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d70e12 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d70e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-kind-fuer-das-die-leistung-beantragt-wird">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d70e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d70e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d70e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d70e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.demnaechst-vollenden-werden">
                        <a href="" class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d70e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d70e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d70e16 = !isVisited(session, "angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %><li class='past<%= unvisited_d70e16 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d70e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d70e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d70e18 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='past<%= unvisited_d70e18 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-1-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-1-3">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                           <span class="labelicon" title='<%= unvisited_d70e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                           <span class="labelicon" title='<%= unvisited_d70e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d70e20 = !isVisited(session, "angaben-zum-anderen-elternteil-2-3"); %><li class='past<%= unvisited_d70e20 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-2-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-2-3">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                           <span class="labelicon" title='<%= unvisited_d70e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                           <span class="labelicon" title='<%= unvisited_d70e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d70e22 = !isVisited(session, "angaben-zum-anderen-elternteil-3-3"); %><li class='past<%= unvisited_d70e22 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-3-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-3-3">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                           <span class="labelicon" title='<%= unvisited_d70e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                           <span class="labelicon" title='<%= unvisited_d70e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d70e24 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='present<%= unvisited_d70e24 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d70e24 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d70e24 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d70e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d70e26 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d70e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d70e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d70e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d70e28 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d70e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d70e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d70e30 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d70e30 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d70e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d70e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d70e32 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d70e32 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Nachweise</span>
                           <span class="labelicon" title='<%= unvisited_d70e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d70e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d70e34 = !isVisited(session, "schriftformerfordernis"); %><li class='future<%= unvisited_d70e34 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Schriftformerfordernis</span>
                           <span class="labelicon" title='<%= unvisited_d70e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d70e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li>
               </ul>
            </nav>
            <div class="dynamic_area">
               <article>
                  <section id="content" class=" wide">
                     <cit:form beanName="myForm">
                        <div class="wizard-body">
                           <h2 id="title">Betreuung des anderen Elternteiles</h2>
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
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "lebtinmeinemhaushaltseit") %>'>
                              <cit:conditional test="!assistants.request.isValid('lebtinmeinemhaushaltseit')">
                                 <p class="errorText v2">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <cit:conditional test="!My.isCustomReason('lebtinmeinemhaushaltseit')">
                                          <cit:errorText name="lebtinmeinemhaushaltseit"/>
                                       </cit:conditional>
                                       <cit:conditional test="My.isCustomReason('lebtinmeinemhaushaltseit')">
                                          <cit:errorText name="lebtinmeinemhaushaltseit">
                                             <span id="$$ID$$">
                                                <span class="accessibility">Fehler: </span>Das Datum muss in der Vergangenheit liegen</span>
                                          </cit:errorText>
                                       </cit:conditional>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="lebtinmeinemhaushaltseit" id="#page-strict">
                                 <p class="errorText v2" id="$$ID$$">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="lebtinmeinemhaushaltseit" id="#page-soft">
                                 <p class="errorText v2 loose" id="$$ID$$">
                                    <span class="icon-exclamation-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="lebtinmeinemhaushaltseit" v="2" required="true">
                                    <span id="$$ID$$">Das Kind lebt in meinem Haushalt seit dem<span class="required-mark">
                                          <span aria-hidden="true">*</span>
                                          <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                       </span>
                                    </span>
                                    <span class="tooltip date_format_hint_only">
                                       <a target="intelliform_help" class="icon" href='<%= response.encodeURL("help.jsp#betreuung.lebtinmeinemhaushaltseit") %>'>
                                          <span class="accessibility">Hilfe öffnen</span>
                                       </a>
                                    </span>
                                 </cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputDate name="lebtinmeinemhaushaltseit" class="tiny focus-mark-before" ariaLabelledby="$label-id $error-ids d0e3487_date_format_hint" showChooser="true" required="true" onValidate="value &lt; new Date()" errtitle="Das Datum muss in der Vergangenheit liegen"/>
                                 </div>
                                 <div class="tooltip_overlay">
                                    <div class="tooltip_text" id="d0e3487_tooltip">
                                       <p class="date_format_hint" id="d0e3487_date_format_hint">Bitte geben Sie hier ein Datum im Format TT.MM.JJJJ ein.</p>
                                       <button class="close" type="button" onclick="return false;">
                                          <span class="icon-close" aria-hidden="true"/>
                                          <span class="accessibility">Schließen</span>
                                       </button>
                                    </div>
                                 </div>
                              </div>
                              <footer><p>TT.MM.JJJJ</p></footer>
                           </section>
                           <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "betreuungkind") %>' data-live-stay="stay_nonval_d0e3502">
                              <cit:conditional test="!assistants.request.isValid('betreuungkind')">
                                 <p class="errorText v2">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <cit:errorText name="betreuungkind"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="betreuungkind" id="#page-strict">
                                 <p class="errorText v2" id="$$ID$$">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="betreuungkind" id="#page-soft">
                                 <p class="errorText v2 loose" id="$$ID$$">
                                    <span class="icon-exclamation-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="label">
                                 <span class="pseudoLabel required">
                                    <span id="d0e3502_label">Bitte machen Sie Angaben zur Versorgung und Betreuung Ihres Kindes<span class="required-mark">
                                          <span aria-hidden="true">*</span>
                                          <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                       </span>
                                    </span>
                                 </span>
                              </div>
                              <div class="formline">
                                 <div role="group" aria-labelledby='d0e3502_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "betreuungkind") %>' class="inputcontainer">
                                    <cit:choiceGroup name="betreuungkind" required="true">
                                       <div class="choice">
                                          <cit:inputChoice value="alleine"/>
                                          <cit:inputLabel name="betreuungkind.alleine">Ich versorge und betreue mein Kind alleine. Es hat seinen Lebensmittelpunkt bei mir.</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="geteilt"/>
                                          <cit:inputLabel name="betreuungkind.geteilt">Ich teile mir die Versorgung und Betreuung meines Kindes mit dem anderen Elternteil.</cit:inputLabel>
                                       </div>
                                    </cit:choiceGroup>
                                 </div>
                              </div>
                              <cit:inputSubmit type="stay.nonval.d0e3502" id="stay.nonval.d0e3502" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                              <script type="text/javascript">document.getElementById('stay_nonval_d0e3502').style.display='none';</script>
                              <cit:script>_unmask(myForm, "betreuungkind", "string");</cit:script>
                           </section>
                           <cit:conditional test="myForm.betreuungkind == &#34;geteilt&#34;">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "verinbarungumgangsrecht") %>'>
                                 <cit:conditional test="!assistants.request.isValid('verinbarungumgangsrecht')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="verinbarungumgangsrecht"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="verinbarungumgangsrecht" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="verinbarungumgangsrecht" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <span class="pseudoLabel required">
                                       <span id="d0e3517_label">Geben Sie bitte die Vereinbarungsart an, welche für das Umgangsrecht getroffen wurde<span class="required-mark">
                                             <span aria-hidden="true">*</span>
                                             <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                          </span>
                                       </span>
                                    </span>
                                 </div>
                                 <div class="formline">
                                    <div role="group" aria-labelledby='d0e3517_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "verinbarungumgangsrecht") %>' class="inputcontainer">
                                       <cit:choiceGroup name="verinbarungumgangsrecht" required="true">
                                          <div class="choice">
                                             <cit:inputChoice value="Es gibt eine gerichtlichtliche Vereinbarung bezüglich des Umgangsrechtes."/>
                                             <cit:inputLabel name="verinbarungumgangsrecht.Es gibt eine gerichtlichtliche Vereinbarung bezüglich des Umgangsrechtes.">Es gibt eine gerichtlichtliche Vereinbarung bezüglich des Umgangsrechtes.</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="Das Umgangsrecht wurde unter den Eltern vereinbart."/>
                                             <cit:inputLabel name="verinbarungumgangsrecht.Das Umgangsrecht wurde unter den Eltern vereinbart.">Das Umgangsrecht wurde unter den Eltern vereinbart.</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="Sonstige Vereinbarung (zum Beispiel über Rechtsanwälte)"/>
                                             <cit:inputLabel name="verinbarungumgangsrecht.Sonstige Vereinbarung (zum Beispiel über Rechtsanwälte)">Sonstige Vereinbarung (zum Beispiel über Rechtsanwälte)</cit:inputLabel>
                                          </div>
                                       </cit:choiceGroup>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.betreuungkind == &#34;geteilt&#34;">
                              <section class="infobox narrow"><p>Die schriftliche Vereinbarung zum Umgangsrecht können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen</p></section>
                           </cit:conditional>
                           <cit:conditional test="myForm.betreuungkind == &#34;geteilt&#34;">
                              <section class="block live narrow" data-comments='<%= getComments(pageContext.getAttribute("form"), "vereinbarunggilt") %>' data-live-stay="stay_nonval_d0e3541">
                                 <cit:conditional test="!assistants.request.isValid('vereinbarunggilt')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="vereinbarunggilt"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="vereinbarunggilt" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="vereinbarunggilt" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="vereinbarunggilt" v="2" required="true">
                                       <span id="$$ID$$">Die Regelung gilt<span class="required-mark">
                                             <span aria-hidden="true">*</span>
                                             <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                          </span>
                                       </span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputSelect name="vereinbarunggilt" immediate="true" ariaLabelledby="$label-id $error-ids" required="true">
                                          <cit:option value=""/>
                                          <cit:option value="wöchentlich">wöchentlich</cit:option>
                                          <cit:option value="14-täglich">14-täglich</cit:option>
                                          <cit:option value="davon abweichende Regelung">davon abweichende Regelung</cit:option>
                                       </cit:inputSelect>
                                    </div>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e3541" id="stay.nonval.d0e3541" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3541').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "vereinbarunggilt", "string");</cit:script>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.vereinbarunggilt === &#34;davon abweichende Regelung&#34;">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vereinbarungumgangsrechtsonstige") %>'>
                                 <cit:conditional test="!assistants.request.isValid('vereinbarungumgangsrechtsonstige')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="vereinbarungumgangsrechtsonstige"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="vereinbarungumgangsrechtsonstige" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="vereinbarungumgangsrechtsonstige" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="vereinbarungumgangsrechtsonstige" v="2" required="true">
                                       <span id="$$ID$$">Bitte beschreiben Sie die Regelung<span class="required-mark">
                                             <span aria-hidden="true">*</span>
                                             <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                          </span>
                                       </span>
                                    </cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputTextarea name="vereinbarungumgangsrechtsonstige" ariaLabelledby="$label-id $error-ids" required="true" maxlength="400"/>
                                    </div>
                                    <aside>
                                       <noscript>Max. 400 Zeichen</noscript>
                                       <span id="d0e3561-counter" class="textarea-counter">Noch <span id="vereinbarungumgangsrechtsonstige_remaining">0</span>/400 Zeichen</span>
                                    </aside>
                                    <script type="text/javascript">document.getElementById('d0e3561-counter').style.display='inline';</script>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.vereinbarunggilt === &#34;davon abweichende Regelung&#34;">
                              <section class="infobox narrow"><p>Die monatliche Auflistung der Betreuung können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen</p></section>
                           </cit:conditional>
                           <cit:conditional test="myForm.betreuungkind == &#34;geteilt&#34;">
                              <section class="block feldtabelle wide">
                                 <cit:validationMessage for="d0e3576-max-count">
                                    <p class="invalidInfo">
                                       <strong>Bitte füllen Sie hier nicht mehr als 7 Zeilen aus.</strong>
                                    </p>
                                 </cit:validationMessage>
                                 <header>
                                    <h3 id="d0e3576-table-label">Betreuungszeiten des anderen Elternteiles</h3>
                                    <div id="d0e3576-table-description"><p>Bitte geben Sie die Betreuungszeiten des anderen Elternteils an und legen Sie für jeden Wochentag eine neue Zeile an. Sollte die Betreuung an diesem Tag ganztags erfolgen, haken Sie bitte entsprechendes Feld an. Andernfalls geben Sie bitte die Betreuungszeiten im Format hh:mm an.</p> <div class="accessibility">Bitte füllen Sie diese Formulartabelle zeilenweise aus. Verwenden Sie die Schaltfläche "Neue Zeile(n)" am Ende der Tabelle, um Zeilen hinzuzufügen. Verwenden Sie die Aktion "Löschen" am Ende einer Zeile, um diese zu löschen.</div>
                                    </div>
                                 </header>
                                 <cit:table scope="betreuungszeiten_des_anderen_elternteiles" cols="4" class="field-table" id="betreuungszeiten_des_anderen_elternteiles" maxRowCount="7" initialRowCount="0" ariaLabelledby="d0e3576-table-label" ariaDescribedby="d0e3576-table-description">
                                    <cit:thead>
                                       <div role="columnheader" class="tablecell pinned">Wochentag</div>
                                       <div role="columnheader" class="tablecell">ganztags</div>
                                       <div role="columnheader" class="tablecell html5-input-type-time">in der Zeit von</div>
                                       <div role="columnheader" class="tablecell html5-input-type-time">bis</div>
                                    </cit:thead>
                                    <cit:tbody>
                                       <div role="cell" class="tablecell pinned">
                                          <cit:conditional test="!assistants.request.isValid('tag')">
                                             <p class="errorText v2">
                                                <span class="icon-warning-sign" aria-hidden="true"/>
                                                <strong>
                                                   <cit:errorText name="tag"/>
                                                </strong>
                                             </p>
                                          </cit:conditional>
                                          <cit:errorText name="tag" id="#page-strict">
                                             <p class="errorText v2" id="$$ID$$">
                                                <span class="icon-warning-sign" aria-hidden="true"/>
                                                <strong>
                                                   <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                             </p>
                                          </cit:errorText>
                                          <cit:errorText name="tag" id="#page-soft">
                                             <p class="errorText v2 loose" id="$$ID$$">
                                                <span class="icon-exclamation-sign" aria-hidden="true"/>
                                                <strong>
                                                   <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                             </p>
                                          </cit:errorText>
                                          <cit:inputLabel name="tag" v="2">
                                             <span id="$$ID$$">Wochentag</span>
                                          </cit:inputLabel>
                                          <div class="inputcontainer">
                                             <cit:inputSelect name="tag" ariaLabelledby="$label-id $error-ids">
                                                <cit:option value="--- bitte auswählen ---">--- bitte auswählen ---</cit:option>
                                                <cit:option value="Montag">Montag</cit:option>
                                                <cit:option value="Dienstag">Dienstag</cit:option>
                                                <cit:option value="Mittwoch">Mittwoch</cit:option>
                                                <cit:option value="Donnerstag">Donnerstag</cit:option>
                                                <cit:option value="Freitag">Freitag</cit:option>
                                                <cit:option value="Samstag">Samstag</cit:option>
                                                <cit:option value="Sonntag">Sonntag</cit:option>
                                             </cit:inputSelect>
                                          </div>
                                       </div>
                                       <div role="cell" class="tablecell">
                                          <cit:conditional test="!assistants.request.isValid('ganztags')">
                                             <p class="errorText v2">
                                                <span class="icon-warning-sign" aria-hidden="true"/>
                                                <strong>
                                                   <cit:errorText name="ganztags"/>
                                                </strong>
                                             </p>
                                          </cit:conditional>
                                          <cit:errorText name="ganztags" id="#page-strict">
                                             <p class="errorText v2" id="$$ID$$">
                                                <span class="icon-warning-sign" aria-hidden="true"/>
                                                <strong>
                                                   <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                             </p>
                                          </cit:errorText>
                                          <cit:errorText name="ganztags" id="#page-soft">
                                             <p class="errorText v2 loose" id="$$ID$$">
                                                <span class="icon-exclamation-sign" aria-hidden="true"/>
                                                <strong>
                                                   <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                             </p>
                                          </cit:errorText>
                                          <cit:inputLabel name="ganztags" v="2">
                                             <span id="$$ID$$">ganztags</span>
                                          </cit:inputLabel>
                                          <div class="inputcontainer">
                                             <cit:inputBoolean name="ganztags" ariaLabelledby="$label-id $error-ids"/>
                                          </div>
                                       </div>
                                       <div role="cell" class="tablecell html5-input-type-time">
                                          <cit:conditional test="!assistants.request.isValid('inderzeitvon')">
                                             <p class="errorText v2">
                                                <span class="icon-warning-sign" aria-hidden="true"/>
                                                <strong>
                                                   <cit:errorText name="inderzeitvon"/>
                                                </strong>
                                             </p>
                                          </cit:conditional>
                                          <cit:errorText name="inderzeitvon" id="#page-strict">
                                             <p class="errorText v2" id="$$ID$$">
                                                <span class="icon-warning-sign" aria-hidden="true"/>
                                                <strong>
                                                   <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                             </p>
                                          </cit:errorText>
                                          <cit:errorText name="inderzeitvon" id="#page-soft">
                                             <p class="errorText v2 loose" id="$$ID$$">
                                                <span class="icon-exclamation-sign" aria-hidden="true"/>
                                                <strong>
                                                   <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                             </p>
                                          </cit:errorText>
                                          <cit:inputLabel name="inderzeitvon" v="2">
                                             <span id="$$ID$$">in der Zeit von</span>
                                          </cit:inputLabel>
                                          <div class="inputcontainer">
                                             <cit:inputText name="inderzeitvon" ariaLabelledby="$label-id $error-ids" type="time"/>
                                          </div>
                                       </div>
                                       <div role="cell" class="tablecell html5-input-type-time">
                                          <cit:conditional test="!assistants.request.isValid('inderzeitbis')">
                                             <p class="errorText v2">
                                                <span class="icon-warning-sign" aria-hidden="true"/>
                                                <strong>
                                                   <cit:conditional test="!My.isCustomReason('inderzeitbis')">
                                                      <cit:errorText name="inderzeitbis"/>
                                                   </cit:conditional>
                                                   <cit:conditional test="My.isCustomReason('inderzeitbis')">
                                                      <cit:errorText name="inderzeitbis">
                                                         <span id="$$ID$$">
                                                            <span class="accessibility">Fehler: </span>Bitte geben Sie die Uhrzeit im Format hh:mm an</span>
                                                      </cit:errorText>
                                                   </cit:conditional>
                                                </strong>
                                             </p>
                                          </cit:conditional>
                                          <cit:errorText name="inderzeitbis" id="#page-strict">
                                             <p class="errorText v2" id="$$ID$$">
                                                <span class="icon-warning-sign" aria-hidden="true"/>
                                                <strong>
                                                   <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                             </p>
                                          </cit:errorText>
                                          <cit:errorText name="inderzeitbis" id="#page-soft">
                                             <p class="errorText v2 loose" id="$$ID$$">
                                                <span class="icon-exclamation-sign" aria-hidden="true"/>
                                                <strong>
                                                   <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                             </p>
                                          </cit:errorText>
                                          <cit:inputLabel name="inderzeitbis" v="2">
                                             <span id="$$ID$$">bis</span>
                                          </cit:inputLabel>
                                          <div class="inputcontainer">
                                             <cit:inputText name="inderzeitbis" ariaLabelledby="$label-id $error-ids" errtitle="Bitte geben Sie die Uhrzeit im Format hh:mm an" type="time" placeholder="hh:mm"/>
                                          </div>
                                       </div>
                                    </cit:tbody>
                                 </cit:table>
                              </section>
                           </cit:conditional>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
                           <h3 class="accessibility">Dialogverlauf</h3>
                           <ul class="icons"><% final boolean unvisited_d74e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d74e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                                    <a href="" class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d74e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d74e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d74e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d74e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                                    <a href="" class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d74e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d74e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d74e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='past<%= unvisited_d74e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d74e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d74e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d74e8 = !isVisited(session, "rbs_bez"); %><li class='past<%= unvisited_d74e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("rbs_bez") != null) { %><span class="item clickable" data-submit-value="resync.rbs_bez">
                                    <a href="" class="label">
                                       <span class="labeltext">Anschrift Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d74e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Anschrift Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d74e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d74e10 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='past<%= unvisited_d74e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-zum-antragsteller-zur-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-zum-antragsteller-zur-antragstellerin">
                                    <a href="" class="label">
                                       <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d74e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d74e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d74e12 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d74e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-kind-fuer-das-die-leistung-beantragt-wird">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d74e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d74e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d74e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d74e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.demnaechst-vollenden-werden">
                                    <a href="" class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d74e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d74e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d74e16 = !isVisited(session, "angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %><li class='past<%= unvisited_d74e16 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d74e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d74e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d74e18 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='past<%= unvisited_d74e18 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-1-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-1-3">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d74e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d74e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d74e20 = !isVisited(session, "angaben-zum-anderen-elternteil-2-3"); %><li class='past<%= unvisited_d74e20 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-2-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-2-3">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d74e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d74e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d74e22 = !isVisited(session, "angaben-zum-anderen-elternteil-3-3"); %><li class='past<%= unvisited_d74e22 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-3-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-3-3">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d74e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d74e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d74e24 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='present<%= unvisited_d74e24 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d74e24 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d74e24 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d74e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d74e26 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d74e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d74e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d74e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d74e28 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d74e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d74e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d74e30 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d74e30 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d74e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d74e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d74e32 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d74e32 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Nachweise</span>
                                       <span class="labelicon" title='<%= unvisited_d74e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d74e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d74e34 = !isVisited(session, "schriftformerfordernis"); %><li class='future<%= unvisited_d74e34 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Schriftformerfordernis</span>
                                       <span class="labelicon" title='<%= unvisited_d74e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d74e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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