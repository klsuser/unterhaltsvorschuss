<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("angaben-anderes-elternteil"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("angaben-anderes-elternteil"); %>

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
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Angaben anderes Elternteil</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow/>
      </cit:control>
   </head>
   <body id="angaben-anderes-elternteil">
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
               <ul class="icons"><% final boolean unvisited_d50e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d50e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                        <a href="" class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d50e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d50e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d50e4 = !isVisited(session, "antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung"); %><li class='past<%= unvisited_d50e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung") != null) { %><span class="item clickable" data-submit-value="resync.antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung">
                        <a href="" class="label">
                           <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                           <span class="labelicon" title='<%= unvisited_d50e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                           <span class="labelicon" title='<%= unvisited_d50e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d50e6 = !isVisited(session, "weitere-angaben-antragsteller-in"); %><li class='past<%= unvisited_d50e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-antragsteller-in") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-antragsteller-in">
                        <a href="" class="label">
                           <span class="labeltext">Weitere Angaben Antragsteller/in</span>
                           <span class="labelicon" title='<%= unvisited_d50e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben Antragsteller/in</span>
                           <span class="labelicon" title='<%= unvisited_d50e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d50e8 = !isVisited(session, "angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d50e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d50e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d50e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d50e10 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='past<%= unvisited_d50e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("betreuung-des-anderen-elternteiles") != null) { %><span class="item clickable" data-submit-value="resync.betreuung-des-anderen-elternteiles">
                        <a href="" class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d50e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d50e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d50e12 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d50e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.demnaechst-vollenden-werden">
                        <a href="" class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d50e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d50e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d50e14 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='past<%= unvisited_d50e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("vormundschaft-beistandschaft-rechtsbeistand") != null) { %><span class="item clickable" data-submit-value="resync.vormundschaft-beistandschaft-rechtsbeistand">
                        <a href="" class="label">
                           <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d50e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d50e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d50e16 = !isVisited(session, "angaben-anderes-elternteil"); %><li class='present<%= unvisited_d50e16 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben anderes Elternteil</span>
                           <span class="labelicon" title='<%= unvisited_d50e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d50e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d50e18 = !isVisited(session, "weitere-angaben-zum-anderen-elternteil"); %><li class='future<%= unvisited_d50e18 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben zum anderen Elternteil</span>
                           <span class="labelicon" title='<%= unvisited_d50e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d50e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d50e20 = !isVisited(session, "bezuege"); %><li class='future<%= unvisited_d50e20 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Bezüge</span>
                           <span class="labelicon" title='<%= unvisited_d50e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d50e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d50e22 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d50e22 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d50e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d50e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d50e24 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d50e24 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d50e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d50e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d50e26 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d50e26 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d50e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d50e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">Angaben anderes Elternteil</h2>
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
                           <cit:xmlResource id="C00000002" src="/WEB-INF/data/staatsangehoerigkeit_2019-04-01.xml"/>
                           <cit:xmlResource id="C00000009" src="/WEB-INF/data/staat_2019-04-01.xml"/>
                           <cit:xmlResource id="C00000009" src="/WEB-INF/data/staat_2019-04-01.xml"/>
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
                                 <cit:inputLabel name="name">Name:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputText name="name"/>
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
                                 <cit:inputLabel name="vorname">Vorname:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputText name="vorname"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "strasse") %>'>
                              <cit:conditional test="!assistants.request.isValid('strasse')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="strasse"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="strasse" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="strasse" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="strasse">Straße:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputText name="strasse"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "hausnummer") %>'>
                              <cit:conditional test="!assistants.request.isValid('hausnummer')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="hausnummer"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="hausnummer" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="hausnummer" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="hausnummer">Hausnummer:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputText name="hausnummer"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "postleitzahl") %>'>
                              <cit:conditional test="!assistants.request.isValid('postleitzahl')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="postleitzahl"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="postleitzahl" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="postleitzahl" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="postleitzahl">Postleitzahl:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputNumber name="postleitzahl" class="number rightalign use-size" size="15"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "ort") %>'>
                              <cit:conditional test="!assistants.request.isValid('ort')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="ort"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="ort" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="ort" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="ort">Ort:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputText name="ort"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "land") %>'>
                              <cit:conditional test="!assistants.request.isValid('land')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="land"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="land" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="land" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="land">Land:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputSelect name="land" default="Deutschland">
                                       <cit:xmlOptions src="urn:xmlid:C00000009" select="/*/SimpleCodeList/Row" text="Value[@ColumnRef=&#34;Staatsname_kurz&#34;]/SimpleValue"/>
                                    </cit:inputSelect>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "geburtsdatum") %>'>
                              <cit:conditional test="!assistants.request.isValid('geburtsdatum')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="geburtsdatum"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
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
                                 <cit:inputLabel name="geburtsdatum">Geburtsdatum:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputDate name="geburtsdatum" class="tiny focus-mark-before" showChooser="true"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "staatsangehoerigkeit") %>'>
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
                                 <cit:inputLabel name="staatsangehoerigkeit">Staatsangehörigkeit:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputSelect name="staatsangehoerigkeit" default="deutsch">
                                       <cit:xmlOptions src="urn:xmlid:C00000002" select="/*/SimpleCodeList/Row/Value[@ColumnRef=&#34;Staatsangehoerigkeit&#34;]" text="SimpleValue"/>
                                    </cit:inputSelect>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow" data-comments='<%= getComments(pageContext.getAttribute("form"), "familienstand") %>'>
                              <cit:conditional test="!assistants.request.isValid('familienstand')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="familienstand"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="familienstand" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="familienstand" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="familienstand">Familienstand</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputSelect name="familienstand">
                                       <cit:option value="ledig">ledig</cit:option>
                                       <cit:option value="verheiratet">verheiratet</cit:option>
                                       <cit:option value="verwitwet">verwitwet</cit:option>
                                       <cit:option value="geschieden">geschieden</cit:option>
                                       <cit:option value="Ehe aufgehoben">Ehe aufgehoben</cit:option>
                                       <cit:option value="in eingetragener Lebenspartnerschaft">in eingetragener Lebenspartnerschaft</cit:option>
                                       <cit:option value="durch Tod aufgelöste Lebenspartnerschaft">durch Tod aufgelöste Lebenspartnerschaft</cit:option>
                                       <cit:option value="aufgehobene Lebenspartnerschaft">aufgehobene Lebenspartnerschaft</cit:option>
                                       <cit:option value="durch Todeserklärung aufgelöste Lebenspartnerschaft">durch Todeserklärung aufgelöste Lebenspartnerschaft</cit:option>
                                       <cit:option value="nicht bekannt">nicht bekannt</cit:option>
                                    </cit:inputSelect>
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
                           <section class="block narrow" data-comments='<%= getComments(pageContext.getAttribute("form"), "geburtsland") %>'>
                              <cit:conditional test="!assistants.request.isValid('geburtsland')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="geburtsland"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="geburtsland" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="geburtsland" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="geburtsland">Geburtsland</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputSelect name="geburtsland" default="Deutschland">
                                       <cit:xmlOptions src="urn:xmlid:C00000009" select="/*/SimpleCodeList/Row" text="Value[@ColumnRef=&#34;Staatsname_kurz&#34;]/SimpleValue"/>
                                    </cit:inputSelect>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "telefon") %>'>
                              <cit:conditional test="!assistants.request.isValid('telefon')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="telefon"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="telefon" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="telefon" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="telefon">Telefon:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputNumber name="telefon" class="number rightalign use-size" size="15"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "emailadresse") %>'>
                              <cit:conditional test="!assistants.request.isValid('emailadresse')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="emailadresse"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="emailadresse" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="emailadresse" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="emailadresse">E-Mail-Adresse</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputText name="emailadresse"/>
                                 </div>
                              </div>
                           </section>
                           <section class="group narrow">
                              <header>
                                 <h3>Angaben Vaterschaft</h3>
                              </header>
                              <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "kindehelich") %>' data-live-stay="stay_nonval_d0e1904">
                                 <cit:conditional test="!assistants.request.isValid('kindehelich')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="kindehelich"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="kindehelich" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="kindehelich" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <span class="pseudoLabel">Ist das Kind ehelich geboren?</span>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:choiceGroup name="kindehelich">
                                          <div class="choice">
                                             <cit:inputChoice value="Ja"/>
                                             <cit:inputLabel name="kindehelich.Ja">Ja</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="Nein"/>
                                             <cit:inputLabel name="kindehelich.Nein">Nein</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="Vaterschaft nicht feststellbar"/>
                                             <cit:inputLabel name="kindehelich.Vaterschaft nicht feststellbar">Vaterschaft nicht feststellbar</cit:inputLabel>
                                          </div>
                                       </cit:choiceGroup>
                                    </div>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e1904" id="stay.nonval.d0e1904" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e1904').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "kindehelich", "string");</cit:script>
                              </section>
                              <cit:conditional test="myForm.kindehelich === &#34;Ja&#34;">
                                 <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "ehemannnichtvater") %>' data-live-stay="stay_nonval_d0e1922">
                                    <cit:conditional test="!assistants.request.isValid('ehemannnichtvater')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="ehemannnichtvater"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="ehemannnichtvater" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="ehemannnichtvater" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <span class="pseudoLabel">Das Kind gilt als eheliches Kind, der Ehemann ist jedoch nicht der Vater des Kindes.</span>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer choice-inline">
                                          <cit:choiceGroup type="boolean" name="ehemannnichtvater">
                                             <div class="choice">
                                                <cit:inputChoice value="true" immediate="true"/>
                                                <cit:inputLabel name="ehemannnichtvater.true">Ja</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="false" immediate="true"/>
                                                <cit:inputLabel name="ehemannnichtvater.false">Nein</cit:inputLabel>
                                             </div>
                                          </cit:choiceGroup>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e1922" id="stay.nonval.d0e1922" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e1922').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "ehemannnichtvater", "boolean");</cit:script>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.ehemannnichtvater === false">
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "geburtsurkunde") %>'>
                                    <cit:conditional test="!assistants.request.isValid('geburtsurkunde')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="geburtsurkunde"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="geburtsurkunde" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="geburtsurkunde" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="geburtsurkunde">Bitte fügen Sie die Geburtsurkunde hinzu.</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputFile name="geburtsurkunde"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.ehemannnichtvater == true || myForm.ehemannnichtvater == false">
                                 <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vaterschaftsanfechtungsklage") %>' data-live-stay="stay_nonval_d0e1940">
                                    <cit:conditional test="!assistants.request.isValid('vaterschaftsanfechtungsklage')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="vaterschaftsanfechtungsklage"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vaterschaftsanfechtungsklage" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vaterschaftsanfechtungsklage" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <span class="pseudoLabel">Ist eine Vaterschaftsanfechtungsklage anhängig?</span>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer choice-inline">
                                          <cit:choiceGroup type="boolean" name="vaterschaftsanfechtungsklage">
                                             <div class="choice">
                                                <cit:inputChoice value="true" immediate="true"/>
                                                <cit:inputLabel name="vaterschaftsanfechtungsklage.true">Ja</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="false" immediate="true"/>
                                                <cit:inputLabel name="vaterschaftsanfechtungsklage.false">Nein</cit:inputLabel>
                                             </div>
                                          </cit:choiceGroup>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e1940" id="stay.nonval.d0e1940" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e1940').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "vaterschaftsanfechtungsklage", "boolean");</cit:script>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.vaterschaftsanfechtungsklage === true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vaterschaftsanfechtungsklageamtsgericht") %>'>
                                    <cit:conditional test="!assistants.request.isValid('vaterschaftsanfechtungsklageamtsgericht')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="vaterschaftsanfechtungsklageamtsgericht"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vaterschaftsanfechtungsklageamtsgericht" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vaterschaftsanfechtungsklageamtsgericht" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="vaterschaftsanfechtungsklageamtsgericht">Eine Vaterschaftsanfechtungsklage ist bereits anhängig bei:</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="vaterschaftsanfechtungsklageamtsgericht"/>
                                       </div>
                                    </div>
                                    <footer>Bitte Amtsgericht angeben.</footer>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.kindehelich == &#34;Nein&#34;">
                                 <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vaterschaftanerkannt") %>' data-live-stay="stay_nonval_d0e1961">
                                    <cit:conditional test="!assistants.request.isValid('vaterschaftanerkannt')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="vaterschaftanerkannt"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vaterschaftanerkannt" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vaterschaftanerkannt" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <span class="pseudoLabel">Ist die Vaterschaft anerkannt?</span>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer choice-inline">
                                          <cit:choiceGroup type="boolean" name="vaterschaftanerkannt">
                                             <div class="choice">
                                                <cit:inputChoice value="true" immediate="true"/>
                                                <cit:inputLabel name="vaterschaftanerkannt.true">Ja</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="false" immediate="true"/>
                                                <cit:inputLabel name="vaterschaftanerkannt.false">Nein</cit:inputLabel>
                                             </div>
                                          </cit:choiceGroup>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e1961" id="stay.nonval.d0e1961" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e1961').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "vaterschaftanerkannt", "boolean");</cit:script>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.vaterschaftanerkannt == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vaterschafturkunde") %>'>
                                    <cit:conditional test="!assistants.request.isValid('vaterschafturkunde')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="vaterschafturkunde"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vaterschafturkunde" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vaterschafturkunde" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="vaterschafturkunde">Bitte Urkunde/Urteil/Beschluss hochladen. Sollten Sie bereits die Geburtsurkunde hochgeladen haben, werden hier keine weiteren Nachweise benötigt.</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputFile name="vaterschafturkunde"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.vaterschaftanerkannt == false">
                                 <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "antragauffeststellungvaterschaft") %>' data-live-stay="stay_nonval_d0e1979">
                                    <cit:conditional test="!assistants.request.isValid('antragauffeststellungvaterschaft')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="antragauffeststellungvaterschaft"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="antragauffeststellungvaterschaft" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="antragauffeststellungvaterschaft" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <span class="pseudoLabel">Wurde ein Antrag auf Feststellung der Vaterschaft gestellt?</span>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer choice-inline">
                                          <cit:choiceGroup type="boolean" name="antragauffeststellungvaterschaft">
                                             <div class="choice">
                                                <cit:inputChoice value="true" immediate="true"/>
                                                <cit:inputLabel name="antragauffeststellungvaterschaft.true">Ja</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="false" immediate="true"/>
                                                <cit:inputLabel name="antragauffeststellungvaterschaft.false">Nein</cit:inputLabel>
                                             </div>
                                          </cit:choiceGroup>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e1979" id="stay.nonval.d0e1979" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e1979').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "antragauffeststellungvaterschaft", "boolean");</cit:script>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.antragauffeststellungvaterschaft == true">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vaterschaftsfeststellungsverfahrenbei") %>'>
                                    <cit:conditional test="!assistants.request.isValid('vaterschaftsfeststellungsverfahrenbei')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="vaterschaftsfeststellungsverfahrenbei"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vaterschaftsfeststellungsverfahrenbei" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vaterschaftsfeststellungsverfahrenbei" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="vaterschaftsfeststellungsverfahrenbei">Ein Vaterschaftsfeststellungsverfahren ist bereits eingeleitet durch/bei</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="vaterschaftsfeststellungsverfahrenbei"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.antragauffeststellungvaterschaft == false">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vaterschaftnochnichtfestgestelltweil") %>'>
                                    <cit:conditional test="!assistants.request.isValid('vaterschaftnochnichtfestgestelltweil')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="vaterschaftnochnichtfestgestelltweil"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vaterschaftnochnichtfestgestelltweil" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vaterschaftnochnichtfestgestelltweil" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="vaterschaftnochnichtfestgestelltweil">Die Vaterschaft ist noch nicht festgestellt, weil</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputTextarea name="vaterschaftnochnichtfestgestelltweil"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.kindehelich == &#34;Vaterschaft nicht feststellbar&#34;">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vaterschaftnichtfeststellbarweil") %>'>
                                    <cit:conditional test="!assistants.request.isValid('vaterschaftnichtfeststellbarweil')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="vaterschaftnichtfeststellbarweil"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vaterschaftnichtfeststellbarweil" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vaterschaftnichtfeststellbarweil" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="vaterschaftnichtfeststellbarweil">weil</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputTextarea name="vaterschaftnichtfeststellbarweil"/>
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
                           <ul class="icons"><% final boolean unvisited_d53e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d53e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                                    <a href="" class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d53e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d53e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d53e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d53e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d53e4 = !isVisited(session, "antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung"); %><li class='past<%= unvisited_d53e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung") != null) { %><span class="item clickable" data-submit-value="resync.antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung">
                                    <a href="" class="label">
                                       <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                                       <span class="labelicon" title='<%= unvisited_d53e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d53e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                                       <span class="labelicon" title='<%= unvisited_d53e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d53e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d53e6 = !isVisited(session, "weitere-angaben-antragsteller-in"); %><li class='past<%= unvisited_d53e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-antragsteller-in") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-antragsteller-in">
                                    <a href="" class="label">
                                       <span class="labeltext">Weitere Angaben Antragsteller/in</span>
                                       <span class="labelicon" title='<%= unvisited_d53e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d53e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben Antragsteller/in</span>
                                       <span class="labelicon" title='<%= unvisited_d53e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d53e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d53e8 = !isVisited(session, "angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d53e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d53e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d53e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d53e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d53e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d53e10 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='past<%= unvisited_d53e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("betreuung-des-anderen-elternteiles") != null) { %><span class="item clickable" data-submit-value="resync.betreuung-des-anderen-elternteiles">
                                    <a href="" class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d53e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d53e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d53e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d53e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d53e12 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d53e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.demnaechst-vollenden-werden">
                                    <a href="" class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d53e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d53e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d53e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d53e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d53e14 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='past<%= unvisited_d53e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("vormundschaft-beistandschaft-rechtsbeistand") != null) { %><span class="item clickable" data-submit-value="resync.vormundschaft-beistandschaft-rechtsbeistand">
                                    <a href="" class="label">
                                       <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d53e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d53e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d53e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d53e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d53e16 = !isVisited(session, "angaben-anderes-elternteil"); %><li class='present<%= unvisited_d53e16 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben anderes Elternteil</span>
                                       <span class="labelicon" title='<%= unvisited_d53e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d53e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d53e18 = !isVisited(session, "weitere-angaben-zum-anderen-elternteil"); %><li class='future<%= unvisited_d53e18 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben zum anderen Elternteil</span>
                                       <span class="labelicon" title='<%= unvisited_d53e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d53e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d53e20 = !isVisited(session, "bezuege"); %><li class='future<%= unvisited_d53e20 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Bezüge</span>
                                       <span class="labelicon" title='<%= unvisited_d53e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d53e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d53e22 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d53e22 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d53e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d53e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d53e24 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d53e24 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d53e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d53e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d53e26 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d53e26 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d53e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d53e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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