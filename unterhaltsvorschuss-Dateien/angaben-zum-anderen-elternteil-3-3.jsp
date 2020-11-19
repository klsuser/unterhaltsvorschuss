<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("angaben-zum-anderen-elternteil-3-3"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("angaben-zum-anderen-elternteil-3-3"); %>

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
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Angaben zum anderen Elternteil (3/3)</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow/>
      </cit:control>
   </head>
   <body id="angaben-zum-anderen-elternteil-3-3">
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
               <ul class="icons"><% final boolean unvisited_d66e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d66e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                        <a href="" class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d66e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d66e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d66e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d66e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d66e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d66e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                        <a href="" class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d66e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d66e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d66e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d66e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d66e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='past<%= unvisited_d66e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d66e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d66e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d66e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d66e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d66e8 = !isVisited(session, "rbs_bez"); %><li class='past<%= unvisited_d66e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("rbs_bez") != null) { %><span class="item clickable" data-submit-value="resync.rbs_bez">
                        <a href="" class="label">
                           <span class="labeltext">Anschrift Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d66e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d66e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Anschrift Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d66e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d66e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d66e10 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='past<%= unvisited_d66e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-zum-antragsteller-zur-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-zum-antragsteller-zur-antragstellerin">
                        <a href="" class="label">
                           <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d66e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d66e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d66e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d66e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d66e12 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d66e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-kind-fuer-das-die-leistung-beantragt-wird">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d66e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d66e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d66e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d66e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d66e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d66e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.demnaechst-vollenden-werden">
                        <a href="" class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d66e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d66e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d66e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d66e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d66e16 = !isVisited(session, "angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %><li class='past<%= unvisited_d66e16 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d66e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d66e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d66e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d66e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d66e18 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='past<%= unvisited_d66e18 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-1-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-1-3">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                           <span class="labelicon" title='<%= unvisited_d66e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d66e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                           <span class="labelicon" title='<%= unvisited_d66e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d66e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d66e20 = !isVisited(session, "angaben-zum-anderen-elternteil-2-3"); %><li class='past<%= unvisited_d66e20 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-2-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-2-3">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                           <span class="labelicon" title='<%= unvisited_d66e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d66e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                           <span class="labelicon" title='<%= unvisited_d66e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d66e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d66e22 = !isVisited(session, "angaben-zum-anderen-elternteil-3-3"); %><li class='present<%= unvisited_d66e22 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                           <span class="labelicon" title='<%= unvisited_d66e22 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d66e22 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d66e24 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d66e24 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d66e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d66e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d66e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d66e26 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d66e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d66e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d66e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d66e28 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d66e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d66e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d66e30 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d66e30 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d66e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d66e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d66e32 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d66e32 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Nachweise</span>
                           <span class="labelicon" title='<%= unvisited_d66e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d66e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d66e34 = !isVisited(session, "schriftformerfordernis"); %><li class='future<%= unvisited_d66e34 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Schriftformerfordernis</span>
                           <span class="labelicon" title='<%= unvisited_d66e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d66e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">Angaben zum anderen Elternteil (3/3)</h2>
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
                           <section class="group narrow">
                              <header>
                                 <h3>Bezüge</h3>
                              </header>
                              <section class="infobox narrow"><p>Bitte geben Sie die Bezüge an<br/><br/></p></section>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "bezugalg") %>' data-live-stay="stay_nonval_d0e2817">
                                 <cit:conditional test="!assistants.request.isValid('bezugalg')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="bezugalg"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="bezugalg" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="bezugalg" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="bezugalg" ariaLabelledby="$label-id $error-ids" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="bezugalg" v="2">
                                       <span id="$$ID$$">Bezug von Arbeitslosengeld</span>
                                    </cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2817" id="stay.nonval.d0e2817" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2817').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "bezugalg", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.bezugalg == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "algleistungsstelle") %>'>
                                    <cit:conditional test="!assistants.request.isValid('algleistungsstelle')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="algleistungsstelle"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="algleistungsstelle" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="algleistungsstelle" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="algleistungsstelle" v="2">
                                          <span id="$$ID$$">Leistungsstelle</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="algleistungsstelle" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                    <footer><p>(Agentur für Arbeit)</p></footer>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.bezugalg == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "alghoehe") %>'>
                                    <cit:conditional test="!assistants.request.isValid('alghoehe')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="alghoehe"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="alghoehe" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="alghoehe" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="alghoehe" v="2">
                                          <span id="$$ID$$">Höhe des Arbeitslosengeldes monatlich ca.</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="alghoehe" class="number rightalign use-size focus-mark-before" ariaLabelledby="$label-id $error-ids" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "bezugalgii") %>' data-live-stay="stay_nonval_d0e2847">
                                 <cit:conditional test="!assistants.request.isValid('bezugalgii')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="bezugalgii"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="bezugalgii" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="bezugalgii" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="bezugalgii" ariaLabelledby="$label-id $error-ids" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="bezugalgii" v="2">
                                       <span id="$$ID$$">Bezug von Arbeitslosengeld II</span>
                                    </cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2847" id="stay.nonval.d0e2847" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2847').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "bezugalgii", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.bezugalgii == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "algiileistungsstelle") %>'>
                                    <cit:conditional test="!assistants.request.isValid('algiileistungsstelle')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="algiileistungsstelle"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="algiileistungsstelle" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="algiileistungsstelle" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="algiileistungsstelle" v="2">
                                          <span id="$$ID$$">Leistungsstelle</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="algiileistungsstelle" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                    <footer><p>(z. B. Jobcenter)</p></footer>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.bezugalgii == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "algiihoehe") %>'>
                                    <cit:conditional test="!assistants.request.isValid('algiihoehe')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="algiihoehe"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="algiihoehe" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="algiihoehe" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="algiihoehe" v="2">
                                          <span id="$$ID$$">Höhe des Arbeitslosengeldes II monatlich ca.</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="algiihoehe" class="number rightalign use-size focus-mark-before" ariaLabelledby="$label-id $error-ids" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "bezugkrankengeld") %>' data-live-stay="stay_nonval_d0e2877">
                                 <cit:conditional test="!assistants.request.isValid('bezugkrankengeld')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="bezugkrankengeld"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="bezugkrankengeld" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="bezugkrankengeld" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="bezugkrankengeld" ariaLabelledby="$label-id $error-ids" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="bezugkrankengeld" v="2">
                                       <span id="$$ID$$">Krankengeld</span>
                                    </cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2877" id="stay.nonval.d0e2877" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2877').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "bezugkrankengeld", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.bezugkrankengeld == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "krankengeldleistungsstelle") %>'>
                                    <cit:conditional test="!assistants.request.isValid('krankengeldleistungsstelle')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="krankengeldleistungsstelle"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="krankengeldleistungsstelle" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="krankengeldleistungsstelle" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="krankengeldleistungsstelle" v="2">
                                          <span id="$$ID$$">Leistungsstelle</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="krankengeldleistungsstelle" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                    <footer><p>(z. B. Krankenkasse)</p></footer>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.bezugkrankengeld == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "krankengeldhoehe") %>'>
                                    <cit:conditional test="!assistants.request.isValid('krankengeldhoehe')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="krankengeldhoehe"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="krankengeldhoehe" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="krankengeldhoehe" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="krankengeldhoehe" v="2">
                                          <span id="$$ID$$">Höhe des Krankengeldes monatlich ca.</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="krankengeldhoehe" class="number rightalign use-size focus-mark-before" ariaLabelledby="$label-id $error-ids" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "bezugrente") %>' data-live-stay="stay_nonval_d0e2907">
                                 <cit:conditional test="!assistants.request.isValid('bezugrente')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="bezugrente"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="bezugrente" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="bezugrente" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="bezugrente" ariaLabelledby="$label-id $error-ids" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="bezugrente" v="2">
                                       <span id="$$ID$$">Rente</span>
                                    </cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2907" id="stay.nonval.d0e2907" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2907').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "bezugrente", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.bezugrente == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "renteleistungsstelle") %>'>
                                    <cit:conditional test="!assistants.request.isValid('renteleistungsstelle')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="renteleistungsstelle"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="renteleistungsstelle" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="renteleistungsstelle" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="renteleistungsstelle" v="2">
                                          <span id="$$ID$$">Leistungsstelle</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="renteleistungsstelle" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                    <footer><p>(z. B. Rententräger)</p></footer>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.bezugrente == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "rentehoehe") %>'>
                                    <cit:conditional test="!assistants.request.isValid('rentehoehe')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="rentehoehe"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="rentehoehe" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="rentehoehe" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="rentehoehe" v="2">
                                          <span id="$$ID$$">Höhe der Rente monatlich ca.</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="rentehoehe" class="number rightalign use-size focus-mark-before" ariaLabelledby="$label-id $error-ids" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "bezugsozialhilfe") %>' data-live-stay="stay_nonval_d0e2937">
                                 <cit:conditional test="!assistants.request.isValid('bezugsozialhilfe')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="bezugsozialhilfe"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="bezugsozialhilfe" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="bezugsozialhilfe" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="bezugsozialhilfe" ariaLabelledby="$label-id $error-ids" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="bezugsozialhilfe" v="2">
                                       <span id="$$ID$$">Sozialhilfe</span>
                                    </cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2937" id="stay.nonval.d0e2937" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2937').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "bezugsozialhilfe", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.bezugsozialhilfe == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "sozialhilfeleistungsstelle") %>'>
                                    <cit:conditional test="!assistants.request.isValid('sozialhilfeleistungsstelle')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="sozialhilfeleistungsstelle"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="sozialhilfeleistungsstelle" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="sozialhilfeleistungsstelle" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="sozialhilfeleistungsstelle" v="2">
                                          <span id="$$ID$$">Leistungsstelle</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="sozialhilfeleistungsstelle" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                    <footer><p>(z. B. Sozialamt)</p></footer>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.bezugsozialhilfe == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "sozialhilfehoehe") %>'>
                                    <cit:conditional test="!assistants.request.isValid('sozialhilfehoehe')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="sozialhilfehoehe"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="sozialhilfehoehe" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="sozialhilfehoehe" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="sozialhilfehoehe" v="2">
                                          <span id="$$ID$$">Höhe der Sozialhilfe monatlich ca.</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="sozialhilfehoehe" class="number rightalign use-size focus-mark-before" ariaLabelledby="$label-id $error-ids" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                           </section>
                           <section class="group narrow">
                              <header>
                                 <h3>Sozialversicherung</h3>
                              </header>
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "krankenkasse") %>'>
                                 <cit:conditional test="!assistants.request.isValid('krankenkasse')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="krankenkasse"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="krankenkasse" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="krankenkasse" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="krankenkasse" v="2">
                                       <span id="$$ID$$">Krankenkasse</span>
                                    </cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputText name="krankenkasse" ariaLabelledby="$label-id $error-ids"/>
                                    </div>
                                 </div>
                              </section>
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "rentenversicherungstraeger") %>'>
                                 <cit:conditional test="!assistants.request.isValid('rentenversicherungstraeger')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="rentenversicherungstraeger"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="rentenversicherungstraeger" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="rentenversicherungstraeger" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="rentenversicherungstraeger" v="2">
                                       <span id="$$ID$$">Rentenversicherungsträger</span>
                                    </cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputText name="rentenversicherungstraeger" ariaLabelledby="$label-id $error-ids"/>
                                    </div>
                                 </div>
                              </section>
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "sonstigesozialversicherung") %>'>
                                 <cit:conditional test="!assistants.request.isValid('sonstigesozialversicherung')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="sonstigesozialversicherung"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="sonstigesozialversicherung" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="sonstigesozialversicherung" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="sonstigesozialversicherung" v="2">
                                       <span id="$$ID$$">Sonstige Sozialversicherung</span>
                                    </cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputText name="sonstigesozialversicherung" ariaLabelledby="$label-id $error-ids"/>
                                    </div>
                                 </div>
                              </section>
                           </section>
                           <section class="group narrow">
                              <header>
                                 <h3>Sonstiges Einkommen</h3>
                              </header>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "einkommenausnebentaetigkeit") %>' data-live-stay="stay_nonval_d0e3006">
                                 <cit:conditional test="!assistants.request.isValid('einkommenausnebentaetigkeit')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="einkommenausnebentaetigkeit"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="einkommenausnebentaetigkeit" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="einkommenausnebentaetigkeit" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="einkommenausnebentaetigkeit" ariaLabelledby="$label-id $error-ids" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="einkommenausnebentaetigkeit" v="2">
                                       <span id="$$ID$$">Einkommen aus Nebentätigkeit</span>
                                    </cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e3006" id="stay.nonval.d0e3006" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3006').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "einkommenausnebentaetigkeit", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.einkommenausnebentaetigkeit == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "einkommennebentaetigkeithoehe") %>'>
                                    <cit:conditional test="!assistants.request.isValid('einkommennebentaetigkeithoehe')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="einkommennebentaetigkeithoehe"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="einkommennebentaetigkeithoehe" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="einkommennebentaetigkeithoehe" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="einkommennebentaetigkeithoehe" v="2">
                                          <span id="$$ID$$">Nettoeinkommen monatlich ca.</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="einkommennebentaetigkeithoehe" class="number rightalign use-size focus-mark-before" ariaLabelledby="$label-id $error-ids" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "einkommenausvermietung") %>' data-live-stay="stay_nonval_d0e3024">
                                 <cit:conditional test="!assistants.request.isValid('einkommenausvermietung')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="einkommenausvermietung"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="einkommenausvermietung" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="einkommenausvermietung" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="einkommenausvermietung" ariaLabelledby="$label-id $error-ids" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="einkommenausvermietung" v="2">
                                       <span id="$$ID$$">Einkommen aus Vermietung / Verpachtung</span>
                                    </cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e3024" id="stay.nonval.d0e3024" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3024').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "einkommenausvermietung", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.einkommenausvermietung == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "einkommenvermietunghoehe") %>'>
                                    <cit:conditional test="!assistants.request.isValid('einkommenvermietunghoehe')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="einkommenvermietunghoehe"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="einkommenvermietunghoehe" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="einkommenvermietunghoehe" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="einkommenvermietunghoehe" v="2">
                                          <span id="$$ID$$">Nettoeinkommen monatlich ca.</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="einkommenvermietunghoehe" class="number rightalign use-size focus-mark-before" ariaLabelledby="$label-id $error-ids" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "sonstigeseinkommenerlaeuterung") %>'>
                                 <cit:conditional test="!assistants.request.isValid('sonstigeseinkommenerlaeuterung')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="sonstigeseinkommenerlaeuterung"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="sonstigeseinkommenerlaeuterung" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="sonstigeseinkommenerlaeuterung" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="sonstigeseinkommenerlaeuterung" v="2">
                                       <span id="$$ID$$">Erläuterungen</span>
                                    </cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputTextarea name="sonstigeseinkommenerlaeuterung" ariaLabelledby="$label-id $error-ids" maxlength="400"/>
                                    </div>
                                    <aside>
                                       <noscript>Max. 400 Zeichen</noscript>
                                       <span id="d0e3051-counter" class="textarea-counter">Noch <span id="sonstigeseinkommenerlaeuterung_remaining">0</span>/400 Zeichen</span>
                                    </aside>
                                    <script type="text/javascript">document.getElementById('d0e3051-counter').style.display='inline';</script>
                                 </div>
                              </section>
                              <cit:inputComputed name="sonstigeeinkommensumme" value="myForm.einkommennebentaetigkeithoehe + myForm.einkommenvermietunghoehe"/>
                           </section>
                           <section class="group narrow">
                              <header>
                                 <h3>Vermögen</h3>
                              </header>
                              <section class="infobox narrow"><p>Bitte geben Sie das Vermögen an, soweit bekannt<br/><br/></p></section>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "grundbesitz") %>' data-live-stay="stay_nonval_d0e3072">
                                 <cit:conditional test="!assistants.request.isValid('grundbesitz')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="grundbesitz"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="grundbesitz" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="grundbesitz" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="grundbesitz" ariaLabelledby="$label-id $error-ids" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="grundbesitz" v="2">
                                       <span id="$$ID$$">Grundbesitz (Haus / Eigentumswohnung / unbebautes Grundstück - auch im Ausland)</span>
                                    </cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e3072" id="stay.nonval.d0e3072" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3072').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "grundbesitz", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.grundbesitz == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "grundbesitzstrasse") %>'>
                                    <cit:conditional test="!assistants.request.isValid('grundbesitzstrasse')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="grundbesitzstrasse"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="grundbesitzstrasse" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="grundbesitzstrasse" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="grundbesitzstrasse" v="2">
                                          <span id="$$ID$$">Straße</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="grundbesitzstrasse" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.grundbesitz == true">
                                 <section class="block narrow label_before width-xs" data-comments='<%= getComments(pageContext.getAttribute("form"), "grundbesitzhausnummer") %>'>
                                    <cit:conditional test="!assistants.request.isValid('grundbesitzhausnummer')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="grundbesitzhausnummer"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="grundbesitzhausnummer" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="grundbesitzhausnummer" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="grundbesitzhausnummer" v="2">
                                          <span id="$$ID$$">Hausnummer</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="grundbesitzhausnummer" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.grundbesitz == true">
                                 <section class="block narrow label_before width-xs" data-comments='<%= getComments(pageContext.getAttribute("form"), "grundbesitzpostleitzahl") %>'>
                                    <cit:conditional test="!assistants.request.isValid('grundbesitzpostleitzahl')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="grundbesitzpostleitzahl"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="grundbesitzpostleitzahl" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="grundbesitzpostleitzahl" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="grundbesitzpostleitzahl" v="2">
                                          <span id="$$ID$$">Postleitzahl</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="grundbesitzpostleitzahl" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.grundbesitz == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "grundbesitzort") %>'>
                                    <cit:conditional test="!assistants.request.isValid('grundbesitzort')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="grundbesitzort"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="grundbesitzort" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="grundbesitzort" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="grundbesitzort" v="2">
                                          <span id="$$ID$$">Ort</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="grundbesitzort" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.grundbesitz == true">
                                 <section class="block narrow" data-comments='<%= getComments(pageContext.getAttribute("form"), "grundbesitzland") %>'>
                                    <cit:conditional test="!assistants.request.isValid('grundbesitzland')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="grundbesitzland"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="grundbesitzland" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="grundbesitzland" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="grundbesitzland" v="2">
                                          <span id="$$ID$$">Land</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputSelect name="grundbesitzland" ariaLabelledby="$label-id $error-ids">
                                             <cit:option value="">--- bitte auswählen ---</cit:option>
                                             <cit:xmlOptions src="urn:xmlid:C00000009" select="/*/SimpleCodeList/Row/Value[@ColumnRef=&#34;Staatsname_kurz&#34;]" text="SimpleValue" value="SimpleValue">
                                                <cit:sort select="SimpleValue" data-type="text" order="ascending" lang="de" case-order="upper-first"/>
                                             </cit:xmlOptions>
                                          </cit:inputSelect>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "kapitallebensversicherung") %>' data-live-stay="stay_nonval_d0e3135">
                                 <cit:conditional test="!assistants.request.isValid('kapitallebensversicherung')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="kapitallebensversicherung"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="kapitallebensversicherung" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="kapitallebensversicherung" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="kapitallebensversicherung" ariaLabelledby="$label-id $error-ids" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="kapitallebensversicherung" v="2">
                                       <span id="$$ID$$">Kapitallebensversicherung</span>
                                    </cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e3135" id="stay.nonval.d0e3135" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3135').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "kapitallebensversicherung", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.kapitallebensversicherung == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "kapitallebensversicherungbei") %>'>
                                    <cit:conditional test="!assistants.request.isValid('kapitallebensversicherungbei')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="kapitallebensversicherungbei"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="kapitallebensversicherungbei" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="kapitallebensversicherungbei" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="kapitallebensversicherungbei" v="2">
                                          <span id="$$ID$$">bei</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="kapitallebensversicherungbei" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "sparguthaben") %>' data-live-stay="stay_nonval_d0e3153">
                                 <cit:conditional test="!assistants.request.isValid('sparguthaben')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="sparguthaben"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="sparguthaben" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="sparguthaben" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="sparguthaben" ariaLabelledby="$label-id $error-ids" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="sparguthaben" v="2">
                                       <span id="$$ID$$">Sparguthaben</span>
                                    </cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e3153" id="stay.nonval.d0e3153" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3153').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "sparguthaben", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.sparguthaben == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "sparguthabenbei") %>'>
                                    <cit:conditional test="!assistants.request.isValid('sparguthabenbei')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="sparguthabenbei"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="sparguthabenbei" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="sparguthabenbei" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="sparguthabenbei" v="2">
                                          <span id="$$ID$$">bei</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="sparguthabenbei" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "wertpapiere") %>' data-live-stay="stay_nonval_d0e3171">
                                 <cit:conditional test="!assistants.request.isValid('wertpapiere')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="wertpapiere"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="wertpapiere" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="wertpapiere" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="wertpapiere" ariaLabelledby="$label-id $error-ids" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="wertpapiere" v="2">
                                       <span id="$$ID$$">Wertpapiere (Aktien / Fondsanteile)</span>
                                    </cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e3171" id="stay.nonval.d0e3171" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3171').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "wertpapiere", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.wertpapiere == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "wertpapierebei") %>'>
                                    <cit:conditional test="!assistants.request.isValid('wertpapierebei')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="wertpapierebei"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="wertpapierebei" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="wertpapierebei" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="wertpapierebei" v="2">
                                          <span id="$$ID$$">bei</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="wertpapierebei" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "girokonto") %>' data-live-stay="stay_nonval_d0e3189">
                                 <cit:conditional test="!assistants.request.isValid('girokonto')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="girokonto"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="girokonto" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="girokonto" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="girokonto" ariaLabelledby="$label-id $error-ids" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="girokonto" v="2">
                                       <span id="$$ID$$">Girokonto</span>
                                    </cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e3189" id="stay.nonval.d0e3189" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3189').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "girokonto", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.girokonto === true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "girokontobei") %>'>
                                    <cit:conditional test="!assistants.request.isValid('girokontobei')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="girokontobei"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="girokontobei" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="girokontobei" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="girokontobei" v="2">
                                          <span id="$$ID$$">bei</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="girokontobei" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                    <footer><p>Name der Bank</p></footer>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.girokonto === true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "F00000106") %>'>
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
                                    <div class="label">
                                       <cit:inputLabel name="F00000106" v="2">
                                          <span id="$$ID$$"><span lang="en"><abbr title="International Bank Account Number">IBAN</abbr></span></span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="F00000106" ariaLabelledby="$label-id $error-ids" onValidate="(/^\s*$/.test(value))||(isValidIBAN(value))"/>
                                       </div>
                                    </div>
                                    <footer><p>(Bei deutschen Banken, einschließlich DE, immer 22 Stellen)</p></footer>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "pkw") %>' data-live-stay="stay_nonval_d0e3222">
                                 <cit:conditional test="!assistants.request.isValid('pkw')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="pkw"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="pkw" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="pkw" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="pkw" ariaLabelledby="$label-id $error-ids" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="pkw" v="2">
                                       <span id="$$ID$$">PKW</span>
                                    </cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e3222" id="stay.nonval.d0e3222" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3222').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "pkw", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.pkw == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "pkwmarke") %>'>
                                    <cit:conditional test="!assistants.request.isValid('pkwmarke')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="pkwmarke"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="pkwmarke" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="pkwmarke" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="pkwmarke" v="2">
                                          <span id="$$ID$$">Marke</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="pkwmarke" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.pkw == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "pkwkennzeichen") %>'>
                                    <cit:conditional test="!assistants.request.isValid('pkwkennzeichen')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="pkwkennzeichen"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="pkwkennzeichen" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="pkwkennzeichen" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="pkwkennzeichen" v="2">
                                          <span id="$$ID$$">Kennzeichen</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="pkwkennzeichen" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.pkw == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "pkwwert") %>'>
                                    <cit:conditional test="!assistants.request.isValid('pkwwert')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="pkwwert"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="pkwwert" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="pkwwert" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="pkwwert" v="2">
                                          <span id="$$ID$$">Wert ca.</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="pkwwert" class="number rightalign use-size focus-mark-before" ariaLabelledby="$label-id $error-ids" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "vermoegensonstiges") %>' data-live-stay="stay_nonval_d0e3258">
                                 <cit:conditional test="!assistants.request.isValid('vermoegensonstiges')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="vermoegensonstiges"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="vermoegensonstiges" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="vermoegensonstiges" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="vermoegensonstiges" ariaLabelledby="$label-id $error-ids" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="vermoegensonstiges" v="2">
                                       <span id="$$ID$$">Sonstiges</span>
                                    </cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e3258" id="stay.nonval.d0e3258" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3258').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "vermoegensonstiges", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.vermoegensonstiges == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vermoegensonstigeserlaeuterung") %>'>
                                    <cit:conditional test="!assistants.request.isValid('vermoegensonstigeserlaeuterung')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="vermoegensonstigeserlaeuterung"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vermoegensonstigeserlaeuterung" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vermoegensonstigeserlaeuterung" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="vermoegensonstigeserlaeuterung" v="2">
                                          <span id="$$ID$$">Erläuterungen</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputTextarea name="vermoegensonstigeserlaeuterung" ariaLabelledby="$label-id $error-ids" maxlength="400"/>
                                       </div>
                                       <aside>
                                          <noscript>Max. 400 Zeichen</noscript>
                                          <span id="d0e3267-counter" class="textarea-counter">Noch <span id="vermoegensonstigeserlaeuterung_remaining">0</span>/400 Zeichen</span>
                                       </aside>
                                       <script type="text/javascript">document.getElementById('d0e3267-counter').style.display='inline';</script>
                                    </div>
                                 </section>
                              </cit:conditional>
                           </section>
                           <section class="group narrow">
                              <header>
                                 <h3>Gesundheitliche Belastung</h3>
                              </header>
                              <section class="infobox narrow"><p>Bitte wählen Sie die zutreffenden Punkte aus<br/><br/></p></section>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "schwerbehinderung") %>' data-live-stay="stay_nonval_d0e3288">
                                 <cit:conditional test="!assistants.request.isValid('schwerbehinderung')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="schwerbehinderung"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="schwerbehinderung" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="schwerbehinderung" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="schwerbehinderung" ariaLabelledby="$label-id $error-ids" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="schwerbehinderung" v="2">
                                       <span id="$$ID$$">Schwerbehinderung</span>
                                    </cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e3288" id="stay.nonval.d0e3288" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3288').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "schwerbehinderung", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.schwerbehinderung == true">
                                 <section class="block narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "behinderungsgrad") %>'>
                                    <cit:conditional test="!assistants.request.isValid('behinderungsgrad')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="behinderungsgrad"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="behinderungsgrad" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="behinderungsgrad" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputNumber name="behinderungsgrad" class="number rightalign use-size" ariaLabelledby="$label-id $error-ids" size="15"/>
                                       </div>
                                       <cit:inputLabel name="behinderungsgrad" v="2">
                                          <span id="$$ID$$">%</span>
                                       </cit:inputLabel>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "behinderungbekannt") %>'>
                                 <cit:conditional test="!assistants.request.isValid('behinderungbekannt')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="behinderungbekannt"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="behinderungbekannt" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="behinderungbekannt" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="behinderungbekannt" ariaLabelledby="$label-id $error-ids"/>
                                    </div>
                                    <cit:inputLabel name="behinderungbekannt" v="2">
                                       <span id="$$ID$$">keine bekannt</span>
                                    </cit:inputLabel>
                                 </div>
                              </section>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "behinderungsonstiges") %>' data-live-stay="stay_nonval_d0e3315">
                                 <cit:conditional test="!assistants.request.isValid('behinderungsonstiges')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="behinderungsonstiges"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="behinderungsonstiges" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="behinderungsonstiges" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="behinderungsonstiges" ariaLabelledby="$label-id $error-ids" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="behinderungsonstiges" v="2">
                                       <span id="$$ID$$">Sonstiges (wie Art der gesundheitlichen Beeinträchtigung)</span>
                                    </cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e3315" id="stay.nonval.d0e3315" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3315').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "behinderungsonstiges", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.behinderungsonstiges == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "behinderungsonstigesausfuehrung") %>'>
                                    <cit:conditional test="!assistants.request.isValid('behinderungsonstigesausfuehrung')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="behinderungsonstigesausfuehrung"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="behinderungsonstigesausfuehrung" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="behinderungsonstigesausfuehrung" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="behinderungsonstigesausfuehrung" v="2">
                                          <span id="$$ID$$">Erläuterungen</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputTextarea name="behinderungsonstigesausfuehrung" ariaLabelledby="$label-id $error-ids" maxlength="400"/>
                                       </div>
                                       <aside>
                                          <noscript>Max. 400 Zeichen</noscript>
                                          <span id="d0e3324-counter" class="textarea-counter">Noch <span id="behinderungsonstigesausfuehrung_remaining">0</span>/400 Zeichen</span>
                                       </aside>
                                       <script type="text/javascript">document.getElementById('d0e3324-counter').style.display='inline';</script>
                                    </div>
                                 </section>
                              </cit:conditional>
                           </section>
                           <section class="block feldtabelle wide">
                              <header>
                                 <h3 id="d0e3334-table-label">Weitere Unterhaltsverpflichtungen</h3>
                                 <div id="d0e3334-table-description"><p>(<abbr title="zum Beispiel">z. B.</abbr> gegenüber anderen Kindern)</p> <div class="accessibility">Bitte füllen Sie diese Formulartabelle zeilenweise aus. Verwenden Sie die Schaltfläche "Neue Zeile(n)" am Ende der Tabelle, um Zeilen hinzuzufügen. Verwenden Sie die Aktion "Löschen" am Ende einer Zeile, um diese zu löschen.</div>
                                 </div>
                              </header>
                              <cit:table scope="weitere_unterhaltsverpflichtungen" cols="4" class="field-table" id="weitere_unterhaltsverpflichtungen" initialRowCount="0" ariaLabelledby="d0e3334-table-label" ariaDescribedby="d0e3334-table-description">
                                 <cit:thead>
                                    <div role="columnheader" class="tablecell pinned">Name</div>
                                    <div role="columnheader" class="tablecell width-xs">Vorname(n)</div>
                                    <div role="columnheader" class="tablecell">Geburtsdatum</div>
                                    <div role="columnheader" class="tablecell">Höhe des Unterhalts</div>
                                 </cit:thead>
                                 <cit:tbody>
                                    <div role="cell" class="tablecell pinned">
                                       <cit:conditional test="!assistants.request.isValid('berechtigtername')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <cit:errorText name="berechtigtername"/>
                                             </strong>
                                          </p>
                                       </cit:conditional>
                                       <cit:errorText name="berechtigtername" id="#page-strict">
                                          <p class="errorText v2" id="$$ID$$">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:errorText name="berechtigtername" id="#page-soft">
                                          <p class="errorText v2 loose" id="$$ID$$">
                                             <span class="icon-exclamation-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:inputLabel name="berechtigtername" v="2">
                                          <span id="$$ID$$">Name</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="berechtigtername" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                    <div role="cell" class="tablecell width-xs">
                                       <cit:conditional test="!assistants.request.isValid('berechtigtervorname')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <cit:errorText name="berechtigtervorname"/>
                                             </strong>
                                          </p>
                                       </cit:conditional>
                                       <cit:errorText name="berechtigtervorname" id="#page-strict">
                                          <p class="errorText v2" id="$$ID$$">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:errorText name="berechtigtervorname" id="#page-soft">
                                          <p class="errorText v2 loose" id="$$ID$$">
                                             <span class="icon-exclamation-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:inputLabel name="berechtigtervorname" v="2">
                                          <span id="$$ID$$">Vorname(n)</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="berechtigtervorname" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                    <div role="cell" class="tablecell">
                                       <cit:conditional test="!assistants.request.isValid('berechtigtergeburtsdatum')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <cit:errorText name="berechtigtergeburtsdatum"/>
                                             </strong>
                                          </p>
                                       </cit:conditional>
                                       <cit:errorText name="berechtigtergeburtsdatum" id="#page-strict">
                                          <p class="errorText v2" id="$$ID$$">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:errorText name="berechtigtergeburtsdatum" id="#page-soft">
                                          <p class="errorText v2 loose" id="$$ID$$">
                                             <span class="icon-exclamation-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:inputLabel name="berechtigtergeburtsdatum" v="2">
                                          <span id="$$ID$$">Geburtsdatum</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputDate name="berechtigtergeburtsdatum" class="tiny focus-mark-before" ariaLabelledby="$label-id $error-ids d0e3363_date_format_hint" showChooser="true"/>
                                       </div>
                                    </div>
                                    <div role="cell" class="tablecell">
                                       <cit:conditional test="!assistants.request.isValid('berechtigterunterhalt')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <cit:errorText name="berechtigterunterhalt"/>
                                             </strong>
                                          </p>
                                       </cit:conditional>
                                       <cit:errorText name="berechtigterunterhalt" id="#page-strict">
                                          <p class="errorText v2" id="$$ID$$">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:errorText name="berechtigterunterhalt" id="#page-soft">
                                          <p class="errorText v2 loose" id="$$ID$$">
                                             <span class="icon-exclamation-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:inputLabel name="berechtigterunterhalt" v="2">
                                          <span id="$$ID$$">Höhe des Unterhalts</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="berechtigterunterhalt" class="number rightalign use-size focus-mark-before" ariaLabelledby="$label-id $error-ids" size="15"/>
                                       </div>
                                    </div>
                                 </cit:tbody>
                              </cit:table>
                              <footer><p>Bitte geben Sie jeweils die Daten der/des Berechtigten an indem Sie eine neue Zeile hinzufügen.</p></footer>
                           </section>
                           <section class="group narrow">
                              <header>
                                 <h3>Sonstige Angaben</h3>
                              </header>
                              <section class="infobox narrow"><p>Bitte wählen Sie die zutreffenden Punkte aus<br/><br/></p></section>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "schulden") %>' data-live-stay="stay_nonval_d0e3396">
                                 <cit:conditional test="!assistants.request.isValid('schulden')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="schulden"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="schulden" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="schulden" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="schulden" ariaLabelledby="$label-id $error-ids" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="schulden" v="2">
                                       <span id="$$ID$$">Schulden</span>
                                    </cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e3396" id="stay.nonval.d0e3396" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3396').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "schulden", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.schulden == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "schuldenbei") %>'>
                                    <cit:conditional test="!assistants.request.isValid('schuldenbei')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="schuldenbei"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="schuldenbei" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="schuldenbei" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="schuldenbei" v="2">
                                          <span id="$$ID$$">bei</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="schuldenbei" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.schulden == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "schuldenhoehe") %>'>
                                    <cit:conditional test="!assistants.request.isValid('schuldenhoehe')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="schuldenhoehe"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="schuldenhoehe" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="schuldenhoehe" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="schuldenhoehe" v="2">
                                          <span id="$$ID$$">Höhe ca.</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="schuldenhoehe" class="number rightalign use-size focus-mark-before" ariaLabelledby="$label-id $error-ids" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "insolvenzverfahren") %>' data-live-stay="stay_nonval_d0e3423">
                                 <cit:conditional test="!assistants.request.isValid('insolvenzverfahren')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="insolvenzverfahren"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="insolvenzverfahren" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="insolvenzverfahren" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="insolvenzverfahren" ariaLabelledby="$label-id $error-ids" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="insolvenzverfahren" v="2">
                                       <span id="$$ID$$">Insolvenzverfahren eröffnet/beantragt</span>
                                    </cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e3423" id="stay.nonval.d0e3423" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3423').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "insolvenzverfahren", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.insolvenzverfahren == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "schuldnerberatung") %>'>
                                    <cit:conditional test="!assistants.request.isValid('schuldnerberatung')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="schuldnerberatung"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="schuldnerberatung" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="schuldnerberatung" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="schuldnerberatung" v="2">
                                          <span id="$$ID$$">z. B. Schuldnerberatung</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="schuldnerberatung" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "vermoegensauskunft") %>' data-live-stay="stay_nonval_d0e3441">
                                 <cit:conditional test="!assistants.request.isValid('vermoegensauskunft')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="vermoegensauskunft"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="vermoegensauskunft" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="vermoegensauskunft" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="vermoegensauskunft" ariaLabelledby="$label-id $error-ids" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="vermoegensauskunft" v="2">
                                       <span id="$$ID$$">Vermögensauskunft (früher: eidesstattliche Versicherung) wurde bereits abgegeben</span>
                                    </cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e3441" id="stay.nonval.d0e3441" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3441').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "vermoegensauskunft", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.vermoegensauskunft == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vermoegensauskunfterlaeuterung") %>'>
                                    <cit:conditional test="!assistants.request.isValid('vermoegensauskunfterlaeuterung')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="vermoegensauskunfterlaeuterung"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vermoegensauskunfterlaeuterung" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vermoegensauskunfterlaeuterung" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="vermoegensauskunfterlaeuterung" v="2">
                                          <span id="$$ID$$">Erläuterungen</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputTextarea name="vermoegensauskunfterlaeuterung" ariaLabelledby="$label-id $error-ids" maxlength="400"/>
                                       </div>
                                       <aside>
                                          <noscript>Max. 400 Zeichen</noscript>
                                          <span id="d0e3450-counter" class="textarea-counter">Noch <span id="vermoegensauskunfterlaeuterung_remaining">0</span>/400 Zeichen</span>
                                       </aside>
                                       <script type="text/javascript">document.getElementById('d0e3450-counter').style.display='inline';</script>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "keineangaben") %>' data-live-stay="stay_nonval_d0e3459">
                                 <cit:conditional test="!assistants.request.isValid('keineangaben')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="keineangaben"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="keineangaben" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="keineangaben" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="keineangaben" ariaLabelledby="$label-id $error-ids" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="keineangaben" v="2">
                                       <span id="$$ID$$">Ich kann keine Angaben machen</span>
                                    </cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e3459" id="stay.nonval.d0e3459" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3459').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "keineangaben", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.keineangaben == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "keineangabenweil") %>'>
                                    <cit:conditional test="!assistants.request.isValid('keineangabenweil')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="keineangabenweil"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="keineangabenweil" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="keineangabenweil" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="keineangabenweil" v="2">
                                          <span id="$$ID$$">weil</span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputTextarea name="keineangabenweil" ariaLabelledby="$label-id $error-ids" maxlength="400"/>
                                       </div>
                                       <aside>
                                          <noscript>Max. 400 Zeichen</noscript>
                                          <span id="d0e3468-counter" class="textarea-counter">Noch <span id="keineangabenweil_remaining">0</span>/400 Zeichen</span>
                                       </aside>
                                       <script type="text/javascript">document.getElementById('d0e3468-counter').style.display='inline';</script>
                                    </div>
                                 </section>
                              </cit:conditional>
                           </section>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
                           <h3 class="accessibility">Dialogverlauf</h3>
                           <ul class="icons"><% final boolean unvisited_d68e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d68e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                                    <a href="" class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d68e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d68e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d68e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d68e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d68e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d68e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                                    <a href="" class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d68e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d68e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d68e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d68e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d68e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='past<%= unvisited_d68e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d68e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d68e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d68e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d68e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d68e8 = !isVisited(session, "rbs_bez"); %><li class='past<%= unvisited_d68e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("rbs_bez") != null) { %><span class="item clickable" data-submit-value="resync.rbs_bez">
                                    <a href="" class="label">
                                       <span class="labeltext">Anschrift Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d68e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d68e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Anschrift Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d68e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d68e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d68e10 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='past<%= unvisited_d68e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-zum-antragsteller-zur-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-zum-antragsteller-zur-antragstellerin">
                                    <a href="" class="label">
                                       <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d68e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d68e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d68e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d68e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d68e12 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d68e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-kind-fuer-das-die-leistung-beantragt-wird">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d68e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d68e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d68e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d68e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d68e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d68e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.demnaechst-vollenden-werden">
                                    <a href="" class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d68e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d68e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d68e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d68e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d68e16 = !isVisited(session, "angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %><li class='past<%= unvisited_d68e16 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d68e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d68e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d68e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d68e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d68e18 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='past<%= unvisited_d68e18 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-1-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-1-3">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d68e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d68e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d68e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d68e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d68e20 = !isVisited(session, "angaben-zum-anderen-elternteil-2-3"); %><li class='past<%= unvisited_d68e20 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-2-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-2-3">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d68e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d68e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d68e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d68e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d68e22 = !isVisited(session, "angaben-zum-anderen-elternteil-3-3"); %><li class='present<%= unvisited_d68e22 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d68e22 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d68e22 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d68e24 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d68e24 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d68e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d68e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d68e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d68e26 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d68e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d68e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d68e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d68e28 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d68e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d68e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d68e30 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d68e30 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d68e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d68e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d68e32 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d68e32 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Nachweise</span>
                                       <span class="labelicon" title='<%= unvisited_d68e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d68e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d68e34 = !isVisited(session, "schriftformerfordernis"); %><li class='future<%= unvisited_d68e34 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Schriftformerfordernis</span>
                                       <span class="labelicon" title='<%= unvisited_d68e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d68e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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