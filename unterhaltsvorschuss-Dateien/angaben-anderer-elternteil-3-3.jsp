<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("angaben-anderer-elternteil-3-3"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("angaben-anderer-elternteil-3-3"); %>

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
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Angaben anderer Elternteil (3/3)</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow/>
      </cit:control>
   </head>
   <body id="angaben-anderer-elternteil-3-3">
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
                     </span><% } %></li><% final boolean unvisited_d58e8 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='past<%= unvisited_d58e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-zum-antragsteller-zur-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-zum-antragsteller-zur-antragstellerin">
                        <a href="" class="label">
                           <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d58e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d58e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d58e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d58e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d58e10 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d58e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-kind-fuer-das-die-leistung-beantragt-wird">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d58e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d58e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d58e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d58e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d58e12 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d58e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.demnaechst-vollenden-werden">
                        <a href="" class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d58e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d58e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d58e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d58e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d58e14 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='past<%= unvisited_d58e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("vormundschaft-beistandschaft-rechtsbeistand") != null) { %><span class="item clickable" data-submit-value="resync.vormundschaft-beistandschaft-rechtsbeistand">
                        <a href="" class="label">
                           <span class="labeltext">Vormundschaft/Beistandschaft/Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d58e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d58e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Vormundschaft/Beistandschaft/Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d58e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d58e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d58e16 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='past<%= unvisited_d58e16 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-1-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-1-3">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                           <span class="labelicon" title='<%= unvisited_d58e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d58e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                           <span class="labelicon" title='<%= unvisited_d58e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d58e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d58e18 = !isVisited(session, "angaben-anderer-elternteil-2-3"); %><li class='past<%= unvisited_d58e18 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-anderer-elternteil-2-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-anderer-elternteil-2-3">
                        <a href="" class="label">
                           <span class="labeltext">Angaben anderer Elternteil (2/3)</span>
                           <span class="labelicon" title='<%= unvisited_d58e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d58e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben anderer Elternteil (2/3)</span>
                           <span class="labelicon" title='<%= unvisited_d58e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d58e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d58e20 = !isVisited(session, "angaben-anderer-elternteil-3-3"); %><li class='present<%= unvisited_d58e20 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben anderer Elternteil (3/3)</span>
                           <span class="labelicon" title='<%= unvisited_d58e20 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d58e20 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d58e22 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d58e22 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d58e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d58e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d58e24 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d58e24 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d58e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d58e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d58e26 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d58e26 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d58e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d58e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d58e28 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d58e28 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d58e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d58e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d58e30 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d58e30 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Nachweise</span>
                           <span class="labelicon" title='<%= unvisited_d58e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d58e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">Angaben anderer Elternteil (3/3)</h2>
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
                                 <h3>Bezüge</h3>
                              </header>
                              <section class="infobox narrow">Bitte geben Sie die Bezüge an<br/><br/></section>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "bezugalg") %>' data-live-stay="stay_nonval_d0e2807">
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
                                 <cit:inputSubmit type="stay.nonval.d0e2807" id="stay.nonval.d0e2807" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2807').style.display='none';</script>
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
                                    <footer>(Agentur für Arbeit)</footer>
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
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "bezugalgii") %>' data-live-stay="stay_nonval_d0e2837">
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
                                 <cit:inputSubmit type="stay.nonval.d0e2837" id="stay.nonval.d0e2837" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2837').style.display='none';</script>
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
                                    <footer>(z. B. Jobcenter)</footer>
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
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "bezugkrankengeld") %>' data-live-stay="stay_nonval_d0e2867">
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
                                 <cit:inputSubmit type="stay.nonval.d0e2867" id="stay.nonval.d0e2867" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2867').style.display='none';</script>
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
                                    <footer>(z. B. Krankenkasse)</footer>
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
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "bezugrente") %>' data-live-stay="stay_nonval_d0e2897">
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
                                 <cit:inputSubmit type="stay.nonval.d0e2897" id="stay.nonval.d0e2897" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2897').style.display='none';</script>
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
                                    <footer>(z. B. Rententräger)</footer>
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
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "bezugsozialhilfe") %>' data-live-stay="stay_nonval_d0e2927">
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
                                 <cit:inputSubmit type="stay.nonval.d0e2927" id="stay.nonval.d0e2927" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2927').style.display='none';</script>
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
                                    <footer>(z. B. Sozialamt)</footer>
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
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "einkommenausnebentaetigkeit") %>' data-live-stay="stay_nonval_d0e2996">
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
                                 <cit:inputSubmit type="stay.nonval.d0e2996" id="stay.nonval.d0e2996" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e2996').style.display='none';</script>
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
                                       <cit:inputLabel name="einkommennebentaetigkeithoehe">Nettoeinkommen monatlich ca.</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="einkommennebentaetigkeithoehe" class="number rightalign use-size focus-mark-before" size="15"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "einkommenausvermietung") %>' data-live-stay="stay_nonval_d0e3014">
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
                                 <cit:inputSubmit type="stay.nonval.d0e3014" id="stay.nonval.d0e3014" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3014').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "einkommenausvermietung", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.einkommenausvermietung == true">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "einkommenvermietunghoehe") %>'>
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
                                       <cit:inputLabel name="einkommenvermietunghoehe">Nettoeinkommen monatlich ca.</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="einkommenvermietunghoehe" class="number rightalign use-size focus-mark-before" size="15"/>
                                       </div>
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
                                       <cit:inputTextarea name="sonstigeseinkommenerlaeuterung" maxlength="400"/>
                                    </div>
                                    <aside>
                                       <noscript>Max. 400 Zeichen</noscript>
                                       <span id="d0e3041-counter" class="textarea-counter">Noch <span id="sonstigeseinkommenerlaeuterung_remaining">0</span>/400 Zeichen</span>
                                    </aside>
                                    <script type="text/javascript">document.getElementById('d0e3041-counter').style.display='inline';</script>
                                 </div>
                              </section>
                              <cit:inputComputed name="sonstigeeinkommensumme" value="myForm.einkommennebentaetigkeithoehe + myForm.einkommenvermietunghoehe"/>
                           </section>
                           <section class="group narrow">
                              <header>
                                 <h3>Vermögen</h3>
                              </header>
                              <cit:xmlResource id="C00000008" src="/WEB-INF/data/staat_2019-04-01.xml"/>
                              <section class="infobox narrow">Bitte geben Sie das Vermögen an, soweit bekannt:<br/><br/></section>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "grundbesitz") %>' data-live-stay="stay_nonval_d0e3064">
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
                                 <cit:inputSubmit type="stay.nonval.d0e3064" id="stay.nonval.d0e3064" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3064').style.display='none';</script>
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
                                 <section class="block narrow label_before width-xs" data-comments='<%= getComments(pageContext.getAttribute("form"), "grundbesitzhausnummer") %>'>
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
                                          <cit:inputText name="grundbesitzhausnummer"/>
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
                                          <cit:inputSelect name="grundbesitzland" default="Deutschland">
                                             <cit:xmlOptions src="urn:xmlid:C00000008" select="/*/SimpleCodeList/Row" text="Value[@ColumnRef=&#34;Staatsname_kurz&#34;]/SimpleValue"/>
                                          </cit:inputSelect>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "kapitallebensversicherung") %>' data-live-stay="stay_nonval_d0e3120">
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
                                 <cit:inputSubmit type="stay.nonval.d0e3120" id="stay.nonval.d0e3120" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3120').style.display='none';</script>
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
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "sparguthaben") %>' data-live-stay="stay_nonval_d0e3138">
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
                                 <cit:inputSubmit type="stay.nonval.d0e3138" id="stay.nonval.d0e3138" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3138').style.display='none';</script>
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
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "wertpapiere") %>' data-live-stay="stay_nonval_d0e3156">
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
                                 <cit:inputSubmit type="stay.nonval.d0e3156" id="stay.nonval.d0e3156" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3156').style.display='none';</script>
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
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "girokonto") %>' data-live-stay="stay_nonval_d0e3174">
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
                                 <cit:inputSubmit type="stay.nonval.d0e3174" id="stay.nonval.d0e3174" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3174').style.display='none';</script>
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
                                    <footer>(bei deutschen Banken einschließlich DE, immer 22 Stellen)</footer>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "pkw") %>' data-live-stay="stay_nonval_d0e3207">
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
                                 <cit:inputSubmit type="stay.nonval.d0e3207" id="stay.nonval.d0e3207" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3207').style.display='none';</script>
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
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "vermoegensonstiges") %>' data-live-stay="stay_nonval_d0e3243">
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
                                 <cit:inputSubmit type="stay.nonval.d0e3243" id="stay.nonval.d0e3243" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3243').style.display='none';</script>
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
                                          <cit:inputTextarea name="vermoegensonstigeserlaeuterung" maxlength="400"/>
                                       </div>
                                       <aside>
                                          <noscript>Max. 400 Zeichen</noscript>
                                          <span id="d0e3252-counter" class="textarea-counter">Noch <span id="vermoegensonstigeserlaeuterung_remaining">0</span>/400 Zeichen</span>
                                       </aside>
                                       <script type="text/javascript">document.getElementById('d0e3252-counter').style.display='inline';</script>
                                    </div>
                                 </section>
                              </cit:conditional>
                           </section>
                           <section class="group narrow">
                              <header>
                                 <h3>Gesundheitliche Belastung</h3>
                              </header>
                              <section class="infobox narrow">Bitte wählen Sie die zutreffenden Punkte aus:<br/><br/></section>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "schwerbehinderung") %>' data-live-stay="stay_nonval_d0e3273">
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
                                 <cit:inputSubmit type="stay.nonval.d0e3273" id="stay.nonval.d0e3273" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3273').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "schwerbehinderung", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.schwerbehinderung == true">
                                 <section class="block narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "behinderungsgrad") %>'>
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
                              <section class="block narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "behinderungbekannt") %>'>
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
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "behinderungsonstiges") %>' data-live-stay="stay_nonval_d0e3300">
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
                                 <cit:inputSubmit type="stay.nonval.d0e3300" id="stay.nonval.d0e3300" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3300').style.display='none';</script>
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
                                       <cit:inputLabel name="behinderungsonstigesausfuehrung">Erläuterungen</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputTextarea name="behinderungsonstigesausfuehrung" maxlength="400"/>
                                       </div>
                                       <aside>
                                          <noscript>Max. 400 Zeichen</noscript>
                                          <span id="d0e3309-counter" class="textarea-counter">Noch <span id="behinderungsonstigesausfuehrung_remaining">0</span>/400 Zeichen</span>
                                       </aside>
                                       <script type="text/javascript">document.getElementById('d0e3309-counter').style.display='inline';</script>
                                    </div>
                                 </section>
                              </cit:conditional>
                           </section>
                           <section class="block feldtabelle wide">
                              <header>
                                 <h3>Weitere Unterhaltsverpflichtungen</h3>(z. B. gegenüber anderen Kindern)</header>
                              <cit:table scope="weitere_unterhaltsverpflichtungen" cols="4" class="field-table" id="weitere_unterhaltsverpflichtungen" initialRowCount="0">
                                 <cit:thead>
                                    <div class="tablecell pinned">Name</div>
                                    <div class="tablecell">Vorname(n)</div>
                                    <div class="tablecell">Geburtsdatum</div>
                                    <div class="tablecell">Höhe des Unterhalts</div>
                                 </cit:thead>
                                 <cit:tbody>
                                    <div class="tablecell pinned">
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
                                       <cit:inputLabel name="berechtigtername">Name</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="berechtigtername"/>
                                       </div>
                                    </div>
                                    <div class="tablecell">
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
                                       <cit:inputLabel name="berechtigtervorname">Vorname(n)</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="berechtigtervorname"/>
                                       </div>
                                    </div>
                                    <div class="tablecell">
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
                                       <cit:inputLabel name="berechtigtergeburtsdatum">Geburtsdatum</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputDate name="berechtigtergeburtsdatum" class="tiny focus-mark-before" showChooser="true" placeholder="TT.MM.JJJJ"/>
                                       </div>
                                    </div>
                                    <div class="tablecell">
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
                                       <cit:inputLabel name="berechtigterunterhalt">Höhe des Unterhalts</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputCurrency name="berechtigterunterhalt" class="number rightalign use-size focus-mark-before" size="15"/>
                                       </div>
                                    </div>
                                 </cit:tbody>
                              </cit:table>
                              <footer>Bitte geben Sie jeweils die Daten des Berechtigten an indem Sie eine neue Zeile hinzufügen.</footer>
                           </section>
                           <section class="group narrow">
                              <header>
                                 <h3>Sonstige Angaben</h3>
                              </header>
                              <section class="infobox narrow">Bitte wählen Sie die zutreffenden Punkte aus:<br/><br/></section>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "schulden") %>' data-live-stay="stay_nonval_d0e3378">
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
                                 <cit:inputSubmit type="stay.nonval.d0e3378" id="stay.nonval.d0e3378" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3378').style.display='none';</script>
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
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "insolvenzverfahren") %>' data-live-stay="stay_nonval_d0e3405">
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
                                 <cit:inputSubmit type="stay.nonval.d0e3405" id="stay.nonval.d0e3405" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3405').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "insolvenzverfahren", "boolean");</cit:script>
                              </section>
                              <cit:conditional test="myForm.insolvenzverfahren == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "schuldnerberatung") %>'>
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
                                    <div class="label">
                                       <cit:inputLabel name="schuldnerberatung">z. B. Schuldnerberatung</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="schuldnerberatung"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "vermoegensauskunft") %>' data-live-stay="stay_nonval_d0e3423">
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
                                 <cit:inputSubmit type="stay.nonval.d0e3423" id="stay.nonval.d0e3423" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3423').style.display='none';</script>
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
                                          <cit:inputTextarea name="vermoegensauskunfterlaeuterung" maxlength="400"/>
                                       </div>
                                       <aside>
                                          <noscript>Max. 400 Zeichen</noscript>
                                          <span id="d0e3432-counter" class="textarea-counter">Noch <span id="vermoegensauskunfterlaeuterung_remaining">0</span>/400 Zeichen</span>
                                       </aside>
                                       <script type="text/javascript">document.getElementById('d0e3432-counter').style.display='inline';</script>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <section class="block live narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "keineangaben") %>' data-live-stay="stay_nonval_d0e3441">
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
                                 <cit:inputSubmit type="stay.nonval.d0e3441" id="stay.nonval.d0e3441" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e3441').style.display='none';</script>
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
                                          <cit:inputTextarea name="keineangabenweil" maxlength="400"/>
                                       </div>
                                       <aside>
                                          <noscript>Max. 400 Zeichen</noscript>
                                          <span id="d0e3450-counter" class="textarea-counter">Noch <span id="keineangabenweil_remaining">0</span>/400 Zeichen</span>
                                       </aside>
                                       <script type="text/javascript">document.getElementById('d0e3450-counter').style.display='inline';</script>
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
                           <ul class="icons"><% final boolean unvisited_d60e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d60e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                                    <a href="" class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d60e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d60e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d60e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d60e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d60e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d60e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                                    <a href="" class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d60e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d60e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d60e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d60e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d60e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='past<%= unvisited_d60e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d60e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d60e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d60e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d60e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d60e8 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='past<%= unvisited_d60e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-zum-antragsteller-zur-antragstellerin") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-zum-antragsteller-zur-antragstellerin">
                                    <a href="" class="label">
                                       <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d60e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d60e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d60e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d60e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d60e10 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d60e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-kind-fuer-das-die-leistung-beantragt-wird">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d60e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d60e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d60e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d60e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d60e12 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d60e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.demnaechst-vollenden-werden">
                                    <a href="" class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d60e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d60e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d60e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d60e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d60e14 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='past<%= unvisited_d60e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("vormundschaft-beistandschaft-rechtsbeistand") != null) { %><span class="item clickable" data-submit-value="resync.vormundschaft-beistandschaft-rechtsbeistand">
                                    <a href="" class="label">
                                       <span class="labeltext">Vormundschaft/Beistandschaft/Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d60e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d60e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Vormundschaft/Beistandschaft/Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d60e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d60e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d60e16 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='past<%= unvisited_d60e16 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-anderen-elternteil-1-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-anderen-elternteil-1-3">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d60e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d60e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d60e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d60e16 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d60e18 = !isVisited(session, "angaben-anderer-elternteil-2-3"); %><li class='past<%= unvisited_d60e18 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-anderer-elternteil-2-3") != null) { %><span class="item clickable" data-submit-value="resync.angaben-anderer-elternteil-2-3">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben anderer Elternteil (2/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d60e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d60e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben anderer Elternteil (2/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d60e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d60e18 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d60e20 = !isVisited(session, "angaben-anderer-elternteil-3-3"); %><li class='present<%= unvisited_d60e20 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben anderer Elternteil (3/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d60e20 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d60e20 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d60e22 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d60e22 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d60e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d60e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d60e24 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d60e24 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d60e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d60e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d60e26 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d60e26 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d60e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d60e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d60e28 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d60e28 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d60e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d60e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d60e30 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d60e30 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Nachweise</span>
                                       <span class="labelicon" title='<%= unvisited_d60e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d60e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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