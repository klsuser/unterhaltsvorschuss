<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("nachweise"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("nachweise"); %>

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
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Nachweise</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow/>
      </cit:control>
   </head>
   <body id="nachweise">
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
               <ul class="icons"><% final boolean unvisited_d92e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d92e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                        <a href="" class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d92e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d92e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d92e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d92e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                        <a href="" class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d92e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d92e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d92e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='past<%= unvisited_d92e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d92e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d92e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d92e8 = !isVisited(session, "rbs_bez"); %><li class='past<%= unvisited_d92e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("rbs_bez") != null) { %><span class="item clickable" data-submit-value="resync.rbs_bez">
                        <a href="" class="label">
                           <span class="labeltext">Anschrift Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d92e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Anschrift Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d92e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d92e10 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='past<%= unvisited_d92e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-zum-antragsteller-zur-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-zum-antragsteller-zur-antragstellerin">
                        <a href="" class="label">
                           <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d92e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d92e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d92e12 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d92e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-kind-fuer-das-die-leistung-beantragt-wird">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d92e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d92e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d92e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d92e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.demnaechst-vollenden-werden">
                        <a href="" class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d92e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d92e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d92e16 = !isVisited(session, "angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %><li class='past<%= unvisited_d92e16 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d92e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d92e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d92e18 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='past<%= unvisited_d92e18 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-1-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-1-3">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                           <span class="labelicon" title='<%= unvisited_d92e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                           <span class="labelicon" title='<%= unvisited_d92e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d92e20 = !isVisited(session, "angaben-zum-anderen-elternteil-2-3"); %><li class='past<%= unvisited_d92e20 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-2-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-2-3">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                           <span class="labelicon" title='<%= unvisited_d92e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                           <span class="labelicon" title='<%= unvisited_d92e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d92e22 = !isVisited(session, "angaben-zum-anderen-elternteil-3-3"); %><li class='past<%= unvisited_d92e22 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-3-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-3-3">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                           <span class="labelicon" title='<%= unvisited_d92e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                           <span class="labelicon" title='<%= unvisited_d92e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d92e24 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='past<%= unvisited_d92e24 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("betreuung-des-anderen-elternteiles") != null) { %><span class="item clickable" data-submit-value="resync.betreuung-des-anderen-elternteiles">
                        <a href="" class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d92e24 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e24 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d92e24 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e24 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d92e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='past<%= unvisited_d92e26 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-unterhalt") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-unterhalt">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d92e26 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e26 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d92e26 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e26 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d92e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='past<%= unvisited_d92e28 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d92e28 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e28 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d92e28 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e28 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d92e30 = !isVisited(session, "hinweise"); %><li class='past<%= unvisited_d92e30 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("hinweise") != null) { %><span class="item clickable" data-submit-value="resync.hinweise">
                        <a href="" class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d92e30 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e30 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d92e30 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e30 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d92e32 = !isVisited(session, "nachweise"); %><li class='present<%= unvisited_d92e32 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Nachweise</span>
                           <span class="labelicon" title='<%= unvisited_d92e32 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d92e32 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d92e34 = !isVisited(session, "schriftformerfordernis"); %><li class='future<%= unvisited_d92e34 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Schriftformerfordernis</span>
                           <span class="labelicon" title='<%= unvisited_d92e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d92e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">Nachweise</h2>
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
                           <header class="intro"><p>Auf dieser Seite können Sie Nachweise hochladen. Zugelassene Dateiformate sind: PDF, JPG/JPEG, PNG, DOCX</p></header>
                           <cit:conditional test="myForm.antragstellerweitere.familienstand === &#34;geschieden&#34;">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "scheidungsurteil") %>'>
                                 <cit:conditional test="!assistants.request.isValid('scheidungsurteil')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="scheidungsurteil"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="scheidungsurteil" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="scheidungsurteil" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="scheidungsurteil" v="2">
                                       <span id="$$ID$$">Scheidungsurteil</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="scheidungsurteil" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.antragstellerweitere.familienstand === &#34;nicht mehr lebenspartnerschaft&#34;">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "aufhebungsurkunde") %>'>
                                 <cit:conditional test="!assistants.request.isValid('aufhebungsurkunde')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="aufhebungsurkunde"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="aufhebungsurkunde" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="aufhebungsurkunde" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="aufhebungsurkunde" v="2">
                                       <span id="$$ID$$">Aufhebungsurkunde Ihrer eingetragenen (gleichgeschlechtlichen) Lebenspartnerschaft</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="aufhebungsurkunde" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.antragstellerweitere.familienstand === &#34;verwitwet&#34;">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "sterbeurkunde") %>'>
                                 <cit:conditional test="!assistants.request.isValid('sterbeurkunde')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="sterbeurkunde"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="sterbeurkunde" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="sterbeurkunde" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="sterbeurkunde" v="2">
                                       <span id="$$ID$$">Sterbeurkunde des Ehegatten/der Ehegattin</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="sterbeurkunde" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.antragstellerweitere.vonehepartnergetrenntweil == &#34;mein Ehegatte/Lebenspartner / meine Ehegattin/Lebenspartnerin voraussichtlich wenigstens sechs Monate wegen einer gerichtlichen Anordnung (z. B. Haft/ Krankheit/ Behinderung) in einer Anstalt lebt.&#34;">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "getrenntweilnachweis") %>'>
                                 <cit:conditional test="!assistants.request.isValid('getrenntweilnachweis')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="getrenntweilnachweis"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="getrenntweilnachweis" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="getrenntweilnachweis" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="getrenntweilnachweis" v="2">
                                       <span id="$$ID$$">Nachweis der gerichtlichen Anordnung (z. B. Haft/ Krankheit/ Behinderung)</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="getrenntweilnachweis" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.kind.staatsangehoerigkeit != &#34;deutsch&#34;">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "aufenthaltstitel") %>'>
                                 <cit:conditional test="!assistants.request.isValid('aufenthaltstitel')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="aufenthaltstitel"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="aufenthaltstitel" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="aufenthaltstitel" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="aufenthaltstitel" v="2">
                                       <span id="$$ID$$">Aufenthaltstitel Ihres Kindes</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="aufenthaltstitel" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.kind.staatsangehoerigkeit != &#34;deutsch&#34;">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "nachweiseuebereinkommenundkrankenkasse") %>'>
                                 <cit:conditional test="!assistants.request.isValid('nachweiseuebereinkommenundkrankenkasse')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="nachweiseuebereinkommenundkrankenkasse"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="nachweiseuebereinkommenundkrankenkasse" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="nachweiseuebereinkommenundkrankenkasse" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="nachweiseuebereinkommenundkrankenkasse" v="2">
                                       <span id="$$ID$$">Nachweise über Einkommen und Krankenkasse Ihres Kindes bei Daueraufenthaltsrecht nach § 4a FreizügG/EU (für EU/EWR/Schweiz) Ihres Kindes</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="nachweiseuebereinkommenundkrankenkasse" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "geburtsurkunde") %>'>
                              <cit:conditional test="!assistants.request.isValid('geburtsurkunde')">
                                 <p class="errorText v2">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <cit:errorText name="geburtsurkunde"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="geburtsurkunde" id="#page-strict">
                                 <p class="errorText v2" id="$$ID$$">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="geburtsurkunde" id="#page-soft">
                                 <p class="errorText v2 loose" id="$$ID$$">
                                    <span class="icon-exclamation-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="geburtsurkunde" v="2">
                                    <span id="$$ID$$">Geburtsurkunde Ihres Kindes</span>
                                 </cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputFile name="geburtsurkunde" multi="true"/>
                                 </div>
                              </div>
                           </section>
                           <cit:conditional test="myForm.andererelternteil1.vaterschaftanerkannt == true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "vaterschaftsanerkennungsurkunde") %>'>
                                 <cit:conditional test="!assistants.request.isValid('vaterschaftsanerkennungsurkunde')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="vaterschaftsanerkennungsurkunde"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="vaterschaftsanerkennungsurkunde" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="vaterschaftsanerkennungsurkunde" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="vaterschaftsanerkennungsurkunde" v="2">
                                       <span id="$$ID$$">Vaterschaftsanerkennungsurkunde, falls die hochgeladene Geburtsurkunde den Vater nicht ausweist</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="vaterschaftsanerkennungsurkunde" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.kind.leistungsbezugnachuvg === true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "leistungsbezugbescheid") %>'>
                                 <cit:conditional test="!assistants.request.isValid('leistungsbezugbescheid')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="leistungsbezugbescheid"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="leistungsbezugbescheid" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="leistungsbezugbescheid" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="leistungsbezugbescheid" v="2">
                                       <span id="$$ID$$">Bescheid des Leistungsbezugs Ihres Kindes nach UVG</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="leistungsbezugbescheid" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.kind.waisenrente === &#34;Ich erhalte für mein Kind Waisenbezüge oder Schadenersatzleistungen&#34;">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "bewilligungsbescheid") %>'>
                                 <cit:conditional test="!assistants.request.isValid('bewilligungsbescheid')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="bewilligungsbescheid"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="bewilligungsbescheid" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="bewilligungsbescheid" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="bewilligungsbescheid" v="2">
                                       <span id="$$ID$$">Bewilligungsbescheid der Waisenbezüge oder Schadensersatzleistungen für Ihr Kind</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="bewilligungsbescheid" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.kind.waisenrente === &#34;Ich habe für mein Kind einen Antrag auf Waisenbezüge gestellt&#34;">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "antragsbestaetigungwaisenbezuege") %>'>
                                 <cit:conditional test="!assistants.request.isValid('antragsbestaetigungwaisenbezuege')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="antragsbestaetigungwaisenbezuege"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="antragsbestaetigungwaisenbezuege" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="antragsbestaetigungwaisenbezuege" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="antragsbestaetigungwaisenbezuege" v="2">
                                       <span id="$$ID$$">Nachweis der Beantragung auf Waisenbezüge für Ihr Kind</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="antragsbestaetigungwaisenbezuege" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.kind.hilfelebensunterhalt === &#34;erhalte Hilfen zur Sicherung des Lebensunterhalts vom JobCenter / Sozialamt&#34;">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "hilfelebensunterhaltbescheid") %>'>
                                 <cit:conditional test="!assistants.request.isValid('hilfelebensunterhaltbescheid')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="hilfelebensunterhaltbescheid"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="hilfelebensunterhaltbescheid" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="hilfelebensunterhaltbescheid" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="hilfelebensunterhaltbescheid" v="2">
                                       <span id="$$ID$$">Bescheid über Ihre Hilfen zur Sicherung des Lebensunterhalts</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="hilfelebensunterhaltbescheid" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.andererelternteil1.kindehelich == &#34;ehelich&#34; &amp;&amp; myForm.betreuung.betreuungkind == &#34;teile mir die Versorgung und Betreuung meines Kindes mit dem anderen Elternteil.&#34; || myForm.andererelternteil1.vaterschaftanerkannt == true &amp;&amp; myForm.betreuung.betreuungkind == &#34;teile mir die Versorgung und Betreuung meines Kindes mit dem anderen Elternteil.&#34; || myForm.andererelternteil1.antragauffeststellungvaterschaft == true &amp;&amp; myForm.betreuung.betreuungkind == &#34;teile mir die Versorgung und Betreuung meines Kindes mit dem anderen Elternteil.&#34;">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "anlagevereinbarung") %>'>
                                 <cit:conditional test="!assistants.request.isValid('anlagevereinbarung')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="anlagevereinbarung"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="anlagevereinbarung" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="anlagevereinbarung" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="anlagevereinbarung" v="2">
                                       <span id="$$ID$$">Schriftliche Vereinbarung zur Betreuung Ihres Kindes</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="anlagevereinbarung" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.andererelternteil1.kindehelich == &#34;ehelich&#34; &amp;&amp; myForm.betreuung.vereinbarunggilt === &#34;davon abweichende Regelung&#34; || myForm.andererelternteil1.vaterschaftanerkannt == true &amp;&amp; myForm.betreuung.vereinbarunggilt === &#34;davon abweichende Regelung&#34; || myForm.andererelternteil1.antragauffeststellungvaterschaft == true &amp;&amp; myForm.betreuung.vereinbarunggilt === &#34;davon abweichende Regelung&#34;">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "monatlicheauflistung") %>'>
                                 <cit:conditional test="!assistants.request.isValid('monatlicheauflistung')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="monatlicheauflistung"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="monatlicheauflistung" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="monatlicheauflistung" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="monatlicheauflistung" v="2">
                                       <span id="$$ID$$">Monatliche Auflistung der Betreuung</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="monatlicheauflistung" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="getAge(myForm.kind.geburtsdatum) &gt;= 12 &amp;&amp; myForm.kindueber12.leistungenjobcenter == true || ( getAge(myForm.kind.geburtsdatum) &gt;= 11 &amp;&amp; birthdayThisMonth(myForm.kind.geburtsdatum) ) &amp;&amp; myForm.kindueber12.leistungenjobcenter == true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "bescheidjobcenter") %>'>
                                 <cit:conditional test="!assistants.request.isValid('bescheidjobcenter')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="bescheidjobcenter"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="bescheidjobcenter" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="bescheidjobcenter" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="bescheidjobcenter" v="2">
                                       <span id="$$ID$$">Bescheid über Leistungen vom Jobcenter für <cit:display errorReplacement="―" expression="My.undefinedReplacement(myForm.monat)"/>
                                       </span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="bescheidjobcenter" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="getAge(myForm.kind.geburtsdatum) &gt;= 12 &amp;&amp; myForm.kindueber12.kinderwohngeld == true || ( getAge(myForm.kind.geburtsdatum) &gt;= 11 &amp;&amp; birthdayThisMonth(myForm.kind.geburtsdatum) ) &amp;&amp; myForm.kindueber12.kinderwohngeld == true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "bescheidkinderwohngeld") %>'>
                                 <cit:conditional test="!assistants.request.isValid('bescheidkinderwohngeld')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="bescheidkinderwohngeld"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="bescheidkinderwohngeld" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="bescheidkinderwohngeld" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="bescheidkinderwohngeld" v="2">
                                       <span id="$$ID$$">Bescheid über die Beziehung von Kinderwohngeld</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="bescheidkinderwohngeld" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="getAge(myForm.kind.geburtsdatum) &gt;= 12 &amp;&amp; myForm.kindueber12.schulebeendet == false || ( getAge(myForm.kind.geburtsdatum) &gt;= 11 &amp;&amp; birthdayThisMonth(myForm.kind.geburtsdatum) ) &amp;&amp; myForm.kindueber12.schulebeendet == false">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "schulbescheinigung") %>'>
                                 <cit:conditional test="!assistants.request.isValid('schulbescheinigung')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="schulbescheinigung"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="schulbescheinigung" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="schulbescheinigung" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="schulbescheinigung" v="2">
                                       <span id="$$ID$$">Schulbescheinigung Ihres Kindes</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="schulbescheinigung" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="getAge(myForm.kind.geburtsdatum) &gt;= 12 &amp;&amp; myForm.kindueber12.schulebeendet == true || ( getAge(myForm.kind.geburtsdatum) &gt;= 11 &amp;&amp; birthdayThisMonth(myForm.kind.geburtsdatum) ) &amp;&amp; myForm.kindueber12.schulebeendet == true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausbildungsnachweis") %>'>
                                 <cit:conditional test="!assistants.request.isValid('ausbildungsnachweis')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="ausbildungsnachweis"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="ausbildungsnachweis" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="ausbildungsnachweis" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="ausbildungsnachweis" v="2">
                                       <span id="$$ID$$">Ausbildungs- bzw. Arbeitsvertrag und entsprechende Nachweise über das erzielte Einkommen (z. B. Lohn- und Gehaltsbescheinigungen) Ihres Kindes</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="ausbildungsnachweis" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="getAge(myForm.kind.geburtsdatum) &gt;= 12 &amp;&amp; myForm.kindueber12.kindhalbwaisenrente == true || ( getAge(myForm.kind.geburtsdatum) &gt;= 11 &amp;&amp; birthdayThisMonth(myForm.kind.geburtsdatum) ) &amp;&amp; myForm.kindueber12.kindhalbwaisenrente == true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "nachweishalbwaisenrente") %>'>
                                 <cit:conditional test="!assistants.request.isValid('nachweishalbwaisenrente')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="nachweishalbwaisenrente"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="nachweishalbwaisenrente" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="nachweishalbwaisenrente" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="nachweishalbwaisenrente" v="2">
                                       <span id="$$ID$$">Nachweis über die Halbwaisenrente Ihres Kindes</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="nachweishalbwaisenrente" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="getAge(myForm.kind.geburtsdatum) &gt;= 12 &amp;&amp; myForm.kindueber12.schadensersatzleistungen == true || ( getAge(myForm.kind.geburtsdatum) &gt;= 11 &amp;&amp; birthdayThisMonth(myForm.kind.geburtsdatum) ) &amp;&amp; myForm.kindueber12.schadensersatzleistungen == true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "nachweisschadensersatzleistungen") %>'>
                                 <cit:conditional test="!assistants.request.isValid('nachweisschadensersatzleistungen')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="nachweisschadensersatzleistungen"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="nachweisschadensersatzleistungen" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="nachweisschadensersatzleistungen" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="nachweisschadensersatzleistungen" v="2">
                                       <span id="$$ID$$">Nachweis über den Bezug Ihres Kindes von Schadensersatzleistungen</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="nachweisschadensersatzleistungen" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="getAge(myForm.kind.geburtsdatum) &gt;= 12 &amp;&amp; myForm.kindueber12.nichtselbststaendigearbeit == true || ( getAge(myForm.kind.geburtsdatum) &gt;= 11 &amp;&amp; birthdayThisMonth(myForm.kind.geburtsdatum) ) &amp;&amp; myForm.kindueber12.nichtselbststaendigearbeit == true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "nachweisnichtselbststaendigearbeit") %>'>
                                 <cit:conditional test="!assistants.request.isValid('nachweisnichtselbststaendigearbeit')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="nachweisnichtselbststaendigearbeit"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="nachweisnichtselbststaendigearbeit" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="nachweisnichtselbststaendigearbeit" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="nachweisnichtselbststaendigearbeit" v="2">
                                       <span id="$$ID$$">Nachweis über Einkünfte aus nichtselbstständiger Arbeit, Ausbildung, Freiwilligendienst Ihres Kindes</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="nachweisnichtselbststaendigearbeit" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="getAge(myForm.kind.geburtsdatum) &gt;= 12 &amp;&amp; myForm.kindueber12.selbststaendigearbeit == true || ( getAge(myForm.kind.geburtsdatum) &gt;= 11 &amp;&amp; birthdayThisMonth(myForm.kind.geburtsdatum) ) &amp;&amp; myForm.kindueber12.selbststaendigearbeit == true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "nachweisselbststaendigearbeit") %>'>
                                 <cit:conditional test="!assistants.request.isValid('nachweisselbststaendigearbeit')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="nachweisselbststaendigearbeit"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="nachweisselbststaendigearbeit" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="nachweisselbststaendigearbeit" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="nachweisselbststaendigearbeit" v="2">
                                       <span id="$$ID$$">Nachweise über Einkünfte aus Land- oder Forstwirtschaft, Gewerbebetrieb oder selbstständiger Tätigkeit Ihres Kindes</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="nachweisselbststaendigearbeit" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="getAge(myForm.kind.geburtsdatum) &gt;= 12 &amp;&amp; myForm.kindueber12.kapitalvermoegen == true || ( getAge(myForm.kind.geburtsdatum) &gt;= 11 &amp;&amp; birthdayThisMonth(myForm.kind.geburtsdatum) ) &amp;&amp; myForm.kindueber12.kapitalvermoegen == true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "nachweiskapitalvermoegen") %>'>
                                 <cit:conditional test="!assistants.request.isValid('nachweiskapitalvermoegen')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="nachweiskapitalvermoegen"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="nachweiskapitalvermoegen" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="nachweiskapitalvermoegen" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="nachweiskapitalvermoegen" v="2">
                                       <span id="$$ID$$">Nachweis über Einkünfte Ihres Kindes aus Kapitalvermögen, Vermietung oder Verpachtung</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="nachweiskapitalvermoegen" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="(myForm.unterhalt) ? myForm.unterhalt.unterhaltsfestsetzung == &#34;Eine Unterhaltsfestsetzung ist bereits erfolgt&#34; : false">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "privatrechtlichevereinbarung") %>'>
                                 <cit:conditional test="!assistants.request.isValid('privatrechtlichevereinbarung')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="privatrechtlichevereinbarung"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="privatrechtlichevereinbarung" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="privatrechtlichevereinbarung" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="privatrechtlichevereinbarung" v="2">
                                       <span id="$$ID$$">Unterhaltstitel oder die privatrechtliche Vereinbarung zum Unterhalt</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="privatrechtlichevereinbarung" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="(myForm.unterhalt) ? myForm.unterhalt.zahlungunterhaltsrelevanteleistungen == true : false">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "unterhaltsrelevanteleistungnachweis") %>'>
                                 <cit:conditional test="!assistants.request.isValid('unterhaltsrelevanteleistungnachweis')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="unterhaltsrelevanteleistungnachweis"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="unterhaltsrelevanteleistungnachweis" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="unterhaltsrelevanteleistungnachweis" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="unterhaltsrelevanteleistungnachweis" v="2">
                                       <span id="$$ID$$">Nachweis über unterhaltsrelevante Leistungen</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputFile name="unterhaltsrelevanteleistungnachweis" multi="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
                           <h3 class="accessibility">Dialogverlauf</h3>
                           <ul class="icons"><% final boolean unvisited_d96e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d96e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                                    <a href="" class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d96e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d96e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d96e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d96e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                                    <a href="" class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d96e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d96e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d96e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='past<%= unvisited_d96e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d96e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d96e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d96e8 = !isVisited(session, "rbs_bez"); %><li class='past<%= unvisited_d96e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("rbs_bez") != null) { %><span class="item clickable" data-submit-value="resync.rbs_bez">
                                    <a href="" class="label">
                                       <span class="labeltext">Anschrift Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d96e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Anschrift Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d96e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d96e10 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='past<%= unvisited_d96e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-zum-antragsteller-zur-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-zum-antragsteller-zur-antragstellerin">
                                    <a href="" class="label">
                                       <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d96e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d96e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d96e12 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d96e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-kind-fuer-das-die-leistung-beantragt-wird">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d96e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d96e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d96e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d96e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.demnaechst-vollenden-werden">
                                    <a href="" class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d96e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d96e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d96e16 = !isVisited(session, "angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %><li class='past<%= unvisited_d96e16 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d96e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d96e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d96e18 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='past<%= unvisited_d96e18 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-1-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-1-3">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d96e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d96e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d96e20 = !isVisited(session, "angaben-zum-anderen-elternteil-2-3"); %><li class='past<%= unvisited_d96e20 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-2-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-2-3">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d96e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d96e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d96e22 = !isVisited(session, "angaben-zum-anderen-elternteil-3-3"); %><li class='past<%= unvisited_d96e22 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-3-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-3-3">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d96e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d96e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d96e24 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='past<%= unvisited_d96e24 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("betreuung-des-anderen-elternteiles") != null) { %><span class="item clickable" data-submit-value="resync.betreuung-des-anderen-elternteiles">
                                    <a href="" class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d96e24 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e24 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d96e24 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e24 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d96e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='past<%= unvisited_d96e26 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-unterhalt") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-unterhalt">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d96e26 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e26 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d96e26 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e26 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d96e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='past<%= unvisited_d96e28 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d96e28 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e28 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d96e28 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e28 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d96e30 = !isVisited(session, "hinweise"); %><li class='past<%= unvisited_d96e30 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("hinweise") != null) { %><span class="item clickable" data-submit-value="resync.hinweise">
                                    <a href="" class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d96e30 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e30 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d96e30 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e30 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d96e32 = !isVisited(session, "nachweise"); %><li class='present<%= unvisited_d96e32 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Nachweise</span>
                                       <span class="labelicon" title='<%= unvisited_d96e32 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d96e32 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d96e34 = !isVisited(session, "schriftformerfordernis"); %><li class='future<%= unvisited_d96e34 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Schriftformerfordernis</span>
                                       <span class="labelicon" title='<%= unvisited_d96e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d96e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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