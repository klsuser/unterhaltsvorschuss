<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("gegenueber_anderen_kindern"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("gegenueber_anderen_kindern"); %>

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
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - gegenüber anderen Kindern)</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow>
            <cit:edit scope="gegenueber_anderen_kindern" href="gegenueber_anderen_kindern/dialog.jsp"/>
         </cit:flow>
      </cit:control>
   </head>
   <body id="gegenueber_anderen_kindern">
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
               <ul class="icons"><% final boolean unvisited_d42e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d42e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                        <a href="" class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d42e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d42e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d42e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d42e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d42e4 = !isVisited(session, "angaben-zum-antragsteller"); %><li class='past<%= unvisited_d42e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragsteller") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragsteller">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Antragsteller</span>
                           <span class="labelicon" title='<%= unvisited_d42e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d42e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Antragsteller</span>
                           <span class="labelicon" title='<%= unvisited_d42e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d42e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d42e6 = !isVisited(session, "letzter-bezirk-und-ortsteil-in-berlin"); %><li class='past<%= unvisited_d42e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("letzter-bezirk-und-ortsteil-in-berlin") != null) { %><span class="item clickable" data-submit-value="resync.letzter-bezirk-und-ortsteil-in-berlin">
                        <a href="" class="label">
                           <span class="labeltext">Letzter Bezirk und Ortsteil in Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d42e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d42e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Letzter Bezirk und Ortsteil in Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d42e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d42e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d42e8 = !isVisited(session, "familienstand"); %><li class='past<%= unvisited_d42e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("familienstand") != null) { %><span class="item clickable" data-submit-value="resync.familienstand">
                        <a href="" class="label">
                           <span class="labeltext">Familienstand</span>
                           <span class="labelicon" title='<%= unvisited_d42e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d42e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Familienstand</span>
                           <span class="labelicon" title='<%= unvisited_d42e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d42e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d42e10 = !isVisited(session, "angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d42e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d42e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d42e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d42e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d42e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d42e12 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='past<%= unvisited_d42e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("vormundschaft-beistandschaft-rechtsbeistand") != null) { %><span class="item clickable" data-submit-value="resync.vormundschaft-beistandschaft-rechtsbeistand">
                        <a href="" class="label">
                           <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d42e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d42e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d42e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d42e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d42e14 = !isVisited(session, "angaben-anderes-elternteil"); %><li class='past<%= unvisited_d42e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-anderes-elternteil") != null) { %><span class="item clickable" data-submit-value="resync.angaben-anderes-elternteil">
                        <a href="" class="label">
                           <span class="labeltext">Angaben anderes Elternteil</span>
                           <span class="labelicon" title='<%= unvisited_d42e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d42e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben anderes Elternteil</span>
                           <span class="labelicon" title='<%= unvisited_d42e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d42e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d42e16 = !isVisited(session, "gegenueber_anderen_kindern"); %><li class='present<%= unvisited_d42e16 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">gegenüber anderen Kindern)</span>
                           <span class="labelicon" title='<%= unvisited_d42e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d42e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                     <ul class="collapsed"><% final boolean unvisited_d42e19 = false; %><li class='future<%= unvisited_d42e19 ? " unvisited" : "" %>'>
                           <span class="item">
                              <span class="label">
                                 <span class="labeltext">gegenüber anderen Kindern)</span>
                                 <span class="labelicon" title='<%= unvisited_d42e19 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                    <span class="accessibility"><%= unvisited_d42e19 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                 </span>
                              </span>
                           </span>
                        </li>
                     </ul>
                  </li><% final boolean unvisited_d42e21 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d42e21 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d42e21 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d42e21 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d42e23 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d42e23 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d42e23 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d42e23 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">gegenüber anderen Kindern)</h2>
                           <header class="intro">Von hier aus gelangen Sie zum Formularbereich "gegenüber anderen Kindern)".</header>
                           <cit:conditional test="length(myForm['gegenueber_anderen_kindern'])&gt;0">
                              <p class="hint">Folgende Einträge sind vorhanden:</p>
                           </cit:conditional>
                           <section class="block loop wide">
                              <cit:conditional test="length(myForm['gegenueber_anderen_kindern'])==0">
                                 <p class="hint">Keine Einträge vorhanden. Klicken Sie auf <em class="button-name icon-plus-sign">gegenüber anderen Kindern) hinzufügen</em>, um den ersten Eintrag hinzuzufügen:</p>
                              </cit:conditional><% int no = 0; %><% int count = (Integer) de.cit.jsp.script.ScriptContext.getSessionInstance(session).eval("length(myForm['gegenueber_anderen_kindern'])", "a *.jsp file"); %><div class="table_container">
                                 <table>
                                    <cit:conditional test="length(myForm['gegenueber_anderen_kindern'])&gt;0">
                                       <thead>
                                          <tr>
                                             <th class="t-1" scope="col" rowspan="1" colspan="1">Name</th>
                                             <th class="t-2" scope="col" rowspan="1" colspan="1">Vorname(n)</th>
                                             <th class="t-3" scope="col" rowspan="1" colspan="1">Geburtsdatum</th>
                                             <th class="t-4" scope="col" rowspan="1" colspan="1">Höhe des Unterhalts</th>
                                             <th rowspan="1" colspan="1" class="t-actions"> </th>
                                          </tr>
                                       </thead>
                                    </cit:conditional>
                                    <tbody>
                                       <cit:loop id="d0e2105" count="length(myForm['gegenueber_anderen_kindern'])" scope="gegenueber_anderen_kindern"><% ++no; %><tr class='<%= ( no % 2 == 0 ? "t-even" : "t-odd" ) + ( no == 1 ? " t-first" : "" ) + ( no == count ? " t-last" : "" ) %>'>
                                             <td class="t-1" rowspan="1" colspan="1">
                                                <cit:display expression="My.undefinedReplacement()" errorReplacement="―"/>
                                             </td>
                                             <td class="t-2" rowspan="1" colspan="1">
                                                <cit:display expression="My.undefinedReplacement()" errorReplacement="―"/>
                                             </td>
                                             <td class="t-3" rowspan="1" colspan="1">
                                                <cit:display expression="My.undefinedReplacement()" errorReplacement="―"/>
                                             </td>
                                             <td class="t-4" rowspan="1" colspan="1">
                                                <cit:display expression="My.undefinedReplacement()" errorReplacement="―"/>
                                             </td>
                                             <td class="t-actions" rowspan="1" colspan="1">
                                                <cit:loopSubmit type="edit" class="submit-edit icon-pencil" value="Bearbeiten" title="Öffnet das Unterformular zum Bearbeiten dieses Eintrags."/>
                                                <cit:loopSubmit type="delete" class="submit-delete icon-trash" value="Löschen" title="Löscht diesen Eintrag. (Kann nicht rückgängig gemacht werden.)"/>
                                             </td>
                                          </tr>
                                       </cit:loop>
                                    </tbody>
                                 </table>
                              </div>
                              <cit:loopSubmit loopref="d0e2105" type="add" class="submit-add icon-plus-sign" value="gegenüber anderen Kindern) hinzufügen" title="Öffnet das Unterformular zum Hinzufügen eines neuen Eintrags."/>
                           </section>
                           <p class="hint">Wenn Sie mit diesem Abschnitt fertig sind, klicken Sie auf <em class="button-name icon-arrow-right">Weiter</em>.</p>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
                           <h3 class="accessibility">Dialogverlauf</h3>
                           <span class="switch" title="Dialogverlauf öffnen/schließen">
                              <span class="accessibility">Dialogverlauf öffnen/schließen</span>
                           </span>
                           <ul class="icons"><% final boolean unvisited_d45e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d45e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                                    <a href="" class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d45e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d45e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d45e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d45e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d45e4 = !isVisited(session, "angaben-zum-antragsteller"); %><li class='past<%= unvisited_d45e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragsteller") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragsteller">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Antragsteller</span>
                                       <span class="labelicon" title='<%= unvisited_d45e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d45e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Antragsteller</span>
                                       <span class="labelicon" title='<%= unvisited_d45e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d45e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d45e6 = !isVisited(session, "letzter-bezirk-und-ortsteil-in-berlin"); %><li class='past<%= unvisited_d45e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("letzter-bezirk-und-ortsteil-in-berlin") != null) { %><span class="item clickable" data-submit-value="resync.letzter-bezirk-und-ortsteil-in-berlin">
                                    <a href="" class="label">
                                       <span class="labeltext">Letzter Bezirk und Ortsteil in Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d45e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d45e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Letzter Bezirk und Ortsteil in Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d45e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d45e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d45e8 = !isVisited(session, "familienstand"); %><li class='past<%= unvisited_d45e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("familienstand") != null) { %><span class="item clickable" data-submit-value="resync.familienstand">
                                    <a href="" class="label">
                                       <span class="labeltext">Familienstand</span>
                                       <span class="labelicon" title='<%= unvisited_d45e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d45e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Familienstand</span>
                                       <span class="labelicon" title='<%= unvisited_d45e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d45e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d45e10 = !isVisited(session, "angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d45e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d45e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d45e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d45e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d45e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d45e12 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='past<%= unvisited_d45e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("vormundschaft-beistandschaft-rechtsbeistand") != null) { %><span class="item clickable" data-submit-value="resync.vormundschaft-beistandschaft-rechtsbeistand">
                                    <a href="" class="label">
                                       <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d45e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d45e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d45e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d45e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d45e14 = !isVisited(session, "angaben-anderes-elternteil"); %><li class='past<%= unvisited_d45e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-anderes-elternteil") != null) { %><span class="item clickable" data-submit-value="resync.angaben-anderes-elternteil">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben anderes Elternteil</span>
                                       <span class="labelicon" title='<%= unvisited_d45e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d45e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben anderes Elternteil</span>
                                       <span class="labelicon" title='<%= unvisited_d45e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d45e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d45e16 = !isVisited(session, "gegenueber_anderen_kindern"); %><li class='present<%= unvisited_d45e16 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">gegenüber anderen Kindern)</span>
                                       <span class="labelicon" title='<%= unvisited_d45e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d45e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                                 <ul class="collapsed"><% final boolean unvisited_d45e19 = false; %><li class='future<%= unvisited_d45e19 ? " unvisited" : "" %>'>
                                       <span class="item">
                                          <span class="label">
                                             <span class="labeltext">gegenüber anderen Kindern)</span>
                                             <span class="labelicon" title='<%= unvisited_d45e19 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                                <span class="accessibility"><%= unvisited_d45e19 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                             </span>
                                          </span>
                                       </span>
                                    </li>
                                 </ul>
                              </li><% final boolean unvisited_d45e21 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d45e21 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d45e21 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d45e21 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d45e23 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d45e23 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d45e23 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d45e23 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                                 <cit:inputSubmit type="save" class="submit-save prio3 icon-save" tabindex="0" value="Unterbrechen..."/>
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