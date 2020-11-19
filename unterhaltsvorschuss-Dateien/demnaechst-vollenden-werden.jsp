<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("demnaechst-vollenden-werden"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("demnaechst-vollenden-werden"); %>

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
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow/>
         <cit:page-validation id="d0e1563-required" test="!My.empty(myForm.leistungenjobcenter)"/>
         <cit:page-validation id="d0e1578-required" test="!My.empty(myForm.kinderwohngeld)"/>
         <cit:page-validation id="d0e1593-required" test="!My.empty(myForm.erzielungbruttoeinkommen)"/>
         <cit:page-validation id="d0e1628-required" test="!(getAge(myForm.kind.geburtsdatum) &gt;= 15 || ( getAge(myForm.kind.geburtsdatum) &gt;= 14 &amp;&amp; birthdayThisMonth(myForm.kind.geburtsdatum) )) || !My.empty(myForm.schulebeendet)"/>
         <cit:page-validation id="d0e1727-required" test="!(getAge(myForm.kind.geburtsdatum) &gt;= 15 || ( getAge(myForm.kind.geburtsdatum) &gt;= 14 &amp;&amp; birthdayThisMonth(myForm.kind.geburtsdatum) )) || !(myForm.schulebeendet == true) || !My.empty(myForm.ausbildungunterkunft)"/>
         <cit:page-validation id="d0e1736-required" test="!(getAge(myForm.kind.geburtsdatum) &gt;= 15 || ( getAge(myForm.kind.geburtsdatum) &gt;= 14 &amp;&amp; birthdayThisMonth(myForm.kind.geburtsdatum) )) || !My.empty(myForm.kinderwerbstaetigkeit)"/>
         <cit:page-validation id="d0e1766-required" test="!My.empty(myForm.kindeinkuenfte)"/>
         <cit:page-validation id="d0e1781-required" test="!(myForm.kindeinkuenfte == true) || !My.empty(myForm.kindhalbwaisenrente)"/>
         <cit:page-validation id="d0e1805-required" test="!(myForm.kindeinkuenfte == true) || !My.empty(myForm.schadensersatzleistungen)"/>
         <cit:page-validation id="d0e1820-required" test="!(myForm.kindeinkuenfte == true) || !My.empty(myForm.nichtselbststaendigearbeit)"/>
         <cit:page-validation id="d0e1835-required" test="!(myForm.kindeinkuenfte == true) || !My.empty(myForm.selbststaendigearbeit)"/>
         <cit:page-validation id="d0e1850-required" test="!(myForm.kindeinkuenfte == true) || !My.empty(myForm.kapitalvermoegen)"/>
      </cit:control>
   </head>
   <body id="demnaechst-vollenden-werden">
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
               <ul class="icons"><% final boolean unvisited_d40e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d40e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                        <a href="" class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d40e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d40e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d40e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d40e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d40e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d40e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                        <a href="" class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d40e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d40e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d40e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d40e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d40e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='past<%= unvisited_d40e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d40e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d40e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d40e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d40e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d40e8 = !isVisited(session, "rbs_bez"); %><li class='past<%= unvisited_d40e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("rbs_bez") != null) { %><span class="item clickable" data-submit-value="resync.rbs_bez">
                        <a href="" class="label">
                           <span class="labeltext">Anschrift Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d40e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d40e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Anschrift Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d40e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d40e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d40e10 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='past<%= unvisited_d40e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-zum-antragsteller-zur-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-zum-antragsteller-zur-antragstellerin">
                        <a href="" class="label">
                           <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d40e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d40e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d40e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d40e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d40e12 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d40e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-kind-fuer-das-die-leistung-beantragt-wird">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d40e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d40e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d40e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d40e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d40e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='present<%= unvisited_d40e14 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d40e14 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d40e14 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d40e16 = !isVisited(session, "angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %><li class='future<%= unvisited_d40e16 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d40e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d40e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d40e18 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='future<%= unvisited_d40e18 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                           <span class="labelicon" title='<%= unvisited_d40e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d40e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d40e20 = !isVisited(session, "angaben-zum-anderen-elternteil-2-3"); %><li class='future<%= unvisited_d40e20 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                           <span class="labelicon" title='<%= unvisited_d40e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d40e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d40e22 = !isVisited(session, "angaben-zum-anderen-elternteil-3-3"); %><li class='future<%= unvisited_d40e22 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                           <span class="labelicon" title='<%= unvisited_d40e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d40e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d40e24 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d40e24 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d40e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d40e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d40e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d40e26 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d40e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d40e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d40e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d40e28 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d40e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d40e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d40e30 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d40e30 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d40e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d40e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d40e32 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d40e32 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Nachweise</span>
                           <span class="labelicon" title='<%= unvisited_d40e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d40e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d40e34 = !isVisited(session, "schriftformerfordernis"); %><li class='future<%= unvisited_d40e34 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Schriftformerfordernis</span>
                           <span class="labelicon" title='<%= unvisited_d40e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d40e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</h2>
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
                           <header class="intro"><p>zum Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in der jeweils geltenden Fassung</p></header>
                           <section class="infobox narrow">
                              <h3>Hinweis:</h3><p>Bei Beantragung werden die nachfolgenden Angaben und Nachweise für den <strong>Monat</strong> benötigt, in dem Unterhaltsvorschuss beantragt wird.<br/><br/></p></section>
                           <section class="infobox narrow"><p><strong>Vollendung des 12. Lebensjahres</strong></p><p><strong/></p><p/><p>Ab Vollendung des 12. Lebensjahres des Kindes besteht nur dann ein Anspruch auf die Unterhaltsvorschussleistung, wenn</p><p/><p/><ul class="noindent"><li>Ihr Kind keine Leistungen nach dem <abbr title="Sozialgesetzbuch">SGB</abbr> II erhält <u>oder</u></li></ul><p/><ul class="noindent"><li>für Ihr Kind durch die Unterhaltsvorschussleistung keine Leistungen nach dem <abbr title="Sozialgesetzbuch">SGB</abbr> II mehr erforderlich sind <u>oder</u></li></ul><p/><ul class="noindent"><li>der alleinerziehende Elternteil mit Ausnahme des Kindergeldes über Einkommen im Sinne des § 11 Absatz 1 Satz 1 <abbr title="Sozialgesetzbuch">SGB</abbr> II in Höhe von mindestens 600 Euro brutto monatlich verfügt.</li></ul><p>Für den Fall, dass Sie neben Ihrem Einkommen Leistungen nach dem <abbr title="Sozialgesetzbuch">SGB</abbr> II/<abbr title="Arbeitslosengeld">ALG</abbr> II beziehen, sind hierfür die entsprechenden Angaben des Jobcenters erforderlich und zuvor einzuholen, soweit diese nicht bereits einem dem Antrag beigefügten Bescheid des Jobcenters zu entnehmen sind.</p><p><strong>Zum Einkommen zählen insbesondere das Erwerbseinkommen und im Regelfall auch Sozialleistungen.</strong></p></section>
                           <section class="infobox narrow">
                              <h3>Ergänzende Angaben zum Kind</h3><p><strong>Das Kind <cit:display errorReplacement="―" expression="My.undefinedReplacement(myForm.kind.vorname)"/> 
                              <cit:display errorReplacement="―" expression="My.undefinedReplacement(myForm.kind.name)"/>, geboren am <cit:display errorReplacement="―" expression="My.undefinedReplacement(myForm.kind.geburtsdatum)"/>, hat im <cit:display errorReplacement="―" expression="My.undefinedReplacement(myForm.monat)"/></strong></p></section>
                           <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "leistungenjobcenter") %>' data-live-stay="stay_nonval_d0e1563">
                              <cit:conditional test="!assistants.request.isValid('leistungenjobcenter')">
                                 <p class="errorText v2">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <cit:errorText name="leistungenjobcenter"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="leistungenjobcenter" id="#page-strict">
                                 <p class="errorText v2" id="$$ID$$">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="leistungenjobcenter" id="#page-soft">
                                 <p class="errorText v2 loose" id="$$ID$$">
                                    <span class="icon-exclamation-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:validationMessage for="d0e1563-required">
                                 <cit:conditional test="assistants.request.isValid('leistungenjobcenter')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                    </p>
                                 </cit:conditional>
                              </cit:validationMessage>
                              <div class="label">
                                 <span class="pseudoLabel required">
                                    <span id="d0e1563_label">Leistungen vom Jobcenter nach dem <abbr title="Sozialgesetzbuch">SGB</abbr> II ("Hartz IV") beantragt/erhalten<span class="required-mark">
                                          <span aria-hidden="true">*</span>
                                          <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                       </span>
                                    </span>
                                 </span>
                              </div>
                              <div class="formline">
                                 <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e1563_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "leistungenjobcenter") %>'>
                                    <cit:choiceGroup type="boolean" name="leistungenjobcenter" required="true">
                                       <div class="choice">
                                          <cit:inputChoice value="true" immediate="true"/>
                                          <cit:inputLabel name="leistungenjobcenter.true">Ja</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="false" immediate="true"/>
                                          <cit:inputLabel name="leistungenjobcenter.false">Nein</cit:inputLabel>
                                       </div>
                                    </cit:choiceGroup>
                                 </div>
                              </div>
                              <cit:inputSubmit type="stay.nonval.d0e1563" id="stay.nonval.d0e1563" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                              <script type="text/javascript">document.getElementById('stay_nonval_d0e1563').style.display='none';</script>
                              <cit:script>_unmask(myForm, "leistungenjobcenter", "boolean");</cit:script>
                           </section>
                           <cit:conditional test="myForm.leistungenjobcenter == true">
                              <section class="infobox narrow"><p>Den Bescheid über die Leistungen vom Jobcenter für <cit:display errorReplacement="―" expression="My.undefinedReplacement(myForm.monat)"/> können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen</p></section>
                           </cit:conditional>
                           <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "kinderwohngeld") %>' data-live-stay="stay_nonval_d0e1578">
                              <cit:conditional test="!assistants.request.isValid('kinderwohngeld')">
                                 <p class="errorText v2">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <cit:errorText name="kinderwohngeld"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="kinderwohngeld" id="#page-strict">
                                 <p class="errorText v2" id="$$ID$$">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="kinderwohngeld" id="#page-soft">
                                 <p class="errorText v2 loose" id="$$ID$$">
                                    <span class="icon-exclamation-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:validationMessage for="d0e1578-required">
                                 <cit:conditional test="assistants.request.isValid('kinderwohngeld')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                    </p>
                                 </cit:conditional>
                              </cit:validationMessage>
                              <div class="label">
                                 <span class="pseudoLabel required">
                                    <span id="d0e1578_label">Kinderwohngeld beantragt/erhalten<span class="required-mark">
                                          <span aria-hidden="true">*</span>
                                          <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                       </span>
                                    </span>
                                 </span>
                              </div>
                              <div class="formline">
                                 <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e1578_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "kinderwohngeld") %>'>
                                    <cit:choiceGroup type="boolean" name="kinderwohngeld" required="true">
                                       <div class="choice">
                                          <cit:inputChoice value="true" immediate="true"/>
                                          <cit:inputLabel name="kinderwohngeld.true">Ja</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="false" immediate="true"/>
                                          <cit:inputLabel name="kinderwohngeld.false">Nein</cit:inputLabel>
                                       </div>
                                    </cit:choiceGroup>
                                 </div>
                              </div>
                              <cit:inputSubmit type="stay.nonval.d0e1578" id="stay.nonval.d0e1578" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                              <script type="text/javascript">document.getElementById('stay_nonval_d0e1578').style.display='none';</script>
                              <cit:script>_unmask(myForm, "kinderwohngeld", "boolean");</cit:script>
                           </section>
                           <cit:conditional test="myForm.kinderwohngeld == true">
                              <section class="infobox narrow"><p>Den Bescheid über die Beziehung von Kinderwohngeld können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen</p></section>
                           </cit:conditional>
                           <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "erzielungbruttoeinkommen") %>'>
                              <cit:conditional test="!assistants.request.isValid('erzielungbruttoeinkommen')">
                                 <p class="errorText v2">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <cit:errorText name="erzielungbruttoeinkommen"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="erzielungbruttoeinkommen" id="#page-strict">
                                 <p class="errorText v2" id="$$ID$$">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="erzielungbruttoeinkommen" id="#page-soft">
                                 <p class="errorText v2 loose" id="$$ID$$">
                                    <span class="icon-exclamation-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:validationMessage for="d0e1593-required">
                                 <cit:conditional test="assistants.request.isValid('erzielungbruttoeinkommen')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                    </p>
                                 </cit:conditional>
                              </cit:validationMessage>
                              <div class="label">
                                 <span class="pseudoLabel required">
                                    <span id="d0e1593_label">Der Elternteil, bei dem das Kind lebt, hat im maßgeblichen Monat Bruttoeinkommen in Höhe von mindestens 600 Euro erzielt<span class="required-mark">
                                          <span aria-hidden="true">*</span>
                                          <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                       </span>
                                    </span>
                                 </span>
                              </div>
                              <div class="formline">
                                 <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e1593_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "erzielungbruttoeinkommen") %>'>
                                    <cit:choiceGroup type="boolean" name="erzielungbruttoeinkommen" required="true">
                                       <div class="choice">
                                          <cit:inputChoice value="true"/>
                                          <cit:inputLabel name="erzielungbruttoeinkommen.true">Ja</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="false"/>
                                          <cit:inputLabel name="erzielungbruttoeinkommen.false">Nein</cit:inputLabel>
                                       </div>
                                    </cit:choiceGroup>
                                 </div>
                              </div>
                           </section>
                           <section class="infobox narrow"><p><br/><br/></p></section>
                           <cit:conditional test="getAge(myForm.kind.geburtsdatum) &gt;= 15 || ( getAge(myForm.kind.geburtsdatum) &gt;= 14 &amp;&amp; birthdayThisMonth(myForm.kind.geburtsdatum) )">
                              <section class="group narrow">
                                 <header>
                                    <h3>Zusätzliche Angaben für den Fall, dass das Kind 15, 16 oder 17 Jahre alt ist</h3>
                                 </header>
                                 <section class="infobox narrow"><p><strong>Allgemeinbildende Schulen in Berlin</strong></p><p><br/><br/> Hierzu zählen unabhängig von der Trägerschaft: Grundschulen, integrierte Sekundarschulen, Gymnasien, Schulen mit sonderpädagogischem Förderschwerpunkt (Sonderschulen), Gemeinschaftsschulen und Einrichtungen des Zweiten Bildungsweges zum nachträglichen Erwerb allgemein bildender Abschlüsse <br/><br/></p></section>
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "kindschule") %>'>
                                    <cit:conditional test="!assistants.request.isValid('kindschule')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="kindschule"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="kindschule" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="kindschule" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="kindschule" v="2">
                                          <span id="$$ID$$">Das Kind geht/ging in folgende Schule</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="kindschule" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "schulebeendet") %>' data-live-stay="stay_nonval_d0e1628">
                                    <cit:conditional test="!assistants.request.isValid('schulebeendet')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="schulebeendet"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="schulebeendet" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="schulebeendet" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:validationMessage for="d0e1628-required">
                                       <cit:conditional test="assistants.request.isValid('schulebeendet')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                          </p>
                                       </cit:conditional>
                                    </cit:validationMessage>
                                    <div class="label">
                                       <span class="pseudoLabel required">
                                          <span id="d0e1628_label">Hat das Kind die Schule beendet?<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                       </span>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e1628_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "schulebeendet") %>'>
                                          <cit:choiceGroup type="boolean" name="schulebeendet" required="true">
                                             <div class="choice">
                                                <cit:inputChoice value="true" immediate="true"/>
                                                <cit:inputLabel name="schulebeendet.true">Ja</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="false" immediate="true"/>
                                                <cit:inputLabel name="schulebeendet.false">Nein</cit:inputLabel>
                                             </div>
                                          </cit:choiceGroup>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e1628" id="stay.nonval.d0e1628" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e1628').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "schulebeendet", "boolean");</cit:script>
                                 </section>
                                 <cit:conditional test="myForm.schulebeendet == false">
                                    <section class="infobox narrow"><p><br/><br/>Die Schulbescheinigung Ihres Kindes können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen<br/><br/></p></section>
                                 </cit:conditional>
                                 <cit:conditional test="myForm.schulebeendet == false">
                                    <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "schulevoraussichtlichesende") %>'>
                                       <cit:conditional test="!assistants.request.isValid('schulevoraussichtlichesende')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <cit:errorText name="schulevoraussichtlichesende"/>
                                             </strong>
                                          </p>
                                       </cit:conditional>
                                       <cit:errorText name="schulevoraussichtlichesende" id="#page-strict">
                                          <p class="errorText v2" id="$$ID$$">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:errorText name="schulevoraussichtlichesende" id="#page-soft">
                                          <p class="errorText v2 loose" id="$$ID$$">
                                             <span class="icon-exclamation-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <div class="formline">
                                          <cit:inputLabel name="schulevoraussichtlichesende" v="2">
                                             <span id="$$ID$$">voraussichtliches Ende</span>
                                             <span class="tooltip date_format_hint_only">
                                                <a target="intelliform_help" class="icon" href='<%= response.encodeURL("help.jsp#kindueber12.schulevoraussichtlichesende") %>'>
                                                   <span class="accessibility">Hilfe öffnen</span>
                                                </a>
                                             </span>
                                          </cit:inputLabel>
                                          <div class="inputcontainer">
                                             <cit:inputDate name="schulevoraussichtlichesende" class="tiny focus-mark-before" ariaLabelledby="$label-id $error-ids d0e1643_date_format_hint" showChooser="true"/>
                                          </div>
                                          <div class="tooltip_overlay">
                                             <div class="tooltip_text" id="d0e1643_tooltip">
                                                <p class="date_format_hint" id="d0e1643_date_format_hint">Bitte geben Sie hier ein Datum im Format TT.MM.JJJJ ein.</p>
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
                                 <cit:conditional test="myForm.schulebeendet == true">
                                    <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "schulebeendetseit") %>'>
                                       <cit:conditional test="!assistants.request.isValid('schulebeendetseit')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <cit:conditional test="!My.isCustomReason('schulebeendetseit')">
                                                   <cit:errorText name="schulebeendetseit"/>
                                                </cit:conditional>
                                                <cit:conditional test="My.isCustomReason('schulebeendetseit')">
                                                   <cit:errorText name="schulebeendetseit">
                                                      <span id="$$ID$$">
                                                         <span class="accessibility">Fehler: </span>Das Datum muss in der Vergangenheit liegen</span>
                                                   </cit:errorText>
                                                </cit:conditional>
                                             </strong>
                                          </p>
                                       </cit:conditional>
                                       <cit:errorText name="schulebeendetseit" id="#page-strict">
                                          <p class="errorText v2" id="$$ID$$">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:errorText name="schulebeendetseit" id="#page-soft">
                                          <p class="errorText v2 loose" id="$$ID$$">
                                             <span class="icon-exclamation-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <div class="formline">
                                          <cit:inputLabel name="schulebeendetseit" v="2">
                                             <span id="$$ID$$">beendet seit</span>
                                             <span class="tooltip date_format_hint_only">
                                                <a target="intelliform_help" class="icon" href='<%= response.encodeURL("help.jsp#kindueber12.schulebeendetseit") %>'>
                                                   <span class="accessibility">Hilfe öffnen</span>
                                                </a>
                                             </span>
                                          </cit:inputLabel>
                                          <div class="inputcontainer">
                                             <cit:inputDate name="schulebeendetseit" class="tiny focus-mark-before" ariaLabelledby="$label-id $error-ids d0e1655_date_format_hint" showChooser="true" onValidate="(/^\s*$/.test(value))||(value &lt; new Date())" errtitle="Das Datum muss in der Vergangenheit liegen"/>
                                          </div>
                                          <div class="tooltip_overlay">
                                             <div class="tooltip_text" id="d0e1655_tooltip">
                                                <p class="date_format_hint" id="d0e1655_date_format_hint">Bitte geben Sie hier ein Datum im Format TT.MM.JJJJ ein.</p>
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
                                 <cit:conditional test="myForm.schulebeendet == true || myForm.schulebeendet == false">
                                    <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "kindabschluss") %>'>
                                       <cit:conditional test="!assistants.request.isValid('kindabschluss')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <cit:errorText name="kindabschluss"/>
                                             </strong>
                                          </p>
                                       </cit:conditional>
                                       <cit:errorText name="kindabschluss" id="#page-strict">
                                          <p class="errorText v2" id="$$ID$$">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:errorText name="kindabschluss" id="#page-soft">
                                          <p class="errorText v2 loose" id="$$ID$$">
                                             <span class="icon-exclamation-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <div class="formline">
                                          <cit:inputLabel name="kindabschluss" v="2">
                                             <span id="$$ID$$">angestrebter oder erreichter Abschluss</span>
                                          </cit:inputLabel>
                                          <div class="inputcontainer">
                                             <cit:inputText name="kindabschluss" ariaLabelledby="$label-id $error-ids"/>
                                          </div>
                                       </div>
                                    </section>
                                 </cit:conditional>
                                 <cit:conditional test="myForm.schulebeendet == true">
                                    <section class="infobox narrow">
                                       <h3>Ausbildung des Kindes</h3>
                                    </section>
                                 </cit:conditional>
                                 <cit:conditional test="myForm.schulebeendet == true">
                                    <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausbildungsbeginn") %>'>
                                       <cit:conditional test="!assistants.request.isValid('ausbildungsbeginn')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <cit:errorText name="ausbildungsbeginn"/>
                                             </strong>
                                          </p>
                                       </cit:conditional>
                                       <cit:errorText name="ausbildungsbeginn" id="#page-strict">
                                          <p class="errorText v2" id="$$ID$$">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:errorText name="ausbildungsbeginn" id="#page-soft">
                                          <p class="errorText v2 loose" id="$$ID$$">
                                             <span class="icon-exclamation-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <div class="formline">
                                          <cit:inputLabel name="ausbildungsbeginn" v="2">
                                             <span id="$$ID$$">Das Kind hat eine Ausbildung begonnen am</span>
                                             <span class="tooltip date_format_hint_only">
                                                <a target="intelliform_help" class="icon" href='<%= response.encodeURL("help.jsp#kindueber12.ausbildungsbeginn") %>'>
                                                   <span class="accessibility">Hilfe öffnen</span>
                                                </a>
                                             </span>
                                          </cit:inputLabel>
                                          <div class="inputcontainer">
                                             <cit:inputDate name="ausbildungsbeginn" class="tiny focus-mark-before" ariaLabelledby="$label-id $error-ids d0e1685_date_format_hint" showChooser="true"/>
                                          </div>
                                          <div class="tooltip_overlay">
                                             <div class="tooltip_text" id="d0e1685_tooltip">
                                                <p class="date_format_hint" id="d0e1685_date_format_hint">Bitte geben Sie hier ein Datum im Format TT.MM.JJJJ ein.</p>
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
                                 <cit:conditional test="myForm.schulebeendet == true">
                                    <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausbildungals") %>'>
                                       <cit:conditional test="!assistants.request.isValid('ausbildungals')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <cit:errorText name="ausbildungals"/>
                                             </strong>
                                          </p>
                                       </cit:conditional>
                                       <cit:errorText name="ausbildungals" id="#page-strict">
                                          <p class="errorText v2" id="$$ID$$">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:errorText name="ausbildungals" id="#page-soft">
                                          <p class="errorText v2 loose" id="$$ID$$">
                                             <span class="icon-exclamation-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <div class="formline">
                                          <cit:inputLabel name="ausbildungals" v="2">
                                             <span id="$$ID$$">als</span>
                                          </cit:inputLabel>
                                          <div class="inputcontainer">
                                             <cit:inputText name="ausbildungals" ariaLabelledby="$label-id $error-ids"/>
                                          </div>
                                       </div>
                                    </section>
                                 </cit:conditional>
                                 <cit:conditional test="myForm.schulebeendet == true">
                                    <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausbildungvoraussichtlichesende") %>'>
                                       <cit:conditional test="!assistants.request.isValid('ausbildungvoraussichtlichesende')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <cit:errorText name="ausbildungvoraussichtlichesende"/>
                                             </strong>
                                          </p>
                                       </cit:conditional>
                                       <cit:errorText name="ausbildungvoraussichtlichesende" id="#page-strict">
                                          <p class="errorText v2" id="$$ID$$">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:errorText name="ausbildungvoraussichtlichesende" id="#page-soft">
                                          <p class="errorText v2 loose" id="$$ID$$">
                                             <span class="icon-exclamation-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <div class="formline">
                                          <cit:inputLabel name="ausbildungvoraussichtlichesende" v="2">
                                             <span id="$$ID$$">voraussichtliches Ende</span>
                                             <span class="tooltip date_format_hint_only">
                                                <a target="intelliform_help" class="icon" href='<%= response.encodeURL("help.jsp#kindueber12.ausbildungvoraussichtlichesende") %>'>
                                                   <span class="accessibility">Hilfe öffnen</span>
                                                </a>
                                             </span>
                                          </cit:inputLabel>
                                          <div class="inputcontainer">
                                             <cit:inputDate name="ausbildungvoraussichtlichesende" class="tiny focus-mark-before" ariaLabelledby="$label-id $error-ids d0e1706_date_format_hint" showChooser="true"/>
                                          </div>
                                          <div class="tooltip_overlay">
                                             <div class="tooltip_text" id="d0e1706_tooltip">
                                                <p class="date_format_hint" id="d0e1706_date_format_hint">Bitte geben Sie hier ein Datum im Format TT.MM.JJJJ ein.</p>
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
                                 <cit:conditional test="myForm.schulebeendet == true">
                                    <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausbildungsverguetung") %>'>
                                       <cit:conditional test="!assistants.request.isValid('ausbildungsverguetung')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <cit:errorText name="ausbildungsverguetung"/>
                                             </strong>
                                          </p>
                                       </cit:conditional>
                                       <cit:errorText name="ausbildungsverguetung" id="#page-strict">
                                          <p class="errorText v2" id="$$ID$$">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:errorText name="ausbildungsverguetung" id="#page-soft">
                                          <p class="errorText v2 loose" id="$$ID$$">
                                             <span class="icon-exclamation-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <div class="formline">
                                          <cit:inputLabel name="ausbildungsverguetung" v="2">
                                             <span id="$$ID$$">Ausbildungsvergütung netto</span>
                                          </cit:inputLabel>
                                          <div class="inputcontainer">
                                             <cit:inputCurrency name="ausbildungsverguetung" class="number rightalign use-size focus-mark-before" ariaLabelledby="$label-id $error-ids" size="15"/>
                                          </div>
                                       </div>
                                    </section>
                                 </cit:conditional>
                                 <cit:conditional test="myForm.schulebeendet == true">
                                    <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausbildungunterkunft") %>'>
                                       <cit:conditional test="!assistants.request.isValid('ausbildungunterkunft')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <cit:errorText name="ausbildungunterkunft"/>
                                             </strong>
                                          </p>
                                       </cit:conditional>
                                       <cit:errorText name="ausbildungunterkunft" id="#page-strict">
                                          <p class="errorText v2" id="$$ID$$">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:errorText name="ausbildungunterkunft" id="#page-soft">
                                          <p class="errorText v2 loose" id="$$ID$$">
                                             <span class="icon-exclamation-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:validationMessage for="d0e1727-required">
                                          <cit:conditional test="assistants.request.isValid('ausbildungunterkunft')">
                                             <p class="errorText v2">
                                                <span class="icon-warning-sign" aria-hidden="true"/>
                                                <strong>
                                                   <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                             </p>
                                          </cit:conditional>
                                       </cit:validationMessage>
                                       <div class="label">
                                          <span class="pseudoLabel required">
                                             <span id="d0e1727_label">Das Kind hat ausbildungsbedingt eine eigene Unterkunft außerhalb des elterlichen Haushalts<span class="required-mark">
                                                   <span aria-hidden="true">*</span>
                                                   <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                                </span>
                                             </span>
                                          </span>
                                       </div>
                                       <div class="formline">
                                          <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e1727_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "ausbildungunterkunft") %>'>
                                             <cit:choiceGroup type="boolean" name="ausbildungunterkunft" required="true">
                                                <div class="choice">
                                                   <cit:inputChoice value="true"/>
                                                   <cit:inputLabel name="ausbildungunterkunft.true">Ja</cit:inputLabel>
                                                </div>
                                                <div class="choice">
                                                   <cit:inputChoice value="false"/>
                                                   <cit:inputLabel name="ausbildungunterkunft.false">Nein</cit:inputLabel>
                                                </div>
                                             </cit:choiceGroup>
                                          </div>
                                       </div>
                                    </section>
                                 </cit:conditional>
                                 <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "kinderwerbstaetigkeit") %>' data-live-stay="stay_nonval_d0e1736">
                                    <cit:conditional test="!assistants.request.isValid('kinderwerbstaetigkeit')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="kinderwerbstaetigkeit"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="kinderwerbstaetigkeit" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="kinderwerbstaetigkeit" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:validationMessage for="d0e1736-required">
                                       <cit:conditional test="assistants.request.isValid('kinderwerbstaetigkeit')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                          </p>
                                       </cit:conditional>
                                    </cit:validationMessage>
                                    <div class="label">
                                       <span class="pseudoLabel required">
                                          <span id="d0e1736_label">Das Kind hat statt einer Ausbildung eine Erwerbstätigkeit aufgenommen<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                       </span>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e1736_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "kinderwerbstaetigkeit") %>'>
                                          <cit:choiceGroup type="boolean" name="kinderwerbstaetigkeit" required="true">
                                             <div class="choice">
                                                <cit:inputChoice value="true" immediate="true"/>
                                                <cit:inputLabel name="kinderwerbstaetigkeit.true">Ja</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="false" immediate="true"/>
                                                <cit:inputLabel name="kinderwerbstaetigkeit.false">Nein</cit:inputLabel>
                                             </div>
                                          </cit:choiceGroup>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e1736" id="stay.nonval.d0e1736" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e1736').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "kinderwerbstaetigkeit", "boolean");</cit:script>
                                 </section>
                                 <cit:conditional test="myForm.kinderwerbstaetigkeit == true">
                                    <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "verguetungerwerbstaetigkeit") %>'>
                                       <cit:conditional test="!assistants.request.isValid('verguetungerwerbstaetigkeit')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <cit:errorText name="verguetungerwerbstaetigkeit"/>
                                             </strong>
                                          </p>
                                       </cit:conditional>
                                       <cit:errorText name="verguetungerwerbstaetigkeit" id="#page-strict">
                                          <p class="errorText v2" id="$$ID$$">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <cit:errorText name="verguetungerwerbstaetigkeit" id="#page-soft">
                                          <p class="errorText v2 loose" id="$$ID$$">
                                             <span class="icon-exclamation-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                          </p>
                                       </cit:errorText>
                                       <div class="formline">
                                          <cit:inputLabel name="verguetungerwerbstaetigkeit" v="2">
                                             <span id="$$ID$$">Monatliche Vergütung netto</span>
                                          </cit:inputLabel>
                                          <div class="inputcontainer">
                                             <cit:inputCurrency name="verguetungerwerbstaetigkeit" class="number rightalign use-size focus-mark-before" ariaLabelledby="$label-id $error-ids" size="15"/>
                                          </div>
                                       </div>
                                    </section>
                                 </cit:conditional>
                                 <cit:conditional test="myForm.schulebeendet == true">
                                    <section class="infobox narrow"><p><br/><br/>Den Ausbildungs- bzw. Arbeitsvertrag und entsprechende Nachweise über das erzielte Einkommen (z. B. Lohn- und Gehaltsbescheinigungen) können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen</p></section>
                                 </cit:conditional>
                              </section>
                           </cit:conditional>
                           <section class="group narrow">
                              <header>
                                 <h3>Sonstiges Einkommen des Kindes</h3>
                              </header>
                              <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "kindeinkuenfte") %>' data-live-stay="stay_nonval_d0e1766">
                                 <cit:conditional test="!assistants.request.isValid('kindeinkuenfte')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="kindeinkuenfte"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="kindeinkuenfte" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="kindeinkuenfte" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:validationMessage for="d0e1766-required">
                                    <cit:conditional test="assistants.request.isValid('kindeinkuenfte')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                       </p>
                                    </cit:conditional>
                                 </cit:validationMessage>
                                 <div class="label">
                                    <span class="pseudoLabel required">
                                       <span id="d0e1766_label">Das Kind bezieht Einkünfte<span class="required-mark">
                                             <span aria-hidden="true">*</span>
                                             <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                          </span>
                                       </span>
                                    </span>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e1766_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "kindeinkuenfte") %>'>
                                       <cit:choiceGroup type="boolean" name="kindeinkuenfte" required="true">
                                          <div class="choice">
                                             <cit:inputChoice value="true" immediate="true"/>
                                             <cit:inputLabel name="kindeinkuenfte.true">Ja</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="false" immediate="true"/>
                                             <cit:inputLabel name="kindeinkuenfte.false">Nein</cit:inputLabel>
                                          </div>
                                       </cit:choiceGroup>
                                    </div>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e1766" id="stay.nonval.d0e1766" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e1766').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "kindeinkuenfte", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.kindeinkuenfte == true">
                                 <section class="infobox narrow"><p><br/><br/><strong>Das Kind bezieht folgende Einkünfte</strong><br/><br/></p></section>
                              </cit:conditional>
                              <cit:conditional test="myForm.kindeinkuenfte == true">
                                 <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "kindhalbwaisenrente") %>' data-live-stay="stay_nonval_d0e1781">
                                    <cit:conditional test="!assistants.request.isValid('kindhalbwaisenrente')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="kindhalbwaisenrente"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="kindhalbwaisenrente" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="kindhalbwaisenrente" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:validationMessage for="d0e1781-required">
                                       <cit:conditional test="assistants.request.isValid('kindhalbwaisenrente')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                          </p>
                                       </cit:conditional>
                                    </cit:validationMessage>
                                    <div class="label">
                                       <span class="pseudoLabel required">
                                          <span id="d0e1781_label">Halbwaisenrente<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                       </span>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e1781_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "kindhalbwaisenrente") %>'>
                                          <cit:choiceGroup type="boolean" name="kindhalbwaisenrente" required="true">
                                             <div class="choice">
                                                <cit:inputChoice value="true" immediate="true"/>
                                                <cit:inputLabel name="kindhalbwaisenrente.true">Ja</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="false" immediate="true"/>
                                                <cit:inputLabel name="kindhalbwaisenrente.false">Nein</cit:inputLabel>
                                             </div>
                                          </cit:choiceGroup>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e1781" id="stay.nonval.d0e1781" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e1781').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "kindhalbwaisenrente", "boolean");</cit:script>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.kindhalbwaisenrente == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "halbwaisenrentehoehe") %>'>
                                    <cit:conditional test="!assistants.request.isValid('halbwaisenrentehoehe')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="halbwaisenrentehoehe"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="halbwaisenrentehoehe" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="halbwaisenrentehoehe" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="halbwaisenrentehoehe" v="2" required="true">
                                          <span id="$$ID$$">Halbwaisenrente in Höhe von monatlich<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="halbwaisenrentehoehe" class="number rightalign use-size focus-mark-before" ariaLabelledby="$label-id $error-ids" required="true" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.kindhalbwaisenrente == true">
                                 <section class="infobox narrow"><p><br/><br/>Den Nachweis über die Halbwaisenrente des Kindes können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen<br/><br/></p></section>
                              </cit:conditional>
                              <cit:conditional test="myForm.kindeinkuenfte == true">
                                 <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "schadensersatzleistungen") %>' data-live-stay="stay_nonval_d0e1805">
                                    <cit:conditional test="!assistants.request.isValid('schadensersatzleistungen')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="schadensersatzleistungen"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="schadensersatzleistungen" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="schadensersatzleistungen" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:validationMessage for="d0e1805-required">
                                       <cit:conditional test="assistants.request.isValid('schadensersatzleistungen')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                          </p>
                                       </cit:conditional>
                                    </cit:validationMessage>
                                    <div class="label">
                                       <span class="pseudoLabel required">
                                          <span id="d0e1805_label">Schadenersatzleistungen, die wegen des Todes des anderen Elternteils oder eines Stiefelternteils gezahlt werden<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                       </span>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e1805_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "schadensersatzleistungen") %>'>
                                          <cit:choiceGroup type="boolean" name="schadensersatzleistungen" required="true">
                                             <div class="choice">
                                                <cit:inputChoice value="true" immediate="true"/>
                                                <cit:inputLabel name="schadensersatzleistungen.true">Ja</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="false" immediate="true"/>
                                                <cit:inputLabel name="schadensersatzleistungen.false">Nein</cit:inputLabel>
                                             </div>
                                          </cit:choiceGroup>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e1805" id="stay.nonval.d0e1805" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e1805').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "schadensersatzleistungen", "boolean");</cit:script>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.schadensersatzleistungen == true">
                                 <section class="infobox narrow"><p><br/><br/>Den Nachweis über die Schadensersatzleistungen können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen<br/><br/></p></section>
                              </cit:conditional>
                              <cit:conditional test="myForm.kindeinkuenfte == true">
                                 <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "nichtselbststaendigearbeit") %>' data-live-stay="stay_nonval_d0e1820">
                                    <cit:conditional test="!assistants.request.isValid('nichtselbststaendigearbeit')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="nichtselbststaendigearbeit"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="nichtselbststaendigearbeit" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="nichtselbststaendigearbeit" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:validationMessage for="d0e1820-required">
                                       <cit:conditional test="assistants.request.isValid('nichtselbststaendigearbeit')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                          </p>
                                       </cit:conditional>
                                    </cit:validationMessage>
                                    <div class="label">
                                       <span class="pseudoLabel required">
                                          <span id="d0e1820_label">Einkünfte aus nichtselbstständiger Arbeit, Ausbildung, Freiwilligendienst<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                       </span>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e1820_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "nichtselbststaendigearbeit") %>'>
                                          <cit:choiceGroup type="boolean" name="nichtselbststaendigearbeit" required="true">
                                             <div class="choice">
                                                <cit:inputChoice value="true" immediate="true"/>
                                                <cit:inputLabel name="nichtselbststaendigearbeit.true">Ja</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="false" immediate="true"/>
                                                <cit:inputLabel name="nichtselbststaendigearbeit.false">Nein</cit:inputLabel>
                                             </div>
                                          </cit:choiceGroup>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e1820" id="stay.nonval.d0e1820" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e1820').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "nichtselbststaendigearbeit", "boolean");</cit:script>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.nichtselbststaendigearbeit == true">
                                 <section class="infobox narrow"><p><br/><br/>Den Nachweis über Einkünfte aus nichtselbstständiger Arbeit, Ausbildung, Freiwilligendienst können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen<br/><br/></p></section>
                              </cit:conditional>
                              <cit:conditional test="myForm.kindeinkuenfte == true">
                                 <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "selbststaendigearbeit") %>' data-live-stay="stay_nonval_d0e1835">
                                    <cit:conditional test="!assistants.request.isValid('selbststaendigearbeit')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="selbststaendigearbeit"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="selbststaendigearbeit" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="selbststaendigearbeit" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:validationMessage for="d0e1835-required">
                                       <cit:conditional test="assistants.request.isValid('selbststaendigearbeit')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                          </p>
                                       </cit:conditional>
                                    </cit:validationMessage>
                                    <div class="label">
                                       <span class="pseudoLabel required">
                                          <span id="d0e1835_label">Einkünfte aus Land- oder Forstwirtschaft, Gewerbebetrieb oder selbstständiger Tätigkeit<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                       </span>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e1835_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "selbststaendigearbeit") %>'>
                                          <cit:choiceGroup type="boolean" name="selbststaendigearbeit" required="true">
                                             <div class="choice">
                                                <cit:inputChoice value="true" immediate="true"/>
                                                <cit:inputLabel name="selbststaendigearbeit.true">Ja</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="false" immediate="true"/>
                                                <cit:inputLabel name="selbststaendigearbeit.false">Nein</cit:inputLabel>
                                             </div>
                                          </cit:choiceGroup>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e1835" id="stay.nonval.d0e1835" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e1835').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "selbststaendigearbeit", "boolean");</cit:script>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.selbststaendigearbeit == true">
                                 <section class="infobox narrow"><p><br/><br/>Den Nachweise über Einkünfte aus Land- oder Forstwirtschaft, Gewerbebetrieb oder selbstständiger Tätigkeit können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen<br/><br/></p></section>
                              </cit:conditional>
                              <cit:conditional test="myForm.kindeinkuenfte == true">
                                 <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "kapitalvermoegen") %>' data-live-stay="stay_nonval_d0e1850">
                                    <cit:conditional test="!assistants.request.isValid('kapitalvermoegen')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="kapitalvermoegen"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="kapitalvermoegen" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="kapitalvermoegen" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:validationMessage for="d0e1850-required">
                                       <cit:conditional test="assistants.request.isValid('kapitalvermoegen')">
                                          <p class="errorText v2">
                                             <span class="icon-warning-sign" aria-hidden="true"/>
                                             <strong>
                                                <span class="accessibility">Fehler: </span>Bitte wählen Sie einen Wert aus.</strong>
                                          </p>
                                       </cit:conditional>
                                    </cit:validationMessage>
                                    <div class="label">
                                       <span class="pseudoLabel required">
                                          <span id="d0e1850_label">Einkünfte aus Kapitalvermögen, Vermietung oder Verpachtung<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                       </span>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer choice-inline" role="group" aria-labelledby='d0e1850_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "kapitalvermoegen") %>'>
                                          <cit:choiceGroup type="boolean" name="kapitalvermoegen" required="true">
                                             <div class="choice">
                                                <cit:inputChoice value="true" immediate="true"/>
                                                <cit:inputLabel name="kapitalvermoegen.true">Ja</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="false" immediate="true"/>
                                                <cit:inputLabel name="kapitalvermoegen.false">Nein</cit:inputLabel>
                                             </div>
                                          </cit:choiceGroup>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e1850" id="stay.nonval.d0e1850" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e1850').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "kapitalvermoegen", "boolean");</cit:script>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.kapitalvermoegen == true">
                                 <section class="infobox narrow"><p><br/><br/>Den Nachweis über Einkünfte aus Kapitalvermögen, Vermietung oder Verpachtung können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen<br/><br/></p></section>
                              </cit:conditional>
                           </section>
                           <section class="infobox narrow"><p><br/><br/></p></section>
                           <section class="group narrow">
                              <header>
                                 <h3>Einkommen des Elternteils, bei dem das Kind lebt</h3>
                              </header>
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "erlernterberuf") %>'>
                                 <cit:conditional test="!assistants.request.isValid('erlernterberuf')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="erlernterberuf"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="erlernterberuf" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="erlernterberuf" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="erlernterberuf" v="2">
                                       <span id="$$ID$$">Erlernter Beruf</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputText name="erlernterberuf" ariaLabelledby="$label-id $error-ids"/>
                                    </div>
                                 </div>
                              </section>
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausgeuebtetaetigkeit") %>'>
                                 <cit:conditional test="!assistants.request.isValid('ausgeuebtetaetigkeit')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="ausgeuebtetaetigkeit"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="ausgeuebtetaetigkeit" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="ausgeuebtetaetigkeit" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="ausgeuebtetaetigkeit" v="2">
                                       <span id="$$ID$$">Derzeit ausgeübte Tätigkeit</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputText name="ausgeuebtetaetigkeit" ariaLabelledby="$label-id $error-ids"/>
                                    </div>
                                 </div>
                              </section>
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "monatlichesnettoeinkommen") %>'>
                                 <cit:conditional test="!assistants.request.isValid('monatlichesnettoeinkommen')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="monatlichesnettoeinkommen"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="monatlichesnettoeinkommen" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="monatlichesnettoeinkommen" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="monatlichesnettoeinkommen" v="2">
                                       <span id="$$ID$$">Monatliches Nettoeinkommen</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputCurrency name="monatlichesnettoeinkommen" class="number rightalign use-size focus-mark-before" ariaLabelledby="$label-id $error-ids" size="15"/>
                                    </div>
                                 </div>
                              </section>
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "steuerklasse") %>'>
                                 <cit:conditional test="!assistants.request.isValid('steuerklasse')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="steuerklasse"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="steuerklasse" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="steuerklasse" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <span class="pseudoLabel">
                                       <span id="d0e1904_label">Steuerklasse</span>
                                    </span>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer" role="group" aria-labelledby='d0e1904_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "steuerklasse") %>'>
                                       <cit:inputSelectMultiple name="steuerklasse">
                                          <cit:option value="I">I</cit:option>
                                          <cit:option value="II">II</cit:option>
                                          <cit:option value="III">III</cit:option>
                                          <cit:option value="IV">IV</cit:option>
                                          <cit:option value="IV_Faktor">IV Faktor</cit:option>
                                          <cit:option value="V">V</cit:option>
                                          <cit:option value="VI">VI</cit:option>
                                       </cit:inputSelectMultiple>
                                    </div>
                                 </div>
                              </section>
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "kinderfreibetrag") %>'>
                                 <cit:conditional test="!assistants.request.isValid('kinderfreibetrag')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="kinderfreibetrag"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="kinderfreibetrag" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="kinderfreibetrag" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="kinderfreibetrag" v="2">
                                       <span id="$$ID$$">Kinderfreibetrag</span>
                                    </cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputCurrency name="kinderfreibetrag" class="number rightalign use-size focus-mark-before" ariaLabelledby="$label-id $error-ids" size="15"/>
                                    </div>
                                 </div>
                              </section>
                           </section>
                           <section class="infobox narrow"><p><br/><br/></p></section>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
                           <h3 class="accessibility">Dialogverlauf</h3>
                           <ul class="icons"><% final boolean unvisited_d48e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d48e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                                    <a href="" class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d48e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d48e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d48e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d48e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d48e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d48e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                                    <a href="" class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d48e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d48e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d48e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d48e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d48e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='past<%= unvisited_d48e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d48e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d48e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d48e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d48e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d48e8 = !isVisited(session, "rbs_bez"); %><li class='past<%= unvisited_d48e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("rbs_bez") != null) { %><span class="item clickable" data-submit-value="resync.rbs_bez">
                                    <a href="" class="label">
                                       <span class="labeltext">Anschrift Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d48e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d48e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Anschrift Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d48e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d48e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d48e10 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='past<%= unvisited_d48e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-zum-antragsteller-zur-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-zum-antragsteller-zur-antragstellerin">
                                    <a href="" class="label">
                                       <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d48e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d48e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d48e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d48e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d48e12 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d48e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-kind-fuer-das-die-leistung-beantragt-wird">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d48e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d48e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d48e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d48e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d48e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='present<%= unvisited_d48e14 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d48e14 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d48e14 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d48e16 = !isVisited(session, "angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %><li class='future<%= unvisited_d48e16 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d48e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d48e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d48e18 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='future<%= unvisited_d48e18 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d48e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d48e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d48e20 = !isVisited(session, "angaben-zum-anderen-elternteil-2-3"); %><li class='future<%= unvisited_d48e20 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d48e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d48e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d48e22 = !isVisited(session, "angaben-zum-anderen-elternteil-3-3"); %><li class='future<%= unvisited_d48e22 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d48e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d48e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d48e24 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d48e24 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d48e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d48e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d48e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d48e26 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d48e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d48e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d48e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d48e28 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d48e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d48e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d48e30 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d48e30 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d48e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d48e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d48e32 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d48e32 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Nachweise</span>
                                       <span class="labelicon" title='<%= unvisited_d48e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d48e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d48e34 = !isVisited(session, "schriftformerfordernis"); %><li class='future<%= unvisited_d48e34 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Schriftformerfordernis</span>
                                       <span class="labelicon" title='<%= unvisited_d48e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d48e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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