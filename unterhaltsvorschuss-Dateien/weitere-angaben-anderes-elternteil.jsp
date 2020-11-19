<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("weitere-angaben-anderes-elternteil"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("weitere-angaben-anderes-elternteil"); %>

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
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Weitere Angaben anderes Elternteil</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow>
            <cit:do action="gosub" href="angaben-zum-unterhalt.jsp" scope="unterhalt"/>
            <cit:do action="gosub" href="angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin.jsp" scope="weiterekinder"/>
            <cit:do action="goto" href="hinweise.jsp"/>
         </cit:flow>
      </cit:control>
   </head>
   <body id="weitere-angaben-anderes-elternteil">
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
               <ul class="icons"><% final boolean unvisited_d64e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d64e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                        <a href="" class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d64e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d64e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d64e4 = !isVisited(session, "antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung"); %><li class='past<%= unvisited_d64e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung") != null) { %><span class="item clickable" data-submit-value="resync.antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung">
                        <a href="" class="label">
                           <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                           <span class="labelicon" title='<%= unvisited_d64e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                           <span class="labelicon" title='<%= unvisited_d64e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d64e6 = !isVisited(session, "letzter-bezirk-und-ortsteil-in-berlin"); %><li class='past<%= unvisited_d64e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("letzter-bezirk-und-ortsteil-in-berlin") != null) { %><span class="item clickable" data-submit-value="resync.letzter-bezirk-und-ortsteil-in-berlin">
                        <a href="" class="label">
                           <span class="labeltext">Letzter Bezirk und Ortsteil in Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d64e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Letzter Bezirk und Ortsteil in Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d64e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d64e8 = !isVisited(session, "familienstand"); %><li class='past<%= unvisited_d64e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("familienstand") != null) { %><span class="item clickable" data-submit-value="resync.familienstand">
                        <a href="" class="label">
                           <span class="labeltext">Familienstand</span>
                           <span class="labelicon" title='<%= unvisited_d64e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Familienstand</span>
                           <span class="labelicon" title='<%= unvisited_d64e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d64e10 = !isVisited(session, "angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d64e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d64e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d64e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d64e12 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='past<%= unvisited_d64e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("betreuung-des-anderen-elternteiles") != null) { %><span class="item clickable" data-submit-value="resync.betreuung-des-anderen-elternteiles">
                        <a href="" class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d64e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d64e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d64e14 = !isVisited(session, "ergaenzende-angaben-fuer-kinder-die-das-zwoelfte-lebensjahr-vollendet-haben-beziehungsweise-demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d64e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("ergaenzende-angaben-fuer-kinder-die-das-zwoelfte-lebensjahr-vollendet-haben-beziehungsweise-demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.ergaenzende-angaben-fuer-kinder-die-das-zwoelfte-lebensjahr-vollendet-haben-beziehungsweise-demnaechst-vollenden-werden">
                        <a href="" class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das zwölfte Lebensjahr vollendet haben, beziehungsweise demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d64e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das zwölfte Lebensjahr vollendet haben, beziehungsweise demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d64e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d64e16 = !isVisited(session, "zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist"); %><li class='past<%= unvisited_d64e16 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist") != null) { %><span class="item clickable" data-submit-value="resync.zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist">
                        <a href="" class="label">
                           <span class="labeltext">Zusätzliche Angaben für den Fall, dass das Kind 15, 16 oder 17 Jahre alt ist</span>
                           <span class="labelicon" title='<%= unvisited_d64e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Zusätzliche Angaben für den Fall, dass das Kind 15, 16 oder 17 Jahre alt ist</span>
                           <span class="labelicon" title='<%= unvisited_d64e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d64e18 = !isVisited(session, "sonstiges-einkommen-des-kindes"); %><li class='past<%= unvisited_d64e18 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("sonstiges-einkommen-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.sonstiges-einkommen-des-kindes">
                        <a href="" class="label">
                           <span class="labeltext">Sonstiges Einkommen des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d64e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Sonstiges Einkommen des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d64e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d64e20 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='past<%= unvisited_d64e20 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("vormundschaft-beistandschaft-rechtsbeistand") != null) { %><span class="item clickable" data-submit-value="resync.vormundschaft-beistandschaft-rechtsbeistand">
                        <a href="" class="label">
                           <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d64e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d64e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d64e22 = !isVisited(session, "angaben-anderes-elternteil"); %><li class='past<%= unvisited_d64e22 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-anderes-elternteil") != null) { %><span class="item clickable" data-submit-value="resync.angaben-anderes-elternteil">
                        <a href="" class="label">
                           <span class="labeltext">Angaben anderes Elternteil</span>
                           <span class="labelicon" title='<%= unvisited_d64e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben anderes Elternteil</span>
                           <span class="labelicon" title='<%= unvisited_d64e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d64e24 = !isVisited(session, "weitere-angaben-anderes-elternteil"); %><li class='present<%= unvisited_d64e24 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben anderes Elternteil</span>
                           <span class="labelicon" title='<%= unvisited_d64e24 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d64e24 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d64e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d64e26 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d64e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d64e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d64e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d64e28 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d64e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d64e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d64e30 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d64e30 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d64e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d64e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">Weitere Angaben anderes Elternteil</h2>
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
                           <section class="group narrow">
                              <header>
                                 <h3>Angaben Ausbildung und Beruf</h3>
                              </header>
                              <section class="infobox narrow">Hinweis: Der andere Elternteil ist unterhaltsrechtlich zu überprüfen. Dafür sind die folgenden Angaben von Ihnen notwendig. Die Fragen beantworten Sie bitte nach bestem Wissen. Soweit Sie sich nicht sicher sind, kennzeichnen Sie dies ggf. durch ein Fragezeichen.</section>
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "schulabschluss") %>'>
                                 <cit:conditional test="!assistants.request.isValid('schulabschluss')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="schulabschluss"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="schulabschluss" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="schulabschluss" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="schulabschluss">Schulabschluss</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputSelect name="schulabschluss">
                                          <cit:option value="kein Schulabschluss">kein Schulabschluss</cit:option>
                                          <cit:option value="Schulart nicht bekannt">Schulart nicht bekannt</cit:option>
                                          <cit:option value="Gymnasium">Gymnasium</cit:option>
                                          <cit:option value="Realschule / POS">Realschule / POS</cit:option>
                                          <cit:option value="Gesamtschule">Gesamtschule</cit:option>
                                          <cit:option value="Hauptschule">Hauptschule</cit:option>
                                          <cit:option value="Sonderschule">Sonderschule</cit:option>
                                       </cit:inputSelect>
                                    </div>
                                 </div>
                              </section>
                              <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "berufsausbildung") %>' data-live-stay="stay_nonval_d0e1776">
                                 <cit:conditional test="!assistants.request.isValid('berufsausbildung')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="berufsausbildung"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="berufsausbildung" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="berufsausbildung" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <span class="pseudoLabel">Berufsausbildung</span>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:choiceGroup name="berufsausbildung">
                                          <div class="choice">
                                             <cit:inputChoice value="keine"/>
                                             <cit:inputLabel name="berufsausbildung.keine">keine</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="nicht bekannt"/>
                                             <cit:inputLabel name="berufsausbildung.nicht bekannt">nicht bekannt</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="Lehre"/>
                                             <cit:inputLabel name="berufsausbildung.Lehre">Lehre</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="Fachschulausbildung"/>
                                             <cit:inputLabel name="berufsausbildung.Fachschulausbildung">Fachschulausbildung</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="Studium"/>
                                             <cit:inputLabel name="berufsausbildung.Studium">Studium</cit:inputLabel>
                                          </div>
                                       </cit:choiceGroup>
                                    </div>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e1776" id="stay.nonval.d0e1776" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e1776').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "berufsausbildung", "string");</cit:script>
                              </section>
                              <cit:conditional test="myForm.berufsausbildung == &#34;Lehre&#34;">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "lehreals") %>'>
                                    <cit:conditional test="!assistants.request.isValid('lehreals')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="lehreals"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="lehreals" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="lehreals" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="lehreals">Lehre als</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="lehreals"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.berufsausbildung == &#34;Lehre&#34;">
                                 <section class="block narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "lehreabgebrochen") %>'>
                                    <cit:conditional test="!assistants.request.isValid('lehreabgebrochen')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="lehreabgebrochen"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="lehreabgebrochen" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="lehreabgebrochen" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputBoolean name="lehreabgebrochen"/>
                                       </div>
                                       <cit:inputLabel name="lehreabgebrochen">abgebrochen</cit:inputLabel>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.berufsausbildung == &#34;Fachschulausbildung&#34;">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "fachschulausbildungals") %>'>
                                    <cit:conditional test="!assistants.request.isValid('fachschulausbildungals')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="fachschulausbildungals"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="fachschulausbildungals" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="fachschulausbildungals" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="fachschulausbildungals">Fachschulausbildung als</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="fachschulausbildungals"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.berufsausbildung == &#34;Fachschulausbildung&#34;">
                                 <section class="block narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "fachschulausbildungabgebrochen") %>'>
                                    <cit:conditional test="!assistants.request.isValid('fachschulausbildungabgebrochen')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="fachschulausbildungabgebrochen"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="fachschulausbildungabgebrochen" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="fachschulausbildungabgebrochen" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputBoolean name="fachschulausbildungabgebrochen"/>
                                       </div>
                                       <cit:inputLabel name="fachschulausbildungabgebrochen">abgebrochen</cit:inputLabel>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.berufsausbildung == &#34;Studium&#34;">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "studiumals") %>'>
                                    <cit:conditional test="!assistants.request.isValid('studiumals')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="studiumals"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="studiumals" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="studiumals" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="studiumals">Studium mit Fachrichtung</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="studiumals"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.berufsausbildung == &#34;Studium&#34;">
                                 <section class="block narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "studiumabgebrochen") %>'>
                                    <cit:conditional test="!assistants.request.isValid('studiumabgebrochen')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="studiumabgebrochen"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="studiumabgebrochen" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="studiumabgebrochen" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputBoolean name="studiumabgebrochen"/>
                                       </div>
                                       <cit:inputLabel name="studiumabgebrochen">abgebrochen</cit:inputLabel>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausbildungstudiumanerkanntindtl") %>' data-live-stay="stay_nonval_d0e1854">
                                 <cit:conditional test="!assistants.request.isValid('ausbildungstudiumanerkanntindtl')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="ausbildungstudiumanerkanntindtl"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="ausbildungstudiumanerkanntindtl" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="ausbildungstudiumanerkanntindtl" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="ausbildungstudiumanerkanntindtl" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="ausbildungstudiumanerkanntindtl">Ausbildung / Studium anerkannt in Deutschland</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e1854" id="stay.nonval.d0e1854" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e1854').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "ausbildungstudiumanerkanntindtl", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.ausbildungstudiumanerkanntindtl == false">
                                 <section class="block narrow" data-comments='<%= getComments(pageContext.getAttribute("form"), "auswahlfeld") %>'>
                                    <cit:conditional test="!assistants.request.isValid('auswahlfeld')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="auswahlfeld"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="auswahlfeld" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="auswahlfeld" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="auswahlfeld">Ausbildung / Studium anerkannt in</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputSelect name="auswahlfeld">
                                             <cit:option value="--- Bitte wählen Sie aus ---">--- Bitte wählen Sie aus ---</cit:option>
                                          </cit:inputSelect>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                           </section>
                           <section class="group narrow">
                              <header>
                                 <h3>Berufliche Tätigkeiten</h3>
                              </header>
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "aktuelleberuflichetaetigkeit") %>'>
                                 <cit:conditional test="!assistants.request.isValid('aktuelleberuflichetaetigkeit')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="aktuelleberuflichetaetigkeit"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="aktuelleberuflichetaetigkeit" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="aktuelleberuflichetaetigkeit" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="aktuelleberuflichetaetigkeit">Aktuelle bzw. letzte berufliche Tätigkeit</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputText name="aktuelleberuflichetaetigkeit"/>
                                    </div>
                                 </div>
                              </section>
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "beruflichetaetigkeitseit") %>'>
                                 <cit:conditional test="!assistants.request.isValid('beruflichetaetigkeitseit')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="beruflichetaetigkeitseit"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="beruflichetaetigkeitseit" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="beruflichetaetigkeitseit" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="beruflichetaetigkeitseit">seit / von</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputDate name="beruflichetaetigkeitseit" class="tiny focus-mark-before" showChooser="true"/>
                                    </div>
                                 </div>
                              </section>
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "beruflichetaetigkeitbis") %>'>
                                 <cit:conditional test="!assistants.request.isValid('beruflichetaetigkeitbis')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="beruflichetaetigkeitbis"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="beruflichetaetigkeitbis" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="beruflichetaetigkeitbis" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="beruflichetaetigkeitbis">bis</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputDate name="beruflichetaetigkeitbis" class="tiny focus-mark-before" showChooser="true"/>
                                    </div>
                                 </div>
                              </section>
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "arbeitgeber") %>'>
                                 <cit:conditional test="!assistants.request.isValid('arbeitgeber')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="arbeitgeber"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="arbeitgeber" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="arbeitgeber" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="arbeitgeber">Arbeitgeber</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputText name="arbeitgeber"/>
                                    </div>
                                 </div>
                              </section>
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "aktuellesnettoeinkommen") %>'>
                                 <cit:conditional test="!assistants.request.isValid('aktuellesnettoeinkommen')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="aktuellesnettoeinkommen"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="aktuellesnettoeinkommen" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="aktuellesnettoeinkommen" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="aktuellesnettoeinkommen">Aktuelles bzw. zuletzt bezogenes Nettoeinkommen monatlich ca.</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputCurrency name="aktuellesnettoeinkommen" class="number rightalign use-size focus-mark-before" size="15"/>
                                    </div>
                                 </div>
                              </section>
                              <section class="infobox narrow">Die folgenden Felder bitte nur ausfüllen, wenn die Tätigkeit beendet wurde.</section>
                              <section class="block narrow" data-comments='<%= getComments(pageContext.getAttribute("form"), "beendigungaufgrund") %>'>
                                 <cit:conditional test="!assistants.request.isValid('beendigungaufgrund')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="beendigungaufgrund"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="beendigungaufgrund" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="beendigungaufgrund" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="beendigungaufgrund">Beendigung aufgrund</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputSelect name="beendigungaufgrund">
                                          <cit:option value="--- Bitte wählen Sie aus ---">--- Bitte wählen Sie aus ---</cit:option>
                                       </cit:inputSelect>
                                    </div>
                                 </div>
                              </section>
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "beendigunggruende") %>'>
                                 <cit:conditional test="!assistants.request.isValid('beendigunggruende')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="beendigunggruende"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="beendigunggruende" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="beendigunggruende" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="beendigunggruende">Gründe für die Beendigung (z. B. Betriebsaufgabe oder Betriebsverkleinerung)</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputTextarea name="beendigunggruende"/>
                                    </div>
                                 </div>
                              </section>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "arbeitslos") %>' data-live-stay="stay_nonval_d0e1953">
                                 <cit:conditional test="!assistants.request.isValid('arbeitslos')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="arbeitslos"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="arbeitslos" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="arbeitslos" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="arbeitslos" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="arbeitslos">arbeitslos</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e1953" id="stay.nonval.d0e1953" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e1953').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "arbeitslos", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.arbeitslos == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "arbeitslosseit") %>'>
                                    <cit:conditional test="!assistants.request.isValid('arbeitslosseit')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="arbeitslosseit"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="arbeitslosseit" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="arbeitslosseit" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="arbeitslosseit">seit</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputDate name="arbeitslosseit" class="tiny focus-mark-before" showChooser="true"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "arbeitsunfaehigerkrankt") %>' data-live-stay="stay_nonval_d0e1971">
                                 <cit:conditional test="!assistants.request.isValid('arbeitsunfaehigerkrankt')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="arbeitsunfaehigerkrankt"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="arbeitsunfaehigerkrankt" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="arbeitsunfaehigerkrankt" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="arbeitsunfaehigerkrankt" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="arbeitsunfaehigerkrankt">arbeitsunfähig erkrankt</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e1971" id="stay.nonval.d0e1971" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e1971').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "arbeitsunfaehigerkrankt", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.arbeitsunfaehigerkrankt == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "arbeitsunfaehigerkranktseit") %>'>
                                    <cit:conditional test="!assistants.request.isValid('arbeitsunfaehigerkranktseit')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="arbeitsunfaehigerkranktseit"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="arbeitsunfaehigerkranktseit" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="arbeitsunfaehigerkranktseit" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="arbeitsunfaehigerkranktseit">seit</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputDate name="arbeitsunfaehigerkranktseit" class="tiny focus-mark-before" showChooser="true"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "erwerbsunfaehig") %>' data-live-stay="stay_nonval_d0e1989">
                                 <cit:conditional test="!assistants.request.isValid('erwerbsunfaehig')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="erwerbsunfaehig"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="erwerbsunfaehig" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="erwerbsunfaehig" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="erwerbsunfaehig" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="erwerbsunfaehig">erwerbsunfähig</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e1989" id="stay.nonval.d0e1989" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e1989').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "erwerbsunfaehig", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.erwerbsunfaehig == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "erwerbsunfaehigseit") %>'>
                                    <cit:conditional test="!assistants.request.isValid('erwerbsunfaehigseit')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="erwerbsunfaehigseit"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="erwerbsunfaehigseit" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="erwerbsunfaehigseit" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="erwerbsunfaehigseit">seit</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputDate name="erwerbsunfaehigseit" class="tiny focus-mark-before" showChooser="true"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                           </section>
                           <section class="group narrow">
                              <header>
                                 <h3>Bezüge</h3>
                              </header>
                              <section class="infobox narrow">Bitte geben Sie die Bezüge an</section>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "bezugalg") %>' data-live-stay="stay_nonval_d0e2019">
                                 <cit:conditional test="!assistants.request.isValid('bezugalg')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="bezugalg"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="bezugalg" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="bezugalg" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="bezugalg" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="bezugalg">Bezug von ALG</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2019" id="stay.nonval.d0e2019" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2019').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "bezugalg", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.bezugalg == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "algleistungsstelle") %>'>
                                    <cit:conditional test="!assistants.request.isValid('algleistungsstelle')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="algleistungsstelle"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="algleistungsstelle" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="algleistungsstelle" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="algleistungsstelle">Leistungsstelle</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="algleistungsstelle"/>
                                       </div>
                                    </div>
                                    <footer>(z. B. Jobcenter, Rententräger)</footer>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.bezugalg == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "alghoehe") %>'>
                                    <cit:conditional test="!assistants.request.isValid('alghoehe')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="alghoehe"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="alghoehe" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="alghoehe" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="alghoehe">Höhe des Arbeitslosengeldes monatlich ca.</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="alghoehe" class="number rightalign use-size focus-mark-before" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "bezugalgii") %>' data-live-stay="stay_nonval_d0e2049">
                                 <cit:conditional test="!assistants.request.isValid('bezugalgii')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="bezugalgii"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="bezugalgii" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="bezugalgii" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="bezugalgii" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="bezugalgii">Bezug ALG II</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2049" id="stay.nonval.d0e2049" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2049').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "bezugalgii", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.bezugalgii == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "algiileistungsstelle") %>'>
                                    <cit:conditional test="!assistants.request.isValid('algiileistungsstelle')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="algiileistungsstelle"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="algiileistungsstelle" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="algiileistungsstelle" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="algiileistungsstelle">Leistungsstelle</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="algiileistungsstelle"/>
                                       </div>
                                    </div>
                                    <footer>(z. B. Jobcenter, Rententräger)</footer>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.bezugalgii == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "algiihoehe") %>'>
                                    <cit:conditional test="!assistants.request.isValid('algiihoehe')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="algiihoehe"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="algiihoehe" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="algiihoehe" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="algiihoehe">Höhe des Arbeitslosengeldes II monatlich ca.</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="algiihoehe" class="number rightalign use-size focus-mark-before" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "bezugkrankengeld") %>' data-live-stay="stay_nonval_d0e2079">
                                 <cit:conditional test="!assistants.request.isValid('bezugkrankengeld')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="bezugkrankengeld"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="bezugkrankengeld" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="bezugkrankengeld" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="bezugkrankengeld" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="bezugkrankengeld">Krankengeld</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2079" id="stay.nonval.d0e2079" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2079').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "bezugkrankengeld", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.bezugkrankengeld == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "krankengeldleistungsstelle") %>'>
                                    <cit:conditional test="!assistants.request.isValid('krankengeldleistungsstelle')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="krankengeldleistungsstelle"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="krankengeldleistungsstelle" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="krankengeldleistungsstelle" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="krankengeldleistungsstelle">Leistungsstelle</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="krankengeldleistungsstelle"/>
                                       </div>
                                    </div>
                                    <footer>(z. B. Jobcenter, Rententräger)</footer>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.bezugkrankengeld == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "krankengeldhoehe") %>'>
                                    <cit:conditional test="!assistants.request.isValid('krankengeldhoehe')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="krankengeldhoehe"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="krankengeldhoehe" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="krankengeldhoehe" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="krankengeldhoehe">Höhe des Krankengeldes monatlich ca.</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="krankengeldhoehe" class="number rightalign use-size focus-mark-before" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "bezugrente") %>' data-live-stay="stay_nonval_d0e2109">
                                 <cit:conditional test="!assistants.request.isValid('bezugrente')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="bezugrente"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="bezugrente" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="bezugrente" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="bezugrente" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="bezugrente">Rente</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2109" id="stay.nonval.d0e2109" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2109').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "bezugrente", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.bezugrente == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "renteleistungsstelle") %>'>
                                    <cit:conditional test="!assistants.request.isValid('renteleistungsstelle')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="renteleistungsstelle"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="renteleistungsstelle" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="renteleistungsstelle" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="renteleistungsstelle">Leistungsstelle</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="renteleistungsstelle"/>
                                       </div>
                                    </div>
                                    <footer>(z. B. Jobcenter, Rententräger)</footer>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.bezugrente == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "rentehoehe") %>'>
                                    <cit:conditional test="!assistants.request.isValid('rentehoehe')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="rentehoehe"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="rentehoehe" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="rentehoehe" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="rentehoehe">Höhe der Rente monatlich ca.</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="rentehoehe" class="number rightalign use-size focus-mark-before" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "bezugsozialhilfe") %>' data-live-stay="stay_nonval_d0e2139">
                                 <cit:conditional test="!assistants.request.isValid('bezugsozialhilfe')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="bezugsozialhilfe"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="bezugsozialhilfe" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="bezugsozialhilfe" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="bezugsozialhilfe" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="bezugsozialhilfe">Sozialhilfe</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2139" id="stay.nonval.d0e2139" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2139').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "bezugsozialhilfe", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.bezugsozialhilfe == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "sozialhilfeleistungsstelle") %>'>
                                    <cit:conditional test="!assistants.request.isValid('sozialhilfeleistungsstelle')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="sozialhilfeleistungsstelle"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="sozialhilfeleistungsstelle" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="sozialhilfeleistungsstelle" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="sozialhilfeleistungsstelle">Leistungsstelle</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="sozialhilfeleistungsstelle"/>
                                       </div>
                                    </div>
                                    <footer>(z. B. Jobcenter, Rententräger)</footer>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.bezugsozialhilfe == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "sozialhilfehoehe") %>'>
                                    <cit:conditional test="!assistants.request.isValid('sozialhilfehoehe')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="sozialhilfehoehe"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="sozialhilfehoehe" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="sozialhilfehoehe" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="sozialhilfehoehe">Höhe der Sozialhilfe monatlich ca.</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="sozialhilfehoehe" class="number rightalign use-size focus-mark-before" size="15"/>
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
                           </section>
                           <section class="group narrow">
                              <header>
                                 <h3>Sonstiges Einkommen</h3>
                              </header>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "einkommenausnebentaetigkeit") %>' data-live-stay="stay_nonval_d0e2208">
                                 <cit:conditional test="!assistants.request.isValid('einkommenausnebentaetigkeit')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="einkommenausnebentaetigkeit"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="einkommenausnebentaetigkeit" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="einkommenausnebentaetigkeit" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="einkommenausnebentaetigkeit" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="einkommenausnebentaetigkeit">Einkommen aus Nebentätigkeit</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2208" id="stay.nonval.d0e2208" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2208').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "einkommenausnebentaetigkeit", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.einkommenausnebentaetigkeit == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "einkommennebentaetigkeithoehe") %>'>
                                    <cit:conditional test="!assistants.request.isValid('einkommennebentaetigkeithoehe')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="einkommennebentaetigkeithoehe"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="einkommennebentaetigkeithoehe" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="einkommennebentaetigkeithoehe" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="einkommennebentaetigkeithoehe">Nettoeikommen monatlich ca.</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="einkommennebentaetigkeithoehe" class="number rightalign use-size focus-mark-before" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "einkommenausvermietung") %>' data-live-stay="stay_nonval_d0e2226">
                                 <cit:conditional test="!assistants.request.isValid('einkommenausvermietung')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="einkommenausvermietung"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="einkommenausvermietung" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="einkommenausvermietung" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="einkommenausvermietung" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="einkommenausvermietung">Einkommen aus Vermietung / Verpachtung</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2226" id="stay.nonval.d0e2226" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2226').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "einkommenausvermietung", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.einkommenausvermietung == true">
                                 <section class="block narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "einkommenvermietunghoehe") %>'>
                                    <cit:conditional test="!assistants.request.isValid('einkommenvermietunghoehe')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="einkommenvermietunghoehe"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="einkommenvermietunghoehe" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="einkommenvermietunghoehe" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="einkommenvermietunghoehe" class="number rightalign use-size focus-mark-before" size="15"/>
                                       </div>
                                       <cit:inputLabel name="einkommenvermietunghoehe">Nettoeinkommen monatlich ca.</cit:inputLabel>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "sonstigeseinkommenerlaeuterung") %>'>
                                 <cit:conditional test="!assistants.request.isValid('sonstigeseinkommenerlaeuterung')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="sonstigeseinkommenerlaeuterung"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="sonstigeseinkommenerlaeuterung" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="sonstigeseinkommenerlaeuterung" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="sonstigeseinkommenerlaeuterung">Erläuterungen</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputTextarea name="sonstigeseinkommenerlaeuterung"/>
                                    </div>
                                 </div>
                              </section>
                              <cit:inputComputed name="sonstigeeinkommensumme" value="myForm.einkommennebentaetigkeithoehe + myForm.einkommenvermietunghoehe"/>
                           </section>
                           <section class="group narrow">
                              <header>
                                 <h3>Vermögen</h3>
                              </header>
                              <section class="infobox narrow">Bitte geben Sie das Vermögen an, soweit bekannt:<p/></section>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "grundbesitz") %>' data-live-stay="stay_nonval_d0e2274">
                                 <cit:conditional test="!assistants.request.isValid('grundbesitz')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="grundbesitz"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="grundbesitz" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="grundbesitz" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="grundbesitz" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="grundbesitz">Grundbesitz (Haus / Eigentumswohnung / unbebautes Grundstück - auch im Ausland)</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2274" id="stay.nonval.d0e2274" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2274').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "grundbesitz", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.grundbesitz == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "grundbesitzstrasse") %>'>
                                    <cit:conditional test="!assistants.request.isValid('grundbesitzstrasse')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="grundbesitzstrasse"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="grundbesitzstrasse" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="grundbesitzstrasse" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="grundbesitzstrasse">Straße</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="grundbesitzstrasse"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.grundbesitz == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "grundbesitzhausnummer") %>'>
                                    <cit:conditional test="!assistants.request.isValid('grundbesitzhausnummer')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="grundbesitzhausnummer"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="grundbesitzhausnummer" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="grundbesitzhausnummer" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="grundbesitzhausnummer">Hausnummer</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputNumber name="grundbesitzhausnummer" class="number rightalign use-size" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.grundbesitz == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "grundbesitzpostleitzahl") %>'>
                                    <cit:conditional test="!assistants.request.isValid('grundbesitzpostleitzahl')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="grundbesitzpostleitzahl"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="grundbesitzpostleitzahl" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="grundbesitzpostleitzahl" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="grundbesitzpostleitzahl">Postleitzahl</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputNumber name="grundbesitzpostleitzahl" class="number rightalign use-size" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.grundbesitz == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "grundbesitzort") %>'>
                                    <cit:conditional test="!assistants.request.isValid('grundbesitzort')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="grundbesitzort"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="grundbesitzort" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="grundbesitzort" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="grundbesitzort">Ort</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="grundbesitzort"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.grundbesitz == true">
                                 <section class="block narrow" data-comments='<%= getComments(pageContext.getAttribute("form"), "grundbesitzland") %>'>
                                    <cit:conditional test="!assistants.request.isValid('grundbesitzland')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="grundbesitzland"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="grundbesitzland" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="grundbesitzland" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="grundbesitzland">Land</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputSelect name="grundbesitzland">
                                             <cit:option value="Deutschland">Deutschland</cit:option>
                                          </cit:inputSelect>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "kapitallebensversicherung") %>' data-live-stay="stay_nonval_d0e2331">
                                 <cit:conditional test="!assistants.request.isValid('kapitallebensversicherung')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="kapitallebensversicherung"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="kapitallebensversicherung" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="kapitallebensversicherung" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="kapitallebensversicherung" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="kapitallebensversicherung">Kapitallebensversicherung</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2331" id="stay.nonval.d0e2331" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2331').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "kapitallebensversicherung", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.kapitallebensversicherung == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "kapitallebensversicherungbei") %>'>
                                    <cit:conditional test="!assistants.request.isValid('kapitallebensversicherungbei')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="kapitallebensversicherungbei"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="kapitallebensversicherungbei" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="kapitallebensversicherungbei" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="kapitallebensversicherungbei">bei</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="kapitallebensversicherungbei"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "sparguthaben") %>' data-live-stay="stay_nonval_d0e2349">
                                 <cit:conditional test="!assistants.request.isValid('sparguthaben')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="sparguthaben"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="sparguthaben" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="sparguthaben" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="sparguthaben" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="sparguthaben">Sparguthaben</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2349" id="stay.nonval.d0e2349" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2349').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "sparguthaben", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.sparguthaben == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "sparguthabenbei") %>'>
                                    <cit:conditional test="!assistants.request.isValid('sparguthabenbei')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="sparguthabenbei"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="sparguthabenbei" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="sparguthabenbei" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="sparguthabenbei">bei</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="sparguthabenbei"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "wertpapiere") %>' data-live-stay="stay_nonval_d0e2367">
                                 <cit:conditional test="!assistants.request.isValid('wertpapiere')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="wertpapiere"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="wertpapiere" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="wertpapiere" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="wertpapiere" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="wertpapiere">Wertpapiere (Aktien / Fondsanteile)</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2367" id="stay.nonval.d0e2367" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2367').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "wertpapiere", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.wertpapiere == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "wertpapierebei") %>'>
                                    <cit:conditional test="!assistants.request.isValid('wertpapierebei')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="wertpapierebei"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="wertpapierebei" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="wertpapierebei" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="wertpapierebei">bei</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="wertpapierebei"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "girokonto") %>' data-live-stay="stay_nonval_d0e2385">
                                 <cit:conditional test="!assistants.request.isValid('girokonto')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="girokonto"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="girokonto" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="girokonto" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="girokonto" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="girokonto">Girokonto</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2385" id="stay.nonval.d0e2385" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2385').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "girokonto", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.girokonto === true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "girokontobei") %>'>
                                    <cit:conditional test="!assistants.request.isValid('girokontobei')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="girokontobei"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="girokontobei" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="girokontobei" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="girokontobei">bei</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="girokontobei"/>
                                       </div>
                                    </div>
                                    <footer>Name der Bank</footer>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.girokonto === true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "F00000106") %>'>
                                    <cit:conditional test="!assistants.request.isValid('F00000106')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="F00000106"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="F00000106" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="F00000106" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="F00000106"><span lang="en"><abbr title="International Bank Account Number">IBAN</abbr></span></cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="F00000106" onValidate="(/^\s*$/.test(value))||(isValidIBAN(value))"/>
                                       </div>
                                    </div>
                                    <footer>(bei deutschen Banken einschließlich DE immer 22 Stellen)</footer>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.girokonto === true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "F00000107") %>'>
                                    <cit:conditional test="!assistants.request.isValid('F00000107')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="F00000107"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="F00000107" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="F00000107" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="F00000107"><span><abbr title="Bank Identifier Code">BIC</abbr></span></cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="F00000107"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "pkw") %>' data-live-stay="stay_nonval_d0e2427">
                                 <cit:conditional test="!assistants.request.isValid('pkw')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="pkw"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="pkw" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="pkw" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="pkw" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="pkw">PKW</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2427" id="stay.nonval.d0e2427" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2427').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "pkw", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.pkw == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "pkwmarke") %>'>
                                    <cit:conditional test="!assistants.request.isValid('pkwmarke')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="pkwmarke"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="pkwmarke" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="pkwmarke" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="pkwmarke">Marke</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="pkwmarke"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.pkw == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "pkwkennzeichen") %>'>
                                    <cit:conditional test="!assistants.request.isValid('pkwkennzeichen')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="pkwkennzeichen"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="pkwkennzeichen" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="pkwkennzeichen" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="pkwkennzeichen">Kennzeichen</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="pkwkennzeichen"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.pkw == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "pkwwert") %>'>
                                    <cit:conditional test="!assistants.request.isValid('pkwwert')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="pkwwert"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="pkwwert" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="pkwwert" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="pkwwert">Wert ca.</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="pkwwert" class="number rightalign use-size focus-mark-before" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "vermoegensonstiges") %>' data-live-stay="stay_nonval_d0e2463">
                                 <cit:conditional test="!assistants.request.isValid('vermoegensonstiges')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="vermoegensonstiges"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="vermoegensonstiges" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="vermoegensonstiges" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="vermoegensonstiges" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="vermoegensonstiges">Sonstiges</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2463" id="stay.nonval.d0e2463" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2463').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "vermoegensonstiges", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.vermoegensonstiges == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vermoegensonstigeserlaeuterung") %>'>
                                    <cit:conditional test="!assistants.request.isValid('vermoegensonstigeserlaeuterung')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="vermoegensonstigeserlaeuterung"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vermoegensonstigeserlaeuterung" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vermoegensonstigeserlaeuterung" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="vermoegensonstigeserlaeuterung">Erläuterungen</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputTextarea name="vermoegensonstigeserlaeuterung"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                           </section>
                           <section class="group narrow">
                              <header>
                                 <h3>Gesundheitliche Belastung</h3>
                              </header>
                              <section class="infobox narrow">Bitte wählen Sie die zutreffenden Punkte aus:</section>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "schwerbehinderung") %>' data-live-stay="stay_nonval_d0e2493">
                                 <cit:conditional test="!assistants.request.isValid('schwerbehinderung')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="schwerbehinderung"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="schwerbehinderung" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="schwerbehinderung" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="schwerbehinderung" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="schwerbehinderung">Schwerbehinderung</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2493" id="stay.nonval.d0e2493" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2493').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "schwerbehinderung", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.schwerbehinderung == true">
                                 <section class="block narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "behinderungsgrad") %>'>
                                    <cit:conditional test="!assistants.request.isValid('behinderungsgrad')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="behinderungsgrad"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="behinderungsgrad" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="behinderungsgrad" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputNumber name="behinderungsgrad" class="number rightalign use-size" size="15"/>
                                       </div>
                                       <cit:inputLabel name="behinderungsgrad">%</cit:inputLabel>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "behinderungbekannt") %>'>
                                 <cit:conditional test="!assistants.request.isValid('behinderungbekannt')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="behinderungbekannt"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="behinderungbekannt" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="behinderungbekannt" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="behinderungbekannt"/>
                                    </div>
                                    <cit:inputLabel name="behinderungbekannt">keine bekannt</cit:inputLabel>
                                 </div>
                              </section>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "behinderungsonstiges") %>' data-live-stay="stay_nonval_d0e2520">
                                 <cit:conditional test="!assistants.request.isValid('behinderungsonstiges')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="behinderungsonstiges"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="behinderungsonstiges" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="behinderungsonstiges" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="behinderungsonstiges" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="behinderungsonstiges">Sonstiges (z. B. Art der gesundheitlichen Beeinträchtigung)</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2520" id="stay.nonval.d0e2520" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2520').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "behinderungsonstiges", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.behinderungsonstiges == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "behinderungsonstigesausfuehrung") %>'>
                                    <cit:conditional test="!assistants.request.isValid('behinderungsonstigesausfuehrung')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="behinderungsonstigesausfuehrung"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="behinderungsonstigesausfuehrung" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="behinderungsonstigesausfuehrung" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="behinderungsonstigesausfuehrung">Erläuterung</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputTextarea name="behinderungsonstigesausfuehrung"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                           </section>
                           <section class="group narrow">
                              <header>
                                 <h3>Weitere Unterhaltsverpflichtungen</h3>(z. B. gegenüber anderen Kindern)</header>
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "berechtigtername") %>'>
                                 <cit:conditional test="!assistants.request.isValid('berechtigtername')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="berechtigtername"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="berechtigtername" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="berechtigtername" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="berechtigtername">Name</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputText name="berechtigtername"/>
                                    </div>
                                 </div>
                              </section>
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "berechtigtervorname") %>'>
                                 <cit:conditional test="!assistants.request.isValid('berechtigtervorname')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="berechtigtervorname"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="berechtigtervorname" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="berechtigtervorname" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="berechtigtervorname">Vorname(n)</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputText name="berechtigtervorname"/>
                                    </div>
                                 </div>
                              </section>
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "berechtigtergeburtsdatum") %>'>
                                 <cit:conditional test="!assistants.request.isValid('berechtigtergeburtsdatum')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="berechtigtergeburtsdatum"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="berechtigtergeburtsdatum" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="berechtigtergeburtsdatum" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="berechtigtergeburtsdatum">Geburtsdatum</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputDate name="berechtigtergeburtsdatum" class="tiny focus-mark-before" showChooser="true"/>
                                    </div>
                                 </div>
                              </section>
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "berechtigterunterhalt") %>'>
                                 <cit:conditional test="!assistants.request.isValid('berechtigterunterhalt')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="berechtigterunterhalt"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="berechtigterunterhalt" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="berechtigterunterhalt" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="berechtigterunterhalt">Höhe des Unterhalts</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputCurrency name="berechtigterunterhalt" class="number rightalign use-size focus-mark-before" size="15"/>
                                    </div>
                                 </div>
                              </section>
                              <footer>Bitte geben Sie jeweils den Namen des Berechtigten an.</footer>
                           </section>
                           <section class="group narrow">
                              <header>
                                 <h3>Sonstige Angaben</h3>
                              </header>
                              <section class="infobox narrow">Bitte wählen Sie die zutreffenden Punkte aus: <p/></section>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "schulden") %>' data-live-stay="stay_nonval_d0e2598">
                                 <cit:conditional test="!assistants.request.isValid('schulden')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="schulden"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="schulden" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="schulden" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="schulden" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="schulden">Schulden</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2598" id="stay.nonval.d0e2598" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2598').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "schulden", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.schulden == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "schuldenbei") %>'>
                                    <cit:conditional test="!assistants.request.isValid('schuldenbei')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="schuldenbei"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="schuldenbei" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="schuldenbei" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="schuldenbei">bei</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="schuldenbei"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.schulden == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "schuldenhoehe") %>'>
                                    <cit:conditional test="!assistants.request.isValid('schuldenhoehe')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="schuldenhoehe"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="schuldenhoehe" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="schuldenhoehe" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="schuldenhoehe">Höhe ca.</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="schuldenhoehe" class="number rightalign use-size focus-mark-before" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "insolvenzverfahren") %>' data-live-stay="stay_nonval_d0e2625">
                                 <cit:conditional test="!assistants.request.isValid('insolvenzverfahren')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="insolvenzverfahren"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="insolvenzverfahren" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="insolvenzverfahren" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="insolvenzverfahren" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="insolvenzverfahren">Insolvenzverfahren eröffnet/beantragt</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2625" id="stay.nonval.d0e2625" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2625').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "insolvenzverfahren", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.insolvenzverfahren == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "schuldnerberatung") %>'>
                                    <cit:conditional test="!assistants.request.isValid('schuldnerberatung')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="schuldnerberatung"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="schuldnerberatung" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="schuldnerberatung" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="schuldnerberatung">Schuldnerberatung:</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="schuldnerberatung"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "vermoegensauskunft") %>' data-live-stay="stay_nonval_d0e2643">
                                 <cit:conditional test="!assistants.request.isValid('vermoegensauskunft')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="vermoegensauskunft"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="vermoegensauskunft" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="vermoegensauskunft" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="vermoegensauskunft" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="vermoegensauskunft">Vermögensauskunft (früher: eidesstattliche Versicherung) wurde bereits abgegeben</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2643" id="stay.nonval.d0e2643" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2643').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "vermoegensauskunft", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.vermoegensauskunft == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vermoegensauskunfterlaeuterung") %>'>
                                    <cit:conditional test="!assistants.request.isValid('vermoegensauskunfterlaeuterung')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="vermoegensauskunfterlaeuterung"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vermoegensauskunfterlaeuterung" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vermoegensauskunfterlaeuterung" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="vermoegensauskunfterlaeuterung">Erläuterungen:</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputTextarea name="vermoegensauskunfterlaeuterung"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after" data-comments='<%= getComments(pageContext.getAttribute("form"), "keineangaben") %>' data-live-stay="stay_nonval_d0e2661">
                                 <cit:conditional test="!assistants.request.isValid('keineangaben')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="keineangaben"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="keineangaben" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="keineangaben" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="keineangaben" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="keineangaben">Ich kann keine Angaben machen</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2661" id="stay.nonval.d0e2661" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2661').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "keineangaben", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.keineangaben == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "keineangabenweil") %>'>
                                    <cit:conditional test="!assistants.request.isValid('keineangabenweil')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="keineangabenweil"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="keineangabenweil" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="keineangabenweil" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="keineangabenweil">weil</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputTextarea name="keineangabenweil"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                           </section>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
                           <h3 class="accessibility">Dialogverlauf</h3>
                           <span class="switch" title="Dialogverlauf öffnen/schließen">
                              <span class="accessibility">Dialogverlauf öffnen/schließen</span>
                           </span>
                           <ul class="icons"><% final boolean unvisited_d67e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d67e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                                    <a href="" class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d67e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d67e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d67e4 = !isVisited(session, "antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung"); %><li class='past<%= unvisited_d67e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung") != null) { %><span class="item clickable" data-submit-value="resync.antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung">
                                    <a href="" class="label">
                                       <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                                       <span class="labelicon" title='<%= unvisited_d67e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                                       <span class="labelicon" title='<%= unvisited_d67e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d67e6 = !isVisited(session, "letzter-bezirk-und-ortsteil-in-berlin"); %><li class='past<%= unvisited_d67e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("letzter-bezirk-und-ortsteil-in-berlin") != null) { %><span class="item clickable" data-submit-value="resync.letzter-bezirk-und-ortsteil-in-berlin">
                                    <a href="" class="label">
                                       <span class="labeltext">Letzter Bezirk und Ortsteil in Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d67e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Letzter Bezirk und Ortsteil in Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d67e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d67e8 = !isVisited(session, "familienstand"); %><li class='past<%= unvisited_d67e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("familienstand") != null) { %><span class="item clickable" data-submit-value="resync.familienstand">
                                    <a href="" class="label">
                                       <span class="labeltext">Familienstand</span>
                                       <span class="labelicon" title='<%= unvisited_d67e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Familienstand</span>
                                       <span class="labelicon" title='<%= unvisited_d67e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d67e10 = !isVisited(session, "angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d67e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d67e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d67e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d67e12 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='past<%= unvisited_d67e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("betreuung-des-anderen-elternteiles") != null) { %><span class="item clickable" data-submit-value="resync.betreuung-des-anderen-elternteiles">
                                    <a href="" class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d67e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d67e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d67e14 = !isVisited(session, "ergaenzende-angaben-fuer-kinder-die-das-zwoelfte-lebensjahr-vollendet-haben-beziehungsweise-demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d67e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("ergaenzende-angaben-fuer-kinder-die-das-zwoelfte-lebensjahr-vollendet-haben-beziehungsweise-demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.ergaenzende-angaben-fuer-kinder-die-das-zwoelfte-lebensjahr-vollendet-haben-beziehungsweise-demnaechst-vollenden-werden">
                                    <a href="" class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das zwölfte Lebensjahr vollendet haben, beziehungsweise demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d67e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das zwölfte Lebensjahr vollendet haben, beziehungsweise demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d67e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d67e16 = !isVisited(session, "zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist"); %><li class='past<%= unvisited_d67e16 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist") != null) { %><span class="item clickable" data-submit-value="resync.zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist">
                                    <a href="" class="label">
                                       <span class="labeltext">Zusätzliche Angaben für den Fall, dass das Kind 15, 16 oder 17 Jahre alt ist</span>
                                       <span class="labelicon" title='<%= unvisited_d67e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Zusätzliche Angaben für den Fall, dass das Kind 15, 16 oder 17 Jahre alt ist</span>
                                       <span class="labelicon" title='<%= unvisited_d67e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d67e18 = !isVisited(session, "sonstiges-einkommen-des-kindes"); %><li class='past<%= unvisited_d67e18 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("sonstiges-einkommen-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.sonstiges-einkommen-des-kindes">
                                    <a href="" class="label">
                                       <span class="labeltext">Sonstiges Einkommen des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d67e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Sonstiges Einkommen des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d67e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d67e20 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='past<%= unvisited_d67e20 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("vormundschaft-beistandschaft-rechtsbeistand") != null) { %><span class="item clickable" data-submit-value="resync.vormundschaft-beistandschaft-rechtsbeistand">
                                    <a href="" class="label">
                                       <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d67e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d67e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e20 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d67e22 = !isVisited(session, "angaben-anderes-elternteil"); %><li class='past<%= unvisited_d67e22 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-anderes-elternteil") != null) { %><span class="item clickable" data-submit-value="resync.angaben-anderes-elternteil">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben anderes Elternteil</span>
                                       <span class="labelicon" title='<%= unvisited_d67e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben anderes Elternteil</span>
                                       <span class="labelicon" title='<%= unvisited_d67e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e22 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d67e24 = !isVisited(session, "weitere-angaben-anderes-elternteil"); %><li class='present<%= unvisited_d67e24 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben anderes Elternteil</span>
                                       <span class="labelicon" title='<%= unvisited_d67e24 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d67e24 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d67e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d67e26 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d67e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d67e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d67e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d67e28 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d67e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d67e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d67e30 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d67e30 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d67e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d67e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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