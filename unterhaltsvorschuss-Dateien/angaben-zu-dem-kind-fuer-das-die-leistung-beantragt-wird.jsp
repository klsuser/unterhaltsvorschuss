<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %>

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
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Angaben zu dem Kind, für das die Leistung beantragt wird</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow/>
      </cit:control>
   </head>
   <body id="angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird">
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
               <ul class="icons"><% final boolean unvisited_d26e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d26e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                        <a href="" class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d26e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d26e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d26e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d26e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d26e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d26e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                        <a href="" class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d26e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d26e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d26e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d26e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d26e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='past<%= unvisited_d26e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d26e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d26e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d26e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d26e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d26e8 = !isVisited(session, "weitere-angaben-antragsteller-in"); %><li class='past<%= unvisited_d26e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-antragsteller-in") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-antragsteller-in">
                        <a href="" class="label">
                           <span class="labeltext">Weitere Angaben Antragsteller/in</span>
                           <span class="labelicon" title='<%= unvisited_d26e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d26e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben Antragsteller/in</span>
                           <span class="labelicon" title='<%= unvisited_d26e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d26e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d26e10 = !isVisited(session, "angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='present<%= unvisited_d26e10 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d26e10 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d26e10 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d26e12 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='future<%= unvisited_d26e12 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d26e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d26e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d26e14 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='future<%= unvisited_d26e14 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d26e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d26e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d26e16 = !isVisited(session, "angaben-anderer-elternteil-1-3"); %><li class='future<%= unvisited_d26e16 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben anderer Elternteil (1/3)</span>
                           <span class="labelicon" title='<%= unvisited_d26e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d26e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d26e18 = !isVisited(session, "angaben-anderer-elternteil-2-3"); %><li class='future<%= unvisited_d26e18 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben anderer Elternteil (2/3)</span>
                           <span class="labelicon" title='<%= unvisited_d26e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d26e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d26e20 = !isVisited(session, "angaben-anderer-elternteil-3-3"); %><li class='future<%= unvisited_d26e20 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben anderer Elternteil (3/3)</span>
                           <span class="labelicon" title='<%= unvisited_d26e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d26e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d26e22 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d26e22 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d26e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d26e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d26e24 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d26e24 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d26e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d26e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d26e26 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d26e26 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d26e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d26e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d26e28 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d26e28 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d26e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d26e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d26e30 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d26e30 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Nachweise</span>
                           <span class="labelicon" title='<%= unvisited_d26e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d26e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">Angaben zu dem Kind, für das die Leistung beantragt wird</h2>
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
                           <p class="required-hint">
                              <em>
                                 <span class="required-mark">*</span> Pflichtfelder</em>
                           </p>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "geschlecht") %>'>
                              <cit:conditional test="!assistants.request.isValid('geschlecht')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="geschlecht"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="geschlecht" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="geschlecht" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <div class="pseudoLabel required">Geschlecht:<span class="required-mark">*<span class="accessibility"> Pflichtfeld</span>
                                    </span>
                                 </div>
                                 <div class="inputcontainer">
                                    <cit:choiceGroup name="geschlecht" required="true">
                                       <div class="choice">
                                          <cit:inputChoice value="männlich"/>
                                          <cit:inputLabel name="geschlecht.männlich">männlich</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="weiblich"/>
                                          <cit:inputLabel name="geschlecht.weiblich">weiblich</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="divers"/>
                                          <cit:inputLabel name="geschlecht.divers">divers</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="ohne Angabe (gemäß § 45 b Personenstandsgesetz)"/>
                                          <cit:inputLabel name="geschlecht.ohne Angabe (gemäß § 45 b Personenstandsgesetz)">ohne Angabe (gemäß § 45 b Personenstandsgesetz)</cit:inputLabel>
                                       </div>
                                    </cit:choiceGroup>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "name") %>'>
                              <cit:conditional test="!assistants.request.isValid('name')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="name"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="name" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="name" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="name" required="true">Name:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputText name="name" required="true"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "vorname") %>'>
                              <cit:conditional test="!assistants.request.isValid('vorname')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="vorname"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="vorname" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="vorname" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="vorname" required="true">Vorname:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputText name="vorname" required="true"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "geburtsdatum") %>'>
                              <cit:errorText name="geburtsdatum" id="#implied">
                                 <p class="errorText">
                                    <strong>
                                       <cit:display expression="assistants.request.getErrorText('geburtsdatum')"/>
                                    </strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="geburtsdatum" id="d0e1369">
                                 <p class="errorText">
                                    <strong>Das Geburtsdatum liegt vor Ihrem eigenen Geburtsdatum oder in der Zukunft</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="geburtsdatum" id="d0e1380">
                                 <p class="errorText">
                                    <strong>Das Kind darf das 18. Lebensjahr noch nicht vollendet haben.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="geburtsdatum" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="geburtsdatum" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="geburtsdatum" required="true">Geburtsdatum:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputDate name="geburtsdatum" class="tiny focus-mark-before" showChooser="true" required="true" onValidate="_onValidate_d0e1369(value)" placeholder="TT.MM.JJJJ"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "geburtsort") %>'>
                              <cit:conditional test="!assistants.request.isValid('geburtsort')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="geburtsort"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="geburtsort" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="geburtsort" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="geburtsort">Geburtsort:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputText name="geburtsort"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block live narrow" data-comments='<%= getComments(pageContext.getAttribute("form"), "staatsangehoerigkeit") %>' data-live-stay="stay_nonval_d0e1396">
                              <cit:conditional test="!assistants.request.isValid('staatsangehoerigkeit')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="staatsangehoerigkeit"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="staatsangehoerigkeit" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="staatsangehoerigkeit" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="staatsangehoerigkeit" required="true">Staatsangehörigkeit</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputSelect name="staatsangehoerigkeit" immediate="true" required="true" default="deutsch">
                                       <cit:xmlOptions src="urn:xmlid:C00000002" select="/*/SimpleCodeList/Row/Value[@ColumnRef=&#34;Staatsangehoerigkeit&#34;]" text="SimpleValue"/>
                                    </cit:inputSelect>
                                 </div>
                              </div>
                              <cit:inputSubmit type="stay.nonval.d0e1396" id="stay.nonval.d0e1396" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                              <script type="text/javascript">document.getElementById('stay_nonval_d0e1396').style.display='none';</script>
                              <cit:script>_unmask(myForm, "staatsangehoerigkeit", "string");</cit:script>
                           </section>
                           <cit:conditional test="myForm.staatsangehoerigkeit != &#34;deutsch&#34;">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "aufenthaltstitelgueltigbis") %>'>
                                 <cit:conditional test="!assistants.request.isValid('aufenthaltstitelgueltigbis')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="aufenthaltstitelgueltigbis"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="aufenthaltstitelgueltigbis" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="aufenthaltstitelgueltigbis" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="aufenthaltstitelgueltigbis" required="true">Aufenthaltstitel gültig bis</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputDate name="aufenthaltstitelgueltigbis" class="tiny focus-mark-before" showChooser="true" required="true" placeholder="TT.MM.JJJJ"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.staatsangehoerigkeit != &#34;deutsch&#34;">
                              <section class="infobox narrow">Den Aufenthaltstitel des Kindes können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen.<br/><br/> Bei Daueraufenthaltsrecht nach § 4a FreizügG/EU (für EU/EWR/Schweiz) können Sie die Nachweise über Einkommen und Krankenkasse ebenfalls am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen.</section>
                           </cit:conditional>
                           <section class="infobox narrow">Die Geburtsurkunde des Kindes können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen.</section>
                           <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "leistungsbezugnachuvg") %>' data-live-stay="stay_nonval_d0e1428">
                              <cit:conditional test="!assistants.request.isValid('leistungsbezugnachuvg')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="leistungsbezugnachuvg"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="leistungsbezugnachuvg" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="leistungsbezugnachuvg" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="label">
                                 <span class="pseudoLabel">Für mein Kind wurden bereits Leistungen nach dem UVG bezogen.</span>
                              </div>
                              <div class="formline">
                                 <div class="inputcontainer choice-inline">
                                    <cit:choiceGroup type="boolean" name="leistungsbezugnachuvg">
                                       <div class="choice">
                                          <cit:inputChoice value="true" immediate="true"/>
                                          <cit:inputLabel name="leistungsbezugnachuvg.true">Ja</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="false" immediate="true"/>
                                          <cit:inputLabel name="leistungsbezugnachuvg.false">Nein</cit:inputLabel>
                                       </div>
                                    </cit:choiceGroup>
                                 </div>
                              </div>
                              <cit:inputSubmit type="stay.nonval.d0e1428" id="stay.nonval.d0e1428" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                              <script type="text/javascript">document.getElementById('stay_nonval_d0e1428').style.display='none';</script>
                              <cit:script>_unmask(myForm, "leistungsbezugnachuvg", "boolean");</cit:script>
                           </section>
                           <cit:conditional test="myForm.leistungsbezugnachuvg === true">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "leistungsbezugbehoerde") %>'>
                                 <cit:conditional test="!assistants.request.isValid('leistungsbezugbehoerde')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="leistungsbezugbehoerde"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="leistungsbezugbehoerde" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="leistungsbezugbehoerde" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="leistungsbezugbehoerde">Bei welcher Behörde wurden bereits Leistungen nach dem UVG bezogen?</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputText name="leistungsbezugbehoerde"/>
                                    </div>
                                 </div>
                                 <footer>Bezeichnung der Behörde/Jugendamt</footer>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.leistungsbezugnachuvg === true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "leistungsbezugvon") %>'>
                                 <cit:conditional test="!assistants.request.isValid('leistungsbezugvon')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="leistungsbezugvon"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="leistungsbezugvon" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="leistungsbezugvon" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="leistungsbezugvon">Zeitraum von</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputDate name="leistungsbezugvon" class="tiny focus-mark-before" showChooser="true" placeholder="TT.MM.JJJJ"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.leistungsbezugnachuvg === true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "leistungsbezugbis") %>'>
                                 <cit:conditional test="!assistants.request.isValid('leistungsbezugbis')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="leistungsbezugbis"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="leistungsbezugbis" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="leistungsbezugbis" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="leistungsbezugbis">bis</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputDate name="leistungsbezugbis" class="tiny focus-mark-before" showChooser="true" placeholder="TT.MM.JJJJ"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.leistungsbezugnachuvg === true">
                              <section class="infobox narrow">Den Bescheid des Leistungsbezugs Ihres Kindes nach UVG können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen.</section>
                           </cit:conditional>
                           <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "waisenrente") %>' data-live-stay="stay_nonval_d0e1473">
                              <cit:conditional test="!assistants.request.isValid('waisenrente')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="waisenrente"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="waisenrente" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="waisenrente" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="label">
                                 <span class="pseudoLabel">Bitte machen Sie eine Angabe zu den Waisenbezügen oder Schadenersatzleitungen Ihres Kindes:</span>
                              </div>
                              <div class="formline">
                                 <div class="inputcontainer">
                                    <cit:choiceGroup name="waisenrente">
                                       <div class="choice">
                                          <cit:inputChoice value="Ich erhalte für mein Kind keine Waisenbezüge oder Schadenersatzleistungen"/>
                                          <cit:inputLabel name="waisenrente.Ich erhalte für mein Kind keine Waisenbezüge oder Schadenersatzleistungen">Ich erhalte für mein Kind keine Waisenbezüge oder Schadenersatzleistungen</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="Ich erhalte für mein Kind Waisenbezüge oder Schadenersatzleistungen"/>
                                          <cit:inputLabel name="waisenrente.Ich erhalte für mein Kind Waisenbezüge oder Schadenersatzleistungen">Ich erhalte für mein Kind Waisenbezüge oder Schadenersatzleistungen</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="Ich habe für mein Kind einen Antrag auf Waisenbezüge gestellt"/>
                                          <cit:inputLabel name="waisenrente.Ich habe für mein Kind einen Antrag auf Waisenbezüge gestellt">Ich habe für mein Kind einen Antrag auf Waisenbezüge gestellt</cit:inputLabel>
                                       </div>
                                    </cit:choiceGroup>
                                 </div>
                              </div>
                              <cit:inputSubmit type="stay.nonval.d0e1473" id="stay.nonval.d0e1473" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                              <script type="text/javascript">document.getElementById('stay_nonval_d0e1473').style.display='none';</script>
                              <cit:script>_unmask(myForm, "waisenrente", "string");</cit:script>
                           </section>
                           <cit:conditional test="myForm.waisenrente === &#34;Ich erhalte für mein Kind Waisenbezüge oder Schadenersatzleistungen&#34;">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "waisenrentehoehe") %>'>
                                 <cit:conditional test="!assistants.request.isValid('waisenrentehoehe')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="waisenrentehoehe"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="waisenrentehoehe" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="waisenrentehoehe" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="waisenrentehoehe">Ich erhalte für mein Kind Waisenbezüge oder Schadenersatzleistungen in Höhe von monatlich</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputCurrency name="waisenrentehoehe" class="number rightalign use-size focus-mark-before" size="15"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.waisenrente === &#34;Ich erhalte für mein Kind Waisenbezüge oder Schadenersatzleistungen&#34;">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "waisenrenteleistungsstelle") %>'>
                                 <cit:conditional test="!assistants.request.isValid('waisenrenteleistungsstelle')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="waisenrenteleistungsstelle"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="waisenrenteleistungsstelle" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="waisenrenteleistungsstelle" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="waisenrenteleistungsstelle">von</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputText name="waisenrenteleistungsstelle"/>
                                    </div>
                                 </div>
                                 <footer>Bitte die Leistungsstelle angeben (Rententräger / Versicherung).</footer>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.waisenrente === &#34;Ich erhalte für mein Kind Waisenbezüge oder Schadenersatzleistungen&#34;">
                              <section class="infobox narrow">Den Bewilligungsbescheid der Waisenbezüge oder Schadensersatzleistungen für Ihr Kind können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen.</section>
                           </cit:conditional>
                           <cit:conditional test="myForm.waisenrente === &#34;Ich habe für mein Kind einen Antrag auf Waisenbezüge gestellt&#34;">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "antragwaisenbezuegegestelltam") %>'>
                                 <cit:conditional test="!assistants.request.isValid('antragwaisenbezuegegestelltam')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="antragwaisenbezuegegestelltam"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="antragwaisenbezuegegestelltam" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="antragwaisenbezuegegestelltam" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="antragwaisenbezuegegestelltam">am</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputDate name="antragwaisenbezuegegestelltam" class="tiny focus-mark-before" showChooser="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.waisenrente === &#34;Ich habe für mein Kind einen Antrag auf Waisenbezüge gestellt&#34;">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "waisenbezuegebehoerde") %>'>
                                 <cit:conditional test="!assistants.request.isValid('waisenbezuegebehoerde')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="waisenbezuegebehoerde"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="waisenbezuegebehoerde" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="waisenbezuegebehoerde" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="waisenbezuegebehoerde">bei</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputText name="waisenbezuegebehoerde"/>
                                    </div>
                                 </div>
                                 <footer>bitte die Behörde angeben</footer>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.waisenrente === &#34;Ich habe für mein Kind einen Antrag auf Waisenbezüge gestellt&#34;">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "waisenbezuegeaktenzeichen") %>'>
                                 <cit:conditional test="!assistants.request.isValid('waisenbezuegeaktenzeichen')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="waisenbezuegeaktenzeichen"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="waisenbezuegeaktenzeichen" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="waisenbezuegeaktenzeichen" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="waisenbezuegeaktenzeichen">Aktenzeichen</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputText name="waisenbezuegeaktenzeichen"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.waisenrente === &#34;Ich habe für mein Kind einen Antrag auf Waisenbezüge gestellt&#34;">
                              <section class="infobox narrow">Den Nachweis der Beantragung auf Waisenbezüge für Ihr Kind können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen.</section>
                           </cit:conditional>
                           <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "hilfelebensunterhalt") %>' data-live-stay="stay_nonval_d0e1554">
                              <cit:conditional test="!assistants.request.isValid('hilfelebensunterhalt')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="hilfelebensunterhalt"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="hilfelebensunterhalt" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="hilfelebensunterhalt" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="label">
                                 <span class="pseudoLabel">Ich</span>
                              </div>
                              <div class="formline">
                                 <div class="inputcontainer">
                                    <cit:choiceGroup name="hilfelebensunterhalt">
                                       <div class="choice">
                                          <cit:inputChoice value="habe bisher keine Hilfen zur Sicherung des Lebensunterhalts vom JobCenter / Sozialamt erhalten"/>
                                          <cit:inputLabel name="hilfelebensunterhalt.habe bisher keine Hilfen zur Sicherung des Lebensunterhalts vom JobCenter / Sozialamt erhalten">habe bisher keine Hilfen zur Sicherung des Lebensunterhalts vom JobCenter / Sozialamt erhalten</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="erhalte Hilfen zur Sicherung des Lebensunterhalts vom JobCenter / Sozialamt"/>
                                          <cit:inputLabel name="hilfelebensunterhalt.erhalte Hilfen zur Sicherung des Lebensunterhalts vom JobCenter / Sozialamt">erhalte Hilfen zur Sicherung des Lebensunterhalts vom JobCenter / Sozialamt</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="werde demnächst Hilfen beantragen müssen"/>
                                          <cit:inputLabel name="hilfelebensunterhalt.werde demnächst Hilfen beantragen müssen">werde demnächst Hilfen beantragen müssen</cit:inputLabel>
                                       </div>
                                    </cit:choiceGroup>
                                 </div>
                              </div>
                              <cit:inputSubmit type="stay.nonval.d0e1554" id="stay.nonval.d0e1554" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                              <script type="text/javascript">document.getElementById('stay_nonval_d0e1554').style.display='none';</script>
                              <cit:script>_unmask(myForm, "hilfelebensunterhalt", "string");</cit:script>
                           </section>
                           <cit:conditional test="myForm.hilfelebensunterhalt === &#34;erhalte Hilfen zur Sicherung des Lebensunterhalts vom JobCenter / Sozialamt&#34;">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "hilfelebensunterhaltnr") %>'>
                                 <cit:conditional test="!assistants.request.isValid('hilfelebensunterhaltnr')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="hilfelebensunterhaltnr"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="hilfelebensunterhaltnr" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="hilfelebensunterhaltnr" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="hilfelebensunterhaltnr">Aktenzeichen oder Bedarfsgemeinschaftsnummer</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputText name="hilfelebensunterhaltnr"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.hilfelebensunterhalt === &#34;erhalte Hilfen zur Sicherung des Lebensunterhalts vom JobCenter / Sozialamt&#34;">
                              <section class="infobox narrow">Den Bescheid über die Hilfen zur Sicherung des Lebensunterhalts können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen.</section>
                           </cit:conditional>
                           <cit:conditional test="myForm.hilfelebensunterhalt === &#34;werde demnächst Hilfen beantragen müssen&#34;">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "hilfelebensunterhaltbegruendung") %>'>
                                 <cit:conditional test="!assistants.request.isValid('hilfelebensunterhaltbegruendung')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="hilfelebensunterhaltbegruendung"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="hilfelebensunterhaltbegruendung" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="hilfelebensunterhaltbegruendung" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="hilfelebensunterhaltbegruendung">weil</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputTextarea name="hilfelebensunterhaltbegruendung" maxlength="400"/>
                                    </div>
                                    <aside>
                                       <noscript>Max. 400 Zeichen</noscript>
                                       <span id="d0e1587-counter" class="textarea-counter">Noch <span id="hilfelebensunterhaltbegruendung_remaining">0</span>/400 Zeichen</span>
                                    </aside>
                                    <script type="text/javascript">document.getElementById('d0e1587-counter').style.display='inline';</script>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:xmlResource id="C00000002" src="/WEB-INF/data/staatsangehoerigkeit_2019-04-01.xml"/>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
                           <h3 class="accessibility">Dialogverlauf</h3>
                           <span class="switch" title="Dialogverlauf öffnen/schließen">
                              <span class="accessibility">Dialogverlauf öffnen/schließen</span>
                           </span>
                           <ul class="icons"><% final boolean unvisited_d31e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d31e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                                    <a href="" class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d31e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d31e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d31e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d31e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d31e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d31e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                                    <a href="" class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d31e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d31e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d31e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d31e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d31e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='past<%= unvisited_d31e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d31e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d31e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d31e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d31e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d31e8 = !isVisited(session, "weitere-angaben-antragsteller-in"); %><li class='past<%= unvisited_d31e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-antragsteller-in") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-antragsteller-in">
                                    <a href="" class="label">
                                       <span class="labeltext">Weitere Angaben Antragsteller/in</span>
                                       <span class="labelicon" title='<%= unvisited_d31e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d31e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben Antragsteller/in</span>
                                       <span class="labelicon" title='<%= unvisited_d31e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d31e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d31e10 = !isVisited(session, "angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='present<%= unvisited_d31e10 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d31e10 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d31e10 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e12 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='future<%= unvisited_d31e12 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d31e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e14 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='future<%= unvisited_d31e14 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d31e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e16 = !isVisited(session, "angaben-anderer-elternteil-1-3"); %><li class='future<%= unvisited_d31e16 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben anderer Elternteil (1/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d31e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e18 = !isVisited(session, "angaben-anderer-elternteil-2-3"); %><li class='future<%= unvisited_d31e18 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben anderer Elternteil (2/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d31e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e20 = !isVisited(session, "angaben-anderer-elternteil-3-3"); %><li class='future<%= unvisited_d31e20 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben anderer Elternteil (3/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d31e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e22 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d31e22 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d31e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e24 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d31e24 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d31e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e26 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d31e26 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d31e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e28 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d31e28 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d31e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e30 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d31e30 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Nachweise</span>
                                       <span class="labelicon" title='<%= unvisited_d31e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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