<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("hinweise"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("hinweise"); %>

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
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Hinweise</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow>
            <cit:do action="gosub" href="nachweise.jsp" scope="dateien"/>
            <cit:do action="goto" href="schriftformerfordernis.jsp"/>
         </cit:flow>
         <cit:page-validation id="d0e3995-required" test="!My.empty(myForm.einwilligungdatenaustausch)"/>
      </cit:control>
   </head>
   <body id="hinweise">
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
               <ul class="icons"><% final boolean unvisited_d87e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d87e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                        <a href="" class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d87e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d87e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d87e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d87e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                        <a href="" class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d87e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d87e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d87e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='past<%= unvisited_d87e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d87e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d87e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d87e8 = !isVisited(session, "rbs_bez"); %><li class='past<%= unvisited_d87e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("rbs_bez") != null) { %><span class="item clickable" data-submit-value="resync.rbs_bez">
                        <a href="" class="label">
                           <span class="labeltext">Anschrift Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d87e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Anschrift Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d87e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d87e10 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='past<%= unvisited_d87e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-zum-antragsteller-zur-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-zum-antragsteller-zur-antragstellerin">
                        <a href="" class="label">
                           <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d87e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d87e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d87e12 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d87e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-kind-fuer-das-die-leistung-beantragt-wird">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d87e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d87e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d87e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d87e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.demnaechst-vollenden-werden">
                        <a href="" class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d87e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d87e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d87e16 = !isVisited(session, "angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %><li class='past<%= unvisited_d87e16 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d87e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d87e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d87e18 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='past<%= unvisited_d87e18 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-1-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-1-3">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                           <span class="labelicon" title='<%= unvisited_d87e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                           <span class="labelicon" title='<%= unvisited_d87e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d87e20 = !isVisited(session, "angaben-zum-anderen-elternteil-2-3"); %><li class='past<%= unvisited_d87e20 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-2-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-2-3">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                           <span class="labelicon" title='<%= unvisited_d87e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                           <span class="labelicon" title='<%= unvisited_d87e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d87e22 = !isVisited(session, "angaben-zum-anderen-elternteil-3-3"); %><li class='past<%= unvisited_d87e22 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-3-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-3-3">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                           <span class="labelicon" title='<%= unvisited_d87e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                           <span class="labelicon" title='<%= unvisited_d87e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d87e24 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='past<%= unvisited_d87e24 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("betreuung-des-anderen-elternteiles") != null) { %><span class="item clickable" data-submit-value="resync.betreuung-des-anderen-elternteiles">
                        <a href="" class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d87e24 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e24 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d87e24 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e24 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d87e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='past<%= unvisited_d87e26 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-unterhalt") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-unterhalt">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d87e26 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e26 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d87e26 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e26 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d87e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='past<%= unvisited_d87e28 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d87e28 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e28 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d87e28 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e28 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d87e30 = !isVisited(session, "hinweise"); %><li class='present<%= unvisited_d87e30 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d87e30 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d87e30 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d87e32 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d87e32 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Nachweise</span>
                           <span class="labelicon" title='<%= unvisited_d87e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d87e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d87e34 = !isVisited(session, "schriftformerfordernis"); %><li class='future<%= unvisited_d87e34 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Schriftformerfordernis</span>
                           <span class="labelicon" title='<%= unvisited_d87e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d87e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">Hinweise</h2>
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
                           <header class="intro"><p>Bitte Folgendes besonders beachten:</p><p>Ab Antragstellung sind unverzüglich folgende Tatsachen <abbr title="beziehungsweise">bzw.</abbr> Veränderungen mitzuteilen:</p><ul><li><strong>jede Eheschließung, auch wenn der Ehegatte nicht der andere Elternteil ist</strong></li><li>jedes Eingehen einer häuslichen Gemeinschaft mit dem anderen Elternteil</li><li>jedes Ausscheiden des Kindes aus der bisherigen häuslichen Gemeinschaft</li><li>jeder Wohnungswechsel (auch in Berlin) und jede Kontoänderung</li><li>jede Änderung des Aufenthaltstitels / der Freizügigkeitsberechtigung</li><li>jede Unterhaltszahlung des anderen Elternteils oder der direkte Erhalt von unterhaltsrelevanten Leistungen (<abbr title="zum Beispiel">z. B.</abbr> Kitabeitrag)</li><li>jede Änderung der tatsächlichen Betreuung des Kindes</li><li>die Unterbringung des Kindes in einer Einrichtung der Kinder- und Jugendhilfe nach <abbr title="Sozialgesetzbuch">SGB</abbr> VIII</li><li>Wehrdienst des anderen Elternteils</li><li>der Aufenthalt des anderen Elternteils, wenn er zuvor nicht bekannt war oder wenn sich dessen Anschrift ändert</li><li>das Ableben des anderen Elternteils / Stiefelternteils</li><li>die Beantragung, Bewilligung oder Änderung von Halbwaisenrente für das Kind</li><li>die Erzielung von Einkünften des Vermögens und Erträgen aus zumutbarer Arbeit, wenn das Kind das 15. Lebensjahr vollendet hat und keine allgemeinbildende Schule mehr besucht</li></ul><p><br/><br/>Die Leistungen nach dem <abbr title="Unterhaltsvorschussgesetz">UVG</abbr> müssen eingestellt werden, wenn der andere Elternteil seine Unterhaltspflicht mindestens in Höhe der ungekürzten Unterhaltsvorschussleistungen nachkommt; dasselbe gilt bei der Zahlung von Waisenbezügen, Schadensersatzleistungen für das Kind oder Einkünften aus Vermögen und Erträgen aus zumutbarer Arbeit bei Kindern, die das 15. Lebensjahr vollendet haben <u>und</u> keine allgemeinbildende Schule mehr besuchen.<br/><br/><u>Über das Eintreffen derartiger Zahlungen werde ich die Unterhaltsvorschussstelle <strong>unverzüglich</strong> unterrichten.</u><br/><br/><strong>Zu Unrecht erbrachte Leistungen nach dem UVG sind zu ersetzen bzw. sind zurückzuzahlen, soweit ich gegen meine Mitteilungspflichten verstoßen habe.</strong> Daneben kann die Nichtbeachtung der Mitteilungspflichten als Ordnungswidrigkeit geahndet werden und die Zahlung eines Bußgeldes nach sich ziehen.</p></header>
                           <cit:xmlResource id="xzufi" src="/WEB-INF/data/xzufi_dienstleistung.xml"/>
                           <section class="group narrow">
                              <header>
                                 <h3>Erklärung</h3><p>Ich versichere, dass ich die Angaben nach bestem Wissen und Gewissen ausgefüllt und alle Angaben vollständig gemacht habe. Für die Leistungen nach dem <abbr title="Unterhaltsvorschussgesetz">UVG</abbr> werden die angegebenen persönlichen Daten elektronisch gespeichert und verarbeitet. Eine Übermittlung der Angaben aus dem Antrag erfolgt nur an die Stellen, die sie zur Erfüllung ihrer Aufgaben benötigen und die zur Auskunft berechtigt sind.</p></header>
                              <section class="block narrow label_above leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "einwilligungdatenaustausch") %>'>
                                 <cit:conditional test="!assistants.request.isValid('einwilligungdatenaustausch')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="einwilligungdatenaustausch"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="einwilligungdatenaustausch" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="einwilligungdatenaustausch" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:validationMessage for="d0e3995-required">
                                    <cit:conditional test="assistants.request.isValid('einwilligungdatenaustausch')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                       </p>
                                    </cit:conditional>
                                 </cit:validationMessage>
                                 <div class="label">
                                    <span class="pseudoLabel required">
                                       <span id="d0e3995_label">Ich bin damit einverstanden, dass die notwendigen Daten zur Durchführung des <abbr title="Unterhaltsvorschussgesetz">UVG</abbr> mit dem Beistand, dem (Amts-)Pfleger oder dem Vormund ausgetauscht werden können. Die erteilte Einwilligung ist freiwillig und kann jederzeit widerrufen werden. Bis zum Widerruf bleibt die Rechtmäßigkeit der Verarbeitung auf der Grundlage der Einwilligung unberührt.<span class="required-mark">
                                             <span aria-hidden="true">*</span>
                                             <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                          </span>
                                       </span>
                                    </span>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e3995_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "einwilligungdatenaustausch") %>'>
                                       <cit:choiceGroup type="boolean" name="einwilligungdatenaustausch" required="true">
                                          <div class="choice">
                                             <cit:inputChoice value="true"/>
                                             <cit:inputLabel name="einwilligungdatenaustausch.true">Ja</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="false"/>
                                             <cit:inputLabel name="einwilligungdatenaustausch.false">Nein</cit:inputLabel>
                                          </div>
                                       </cit:choiceGroup>
                                    </div>
                                 </div>
                              </section>
                           </section>
                           <cit:inputComputed name="bda_xfall_app_orgname1" value="getOrgName1('applicant')"/>
                           <cit:inputComputed name="bda_xfall_app_orgname2" value="getOrgName2('applicant')"/>
                           <cit:inputComputed name="bda_xfall_app_bezirknr" value="getBezirkNr('applicant')"/>
                           <cit:inputComputed name="bda_xfall_app_email" value="getEMail('applicant')"/>
                           <cit:inputComputed name="bda_xfall_app_faxno" value="getFaxNo('applicant')"/>
                           <cit:inputComputed name="bda_xfall_app_bezirk" value="getBezirk('applicant')"/>
                           <cit:inputComputed name="bda_xfall_app_mobileno" value="getMobileNo('applicant')"/>
                           <cit:inputComputed name="bda_xfall_app_houseno" value="getHouseNo('applicant')"/>
                           <cit:inputComputed name="bda_xfall_app_postalcode" value="getPostalCode('applicant')"/>
                           <cit:inputComputed name="bda_xfall_app_city" value="getCity('applicant')"/>
                           <cit:inputComputed name="bda_xfall_app_country" value="'DE'"/>
                           <cit:inputComputed name="bda_xfall_app_telno" value="getTelNo('applicant')"/>
                           <cit:inputComputed name="bda_xfall_app_academictitle" value="getAcademicTitle('applicant')"/>
                           <cit:inputComputed name="bda_xfall_app_formofaddress" value="getFormOfAddress('applicant')"/>
                           <cit:inputComputed name="bda_xfall_app_postofficebox" value="getPostOfficeBox('applicant')"/>
                           <cit:inputComputed name="bda_xfall_app_identitynamespace" value="getIdentityNamespace()"/>
                           <cit:inputComputed name="bda_xfall_app_partnertype" value="getPartnerType('applicant')"/>
                           <cit:inputComputed name="bda_xfall_app_street" value="getStreet('applicant')"/>
                           <cit:inputComputed name="bda_xfall_app_firstname" value="getFirstName('applicant')"/>
                           <cit:inputComputed name="bda_xfall_app_lastname" value="getLastName('applicant')"/>
                           <cit:inputComputed name="bda_xfall_app_nationality" value="getNationality('applicant')"/>
                           <cit:inputComputed name="bda_xfall_aut_partnertype" value="'2'"/>
                           <cit:inputComputed name="bda_xfall_aut_country" value="'DE'"/>
                           <cit:inputComputed name="bda_xfall_aut_email" value="getEMail('authority')"/>
                           <cit:inputComputed name="bda_xfall_aut_faxno" value="getFaxNo('authority')"/>
                           <cit:inputComputed name="bda_xfall_aut_mobileno" value="getMobileNo('authority')"/>
                           <cit:inputComputed name="bda_xfall_aut_telno" value="getTelNo('authority')"/>
                           <cit:inputComputed name="bda_xfall_aut_orgname1" value="getOrgName1('authority')"/>
                           <cit:inputComputed name="bda_xfall_aut_postalcode" value="getPostalCode('authority')"/>
                           <cit:inputComputed name="bda_xfall_aut_street" value="getStreet('authority')"/>
                           <cit:inputComputed name="bda_xfall_aut_houseno" value="getHouseNo('authorityt')"/>
                           <cit:inputComputed name="bda_xfall_aut_nationality" value="'DE'"/>
                           <cit:inputComputed name="bda_xfall_aut_bezirknr" value="getBezirkNr('authority')"/>
                           <cit:inputComputed name="bda_xfall_aut_postofficebox" value="getPostOfficeBox('authority')"/>
                           <cit:inputComputed name="bda_xfall_aut_identitynamespace" value="getIdentityNamespace()"/>
                           <cit:inputComputed name="bda_xfall_aut_city" value="getCity('authority')"/>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
                           <h3 class="accessibility">Dialogverlauf</h3>
                           <ul class="icons"><% final boolean unvisited_d90e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d90e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                                    <a href="" class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d90e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d90e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d90e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d90e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                                    <a href="" class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d90e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d90e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d90e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='past<%= unvisited_d90e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d90e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d90e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d90e8 = !isVisited(session, "rbs_bez"); %><li class='past<%= unvisited_d90e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("rbs_bez") != null) { %><span class="item clickable" data-submit-value="resync.rbs_bez">
                                    <a href="" class="label">
                                       <span class="labeltext">Anschrift Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d90e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Anschrift Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d90e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d90e10 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='past<%= unvisited_d90e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-zum-antragsteller-zur-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-zum-antragsteller-zur-antragstellerin">
                                    <a href="" class="label">
                                       <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d90e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d90e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d90e12 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d90e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-kind-fuer-das-die-leistung-beantragt-wird">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d90e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d90e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d90e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d90e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.demnaechst-vollenden-werden">
                                    <a href="" class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d90e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d90e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d90e16 = !isVisited(session, "angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %><li class='past<%= unvisited_d90e16 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d90e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d90e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d90e18 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='past<%= unvisited_d90e18 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-1-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-1-3">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d90e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d90e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d90e20 = !isVisited(session, "angaben-zum-anderen-elternteil-2-3"); %><li class='past<%= unvisited_d90e20 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-2-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-2-3">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d90e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d90e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d90e22 = !isVisited(session, "angaben-zum-anderen-elternteil-3-3"); %><li class='past<%= unvisited_d90e22 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-3-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-3-3">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d90e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d90e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d90e24 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='past<%= unvisited_d90e24 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("betreuung-des-anderen-elternteiles") != null) { %><span class="item clickable" data-submit-value="resync.betreuung-des-anderen-elternteiles">
                                    <a href="" class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d90e24 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e24 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d90e24 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e24 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d90e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='past<%= unvisited_d90e26 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-unterhalt") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-unterhalt">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d90e26 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e26 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d90e26 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e26 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d90e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='past<%= unvisited_d90e28 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d90e28 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e28 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d90e28 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e28 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d90e30 = !isVisited(session, "hinweise"); %><li class='present<%= unvisited_d90e30 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d90e30 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d90e30 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d90e32 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d90e32 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Nachweise</span>
                                       <span class="labelicon" title='<%= unvisited_d90e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d90e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d90e34 = !isVisited(session, "schriftformerfordernis"); %><li class='future<%= unvisited_d90e34 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Schriftformerfordernis</span>
                                       <span class="labelicon" title='<%= unvisited_d90e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d90e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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