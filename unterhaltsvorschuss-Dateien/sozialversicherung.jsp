<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("sozialversicherung"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("sozialversicherung"); %>

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
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Sozialversicherung</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow/>
      </cit:control>
   </head>
   <body id="sozialversicherung">
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
                     </span><% } %></li><% final boolean unvisited_d42e16 = !isVisited(session, "sozialversicherung"); %><li class='present<%= unvisited_d42e16 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Sozialversicherung</span>
                           <span class="labelicon" title='<%= unvisited_d42e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d42e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d42e18 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d42e18 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d42e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d42e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d42e20 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d42e20 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d42e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d42e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">Sozialversicherung</h2>
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
                           <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "krankenkasse") %>'>
                              <cit:conditional test="!assistants.request.isValid('krankenkasse')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="krankenkasse"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="krankenkasse" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="krankenkasse" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="label">
                                 <cit:inputLabel name="krankenkasse">Krankenkasse</cit:inputLabel>
                              </div>
                              <div class="formline">
                                 <div class="inputcontainer">
                                    <cit:inputText name="krankenkasse"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "rentenversicherungstraeger") %>'>
                              <cit:conditional test="!assistants.request.isValid('rentenversicherungstraeger')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="rentenversicherungstraeger"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="rentenversicherungstraeger" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="rentenversicherungstraeger" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="label">
                                 <cit:inputLabel name="rentenversicherungstraeger">Rentenversicherungsträger</cit:inputLabel>
                              </div>
                              <div class="formline">
                                 <div class="inputcontainer">
                                    <cit:inputText name="rentenversicherungstraeger"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "sonstigesozialversicherung") %>'>
                              <cit:conditional test="!assistants.request.isValid('sonstigesozialversicherung')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="sonstigesozialversicherung"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="sonstigesozialversicherung" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="sonstigesozialversicherung" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="label">
                                 <cit:inputLabel name="sonstigesozialversicherung">Sonstige Sozialversicherung</cit:inputLabel>
                              </div>
                              <div class="formline">
                                 <div class="inputcontainer">
                                    <cit:inputText name="sonstigesozialversicherung"/>
                                 </div>
                              </div>
                           </section>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
                           <h3 class="accessibility">Dialogverlauf</h3>
                           <span class="switch" title="Dialogverlauf öffnen/schließen">
                              <span class="accessibility">Dialogverlauf öffnen/schließen</span>
                           </span>
                           <ul class="icons"><% final boolean unvisited_d44e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d44e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                                    <a href="" class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d44e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d44e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d44e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d44e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d44e4 = !isVisited(session, "angaben-zum-antragsteller"); %><li class='past<%= unvisited_d44e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragsteller") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragsteller">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Antragsteller</span>
                                       <span class="labelicon" title='<%= unvisited_d44e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d44e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Antragsteller</span>
                                       <span class="labelicon" title='<%= unvisited_d44e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d44e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d44e6 = !isVisited(session, "letzter-bezirk-und-ortsteil-in-berlin"); %><li class='past<%= unvisited_d44e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("letzter-bezirk-und-ortsteil-in-berlin") != null) { %><span class="item clickable" data-submit-value="resync.letzter-bezirk-und-ortsteil-in-berlin">
                                    <a href="" class="label">
                                       <span class="labeltext">Letzter Bezirk und Ortsteil in Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d44e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d44e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Letzter Bezirk und Ortsteil in Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d44e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d44e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d44e8 = !isVisited(session, "familienstand"); %><li class='past<%= unvisited_d44e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("familienstand") != null) { %><span class="item clickable" data-submit-value="resync.familienstand">
                                    <a href="" class="label">
                                       <span class="labeltext">Familienstand</span>
                                       <span class="labelicon" title='<%= unvisited_d44e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d44e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Familienstand</span>
                                       <span class="labelicon" title='<%= unvisited_d44e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d44e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d44e10 = !isVisited(session, "angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d44e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d44e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d44e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d44e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d44e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d44e12 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='past<%= unvisited_d44e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("vormundschaft-beistandschaft-rechtsbeistand") != null) { %><span class="item clickable" data-submit-value="resync.vormundschaft-beistandschaft-rechtsbeistand">
                                    <a href="" class="label">
                                       <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d44e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d44e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d44e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d44e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d44e14 = !isVisited(session, "angaben-anderes-elternteil"); %><li class='past<%= unvisited_d44e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-anderes-elternteil") != null) { %><span class="item clickable" data-submit-value="resync.angaben-anderes-elternteil">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben anderes Elternteil</span>
                                       <span class="labelicon" title='<%= unvisited_d44e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d44e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben anderes Elternteil</span>
                                       <span class="labelicon" title='<%= unvisited_d44e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d44e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d44e16 = !isVisited(session, "sozialversicherung"); %><li class='present<%= unvisited_d44e16 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Sozialversicherung</span>
                                       <span class="labelicon" title='<%= unvisited_d44e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d44e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d44e18 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d44e18 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d44e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d44e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d44e20 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d44e20 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d44e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d44e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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