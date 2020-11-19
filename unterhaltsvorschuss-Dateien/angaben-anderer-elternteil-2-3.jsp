<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("angaben-anderer-elternteil-2-3"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("angaben-anderer-elternteil-2-3"); %>

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
  <!--plugin:ui-rbs2-->
        
      <script src="_plugins/ui-rbs2/ui-rbs2.js?1597416804000" type="text/javascript"/>
        
      <script src="_plugins/ui-rbs2/bsnrbs.AutoSuggest_2.1.3.js?1583934762000" type="text/javascript"/>
   
      <title id="page-title">
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Angaben anderer Elternteil (2/3)</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow/>
      </cit:control>
   </head>
   <body id="angaben-anderer-elternteil-2-3">
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
                     </span><% } %></li><% final boolean unvisited_d52e8 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='past<%= unvisited_d52e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-zum-antragsteller-zur-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-zum-antragsteller-zur-antragstellerin">
                        <a href="" class="label">
                           <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d52e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d52e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d52e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d52e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d52e10 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d52e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-kind-fuer-das-die-leistung-beantragt-wird">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d52e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d52e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d52e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d52e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d52e12 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d52e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.demnaechst-vollenden-werden">
                        <a href="" class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d52e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d52e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d52e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d52e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d52e14 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='past<%= unvisited_d52e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("vormundschaft-beistandschaft-rechtsbeistand") != null) { %><span class="item clickable" data-submit-value="resync.vormundschaft-beistandschaft-rechtsbeistand">
                        <a href="" class="label">
                           <span class="labeltext">Vormundschaft/Beistandschaft/Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d52e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d52e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Vormundschaft/Beistandschaft/Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d52e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d52e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d52e16 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='past<%= unvisited_d52e16 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-1-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-1-3">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                           <span class="labelicon" title='<%= unvisited_d52e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d52e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                           <span class="labelicon" title='<%= unvisited_d52e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d52e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d52e18 = !isVisited(session, "angaben-anderer-elternteil-2-3"); %><li class='present<%= unvisited_d52e18 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben anderer Elternteil (2/3)</span>
                           <span class="labelicon" title='<%= unvisited_d52e18 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d52e18 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d52e20 = !isVisited(session, "angaben-anderer-elternteil-3-3"); %><li class='future<%= unvisited_d52e20 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben anderer Elternteil (3/3)</span>
                           <span class="labelicon" title='<%= unvisited_d52e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d52e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d52e22 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d52e22 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d52e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d52e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d52e24 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d52e24 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d52e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d52e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d52e26 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d52e26 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d52e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d52e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d52e28 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d52e28 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d52e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d52e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d52e30 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d52e30 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Nachweise</span>
                           <span class="labelicon" title='<%= unvisited_d52e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d52e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">Angaben anderer Elternteil (2/3)</h2>
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
                              <cit:xmlResource id="C00000008" src="/WEB-INF/data/staat_2019-04-01.xml"/>
                              <section class="infobox narrow">
                                 <h3>Hinweis:</h3>Der andere Elternteil ist unterhaltsrechtlich zu überprüfen. Dafür sind die folgenden Angaben von Ihnen notwendig. Die Fragen beantworten Sie bitte nach bestem Wissen.<br/><br/><br/><br/></section>
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
                                    <span class="pseudoLabel">Schulabschluss</span>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:choiceGroup name="schulabschluss">
                                          <div class="choice">
                                             <cit:inputChoice value="kein Schulabschluss"/>
                                             <cit:inputLabel name="schulabschluss.kein Schulabschluss">kein Schulabschluss</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="Schulart nicht bekannt"/>
                                             <cit:inputLabel name="schulabschluss.Schulart nicht bekannt">Schulart nicht bekannt</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="Gymnasium"/>
                                             <cit:inputLabel name="schulabschluss.Gymnasium">Gymnasium</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="Realschule / POS"/>
                                             <cit:inputLabel name="schulabschluss.Realschule / POS">Realschule / POS</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="Gesamtschule"/>
                                             <cit:inputLabel name="schulabschluss.Gesamtschule">Gesamtschule</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="Hauptschule"/>
                                             <cit:inputLabel name="schulabschluss.Hauptschule">Hauptschule</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="Sonderschule"/>
                                             <cit:inputLabel name="schulabschluss.Sonderschule">Sonderschule</cit:inputLabel>
                                          </div>
                                       </cit:choiceGroup>
                                    </div>
                                 </div>
                              </section>
                              <section class="infobox narrow"><br/><br/><strong>Berufsausbildung</strong><br/><br/></section>
                              <section class="block narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "berufsausbildungkeine") %>'>
                                 <cit:conditional test="!assistants.request.isValid('berufsausbildungkeine')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="berufsausbildungkeine"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="berufsausbildungkeine" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="berufsausbildungkeine" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="berufsausbildungkeine"/>
                                    </div>
                                    <cit:inputLabel name="berufsausbildungkeine">keine</cit:inputLabel>
                                 </div>
                              </section>
                              <section class="block narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "berufsausbildungnichtbekannt") %>'>
                                 <cit:conditional test="!assistants.request.isValid('berufsausbildungnichtbekannt')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="berufsausbildungnichtbekannt"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="berufsausbildungnichtbekannt" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="berufsausbildungnichtbekannt" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="berufsausbildungnichtbekannt"/>
                                    </div>
                                    <cit:inputLabel name="berufsausbildungnichtbekannt">nicht bekannt</cit:inputLabel>
                                 </div>
                              </section>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "lehre") %>' data-live-stay="stay_nonval_d0e2517">
                                 <cit:conditional test="!assistants.request.isValid('lehre')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="lehre"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="lehre" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="lehre" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="lehre" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="lehre">Lehre</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2517" id="stay.nonval.d0e2517" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2517').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "lehre", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.lehre == true">
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
                              <cit:conditional test="myForm.lehre == true">
                                 <section class="block narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "lehreabgebrochen") %>'>
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
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "fachschulausbildung") %>' data-live-stay="stay_nonval_d0e2544">
                                 <cit:conditional test="!assistants.request.isValid('fachschulausbildung')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="fachschulausbildung"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="fachschulausbildung" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="fachschulausbildung" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="fachschulausbildung" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="fachschulausbildung">Fachschulausbildung</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2544" id="stay.nonval.d0e2544" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2544').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "fachschulausbildung", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.fachschulausbildung == true">
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
                              <cit:conditional test="myForm.fachschulausbildung == true">
                                 <section class="block narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "fachschulausbildungabgebrochen") %>'>
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
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "studium") %>' data-live-stay="stay_nonval_d0e2571">
                                 <cit:conditional test="!assistants.request.isValid('studium')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="studium"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="studium" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="studium" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="studium" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="studium">Studium</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2571" id="stay.nonval.d0e2571" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2571').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "studium", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.studium == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "studiumals") %>'>
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
                                    <div class="label">
                                       <cit:inputLabel name="studiumals">Studium mit Fachrichtung</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="studiumals"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.studium == true">
                                 <section class="block narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "studiumabgebrochen") %>'>
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
                              <cit:conditional test="myForm.lehre == true | myForm.fachschulausbildung == true || myForm.studium == true">
                                 <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausbildungstudiumanerkanntindtl") %>' data-live-stay="stay_nonval_d0e2598">
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
                                    <div class="label">
                                       <span class="pseudoLabel">Ausbildung / Studium anerkannt in Deutschland</span>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer choice-inline">
                                          <cit:choiceGroup type="boolean" name="ausbildungstudiumanerkanntindtl">
                                             <div class="choice">
                                                <cit:inputChoice value="true" immediate="true"/>
                                                <cit:inputLabel name="ausbildungstudiumanerkanntindtl.true">Ja</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="false" immediate="true"/>
                                                <cit:inputLabel name="ausbildungstudiumanerkanntindtl.false">Nein</cit:inputLabel>
                                             </div>
                                          </cit:choiceGroup>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e2598" id="stay.nonval.d0e2598" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e2598').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "ausbildungstudiumanerkanntindtl", "boolean");</cit:script>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.ausbildungstudiumanerkanntindtl == false">
                                 <section class="block live narrow" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausbildungstudiumanerkanntin") %>' data-live-stay="stay_nonval_d0e2607">
                                    <cit:conditional test="!assistants.request.isValid('ausbildungstudiumanerkanntin')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="ausbildungstudiumanerkanntin"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="ausbildungstudiumanerkanntin" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="ausbildungstudiumanerkanntin" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="ausbildungstudiumanerkanntin">Ausbildung / Studium anerkannt in</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputSelect name="ausbildungstudiumanerkanntin" immediate="true" default="Deutschland">
                                             <cit:xmlOptions src="urn:xmlid:C00000008" select="/*/SimpleCodeList/Row" text="Value[@ColumnRef=&#34;Staatsname_kurz&#34;]/SimpleValue"/>
                                          </cit:inputSelect>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e2607" id="stay.nonval.d0e2607" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e2607').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "ausbildungstudiumanerkanntin", "string");</cit:script>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.lehre == true | myForm.fachschulausbildung == true || myForm.studium == true">
                                 <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausbildungstudiumdauertnochan") %>' data-live-stay="stay_nonval_d0e2618">
                                    <cit:conditional test="!assistants.request.isValid('ausbildungstudiumdauertnochan')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="ausbildungstudiumdauertnochan"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="ausbildungstudiumdauertnochan" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="ausbildungstudiumdauertnochan" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <span class="pseudoLabel">Ausbildung / Studium dauert noch an</span>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer choice-inline">
                                          <cit:choiceGroup type="boolean" name="ausbildungstudiumdauertnochan">
                                             <div class="choice">
                                                <cit:inputChoice value="true" immediate="true"/>
                                                <cit:inputLabel name="ausbildungstudiumdauertnochan.true">Ja</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="false" immediate="true"/>
                                                <cit:inputLabel name="ausbildungstudiumdauertnochan.false">Nein</cit:inputLabel>
                                             </div>
                                          </cit:choiceGroup>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e2618" id="stay.nonval.d0e2618" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e2618').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "ausbildungstudiumdauertnochan", "boolean");</cit:script>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.ausbildungstudiumdauertnochan == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausbildungstudiumbis") %>'>
                                    <cit:conditional test="!assistants.request.isValid('ausbildungstudiumbis')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="ausbildungstudiumbis"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="ausbildungstudiumbis" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="ausbildungstudiumbis" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="ausbildungstudiumbis">bis</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputDate name="ausbildungstudiumbis" class="tiny focus-mark-before" showChooser="true" placeholder="TT.MM.JJJJ"/>
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
                                       <cit:inputDate name="beruflichetaetigkeitseit" class="tiny focus-mark-before" showChooser="true" placeholder="TT.MM.JJJJ"/>
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
                                       <cit:inputDate name="beruflichetaetigkeitbis" class="tiny focus-mark-before" showChooser="true" placeholder="TT.MM.JJJJ"/>
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
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "taetigkeitbeendet") %>' data-live-stay="stay_nonval_d0e2687">
                                 <cit:conditional test="!assistants.request.isValid('taetigkeitbeendet')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="taetigkeitbeendet"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="taetigkeitbeendet" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="taetigkeitbeendet" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputBoolean name="taetigkeitbeendet" immediate="true"/>
                                    </div>
                                    <cit:inputLabel name="taetigkeitbeendet">Tätigkeit beendet</cit:inputLabel>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e2687" id="stay.nonval.d0e2687" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2687').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "taetigkeitbeendet", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.taetigkeitbeendet == true">
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
                                       <div class="pseudoLabel">Beendigung aufgrund</div>
                                       <div class="inputcontainer">
                                          <cit:choiceGroup name="beendigungaufgrund">
                                             <div class="choice">
                                                <cit:inputChoice value="Kündigung des Arbeitgebers"/>
                                                <cit:inputLabel name="beendigungaufgrund.Kündigung des Arbeitgebers">Kündigung des Arbeitgebers</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="Ablauf eines Zeitvertrages"/>
                                                <cit:inputLabel name="beendigungaufgrund.Ablauf eines Zeitvertrages">Ablauf eines Zeitvertrages</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="Aufgabe der Selbstständigkeit"/>
                                                <cit:inputLabel name="beendigungaufgrund.Aufgabe der Selbstständigkeit">Aufgabe der Selbstständigkeit</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="eigene Kündigung"/>
                                                <cit:inputLabel name="beendigungaufgrund.eigene Kündigung">eigene Kündigung</cit:inputLabel>
                                             </div>
                                          </cit:choiceGroup>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.taetigkeitbeendet == true">
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
                                          <cit:inputTextarea name="beendigunggruende" maxlength="400"/>
                                       </div>
                                       <aside>
                                          <noscript>Max. 400 Zeichen</noscript>
                                          <span id="d0e2717-counter" class="textarea-counter">Noch <span id="beendigunggruende_remaining">0</span>/400 Zeichen</span>
                                       </aside>
                                       <script type="text/javascript">document.getElementById('d0e2717-counter').style.display='inline';</script>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="infobox narrow"><br/><br/><p><strong>Bitte wählen Sie zutreffende Punkte aus</strong></p><br/><br/></section>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "arbeitslos") %>' data-live-stay="stay_nonval_d0e2732">
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
                                 <cit:inputSubmit type="stay.nonval.d0e2732" id="stay.nonval.d0e2732" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2732').style.display='none';</script>
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
                                          <cit:inputDate name="arbeitslosseit" class="tiny focus-mark-before" showChooser="true" placeholder="TT.MM.JJJJ"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "arbeitsunfaehigerkrankt") %>' data-live-stay="stay_nonval_d0e2750">
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
                                 <cit:inputSubmit type="stay.nonval.d0e2750" id="stay.nonval.d0e2750" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2750').style.display='none';</script>
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
                                          <cit:inputDate name="arbeitsunfaehigerkranktseit" class="tiny focus-mark-before" showChooser="true" placeholder="TT.MM.JJJJ"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "erwerbsunfaehig") %>' data-live-stay="stay_nonval_d0e2768">
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
                                 <cit:inputSubmit type="stay.nonval.d0e2768" id="stay.nonval.d0e2768" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2768').style.display='none';</script>
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
                                          <cit:inputDate name="erwerbsunfaehigseit" class="tiny focus-mark-before" showChooser="true" placeholder="TT.MM.JJJJ"/>
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
                           <ul class="icons"><% final boolean unvisited_d56e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d56e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                                    <a href="" class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d56e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d56e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d56e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d56e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d56e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d56e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                                    <a href="" class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d56e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d56e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d56e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d56e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d56e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='past<%= unvisited_d56e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d56e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d56e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d56e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d56e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d56e8 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='past<%= unvisited_d56e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-zum-antragsteller-zur-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-zum-antragsteller-zur-antragstellerin">
                                    <a href="" class="label">
                                       <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d56e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d56e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d56e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d56e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d56e10 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d56e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-kind-fuer-das-die-leistung-beantragt-wird">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d56e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d56e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d56e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d56e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d56e12 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d56e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.demnaechst-vollenden-werden">
                                    <a href="" class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d56e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d56e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d56e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d56e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d56e14 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='past<%= unvisited_d56e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("vormundschaft-beistandschaft-rechtsbeistand") != null) { %><span class="item clickable" data-submit-value="resync.vormundschaft-beistandschaft-rechtsbeistand">
                                    <a href="" class="label">
                                       <span class="labeltext">Vormundschaft/Beistandschaft/Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d56e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d56e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Vormundschaft/Beistandschaft/Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d56e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d56e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d56e16 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='past<%= unvisited_d56e16 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-1-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-1-3">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d56e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d56e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d56e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d56e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d56e18 = !isVisited(session, "angaben-anderer-elternteil-2-3"); %><li class='present<%= unvisited_d56e18 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben anderer Elternteil (2/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d56e18 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d56e18 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d56e20 = !isVisited(session, "angaben-anderer-elternteil-3-3"); %><li class='future<%= unvisited_d56e20 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben anderer Elternteil (3/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d56e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d56e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d56e22 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d56e22 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d56e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d56e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d56e24 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d56e24 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d56e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d56e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d56e26 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d56e26 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d56e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d56e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d56e28 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d56e28 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d56e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d56e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d56e30 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d56e30 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Nachweise</span>
                                       <span class="labelicon" title='<%= unvisited_d56e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d56e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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