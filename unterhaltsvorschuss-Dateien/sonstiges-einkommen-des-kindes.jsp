<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("sonstiges-einkommen-des-kindes"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("sonstiges-einkommen-des-kindes"); %>

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
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Sonstiges Einkommen des Kindes</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow>
            <cit:do action="goto" href="einkommen-des-elternteils-bei-dem-das-kind-lebt.jsp"/>
         </cit:flow>
      </cit:control>
   </head>
   <body id="sonstiges-einkommen-des-kindes">
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
               <ul class="icons"><% final boolean unvisited_d47e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d47e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                        <a href="" class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d47e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d47e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d47e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d47e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d47e4 = !isVisited(session, "antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung"); %><li class='past<%= unvisited_d47e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung") != null) { %><span class="item clickable" data-submit-value="resync.antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung">
                        <a href="" class="label">
                           <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                           <span class="labelicon" title='<%= unvisited_d47e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d47e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                           <span class="labelicon" title='<%= unvisited_d47e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d47e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d47e6 = !isVisited(session, "weitere-angaben-antragsteller"); %><li class='past<%= unvisited_d47e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-antragsteller") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-antragsteller">
                        <a href="" class="label">
                           <span class="labeltext">Weitere Angaben Antragsteller</span>
                           <span class="labelicon" title='<%= unvisited_d47e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d47e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben Antragsteller</span>
                           <span class="labelicon" title='<%= unvisited_d47e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d47e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d47e8 = !isVisited(session, "angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d47e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d47e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d47e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d47e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d47e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d47e10 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='past<%= unvisited_d47e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("betreuung-des-anderen-elternteiles") != null) { %><span class="item clickable" data-submit-value="resync.betreuung-des-anderen-elternteiles">
                        <a href="" class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d47e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d47e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d47e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d47e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d47e12 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d47e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.demnaechst-vollenden-werden">
                        <a href="" class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d47e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d47e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d47e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d47e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d47e14 = !isVisited(session, "zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist"); %><li class='past<%= unvisited_d47e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist") != null) { %><span class="item clickable" data-submit-value="resync.zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist">
                        <a href="" class="label">
                           <span class="labeltext">Zusätzliche Angaben für den Fall, dass das Kind 15, 16 oder 17 Jahre alt ist</span>
                           <span class="labelicon" title='<%= unvisited_d47e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d47e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Zusätzliche Angaben für den Fall, dass das Kind 15, 16 oder 17 Jahre alt ist</span>
                           <span class="labelicon" title='<%= unvisited_d47e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d47e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d47e16 = !isVisited(session, "sonstiges-einkommen-des-kindes"); %><li class='present<%= unvisited_d47e16 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Sonstiges Einkommen des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d47e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d47e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d47e18 = !isVisited(session, "einkommen-des-elternteils-bei-dem-das-kind-lebt"); %><li class='future<%= unvisited_d47e18 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Einkommen des Elternteils, bei dem das Kind lebt</span>
                           <span class="labelicon" title='<%= unvisited_d47e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d47e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d47e20 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='future<%= unvisited_d47e20 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d47e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d47e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d47e22 = !isVisited(session, "angaben-anderes-elternteil"); %><li class='future<%= unvisited_d47e22 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben anderes Elternteil</span>
                           <span class="labelicon" title='<%= unvisited_d47e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d47e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d47e24 = !isVisited(session, "weitere-angaben-zum-anderen-elternteil"); %><li class='future<%= unvisited_d47e24 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben zum anderen Elternteil</span>
                           <span class="labelicon" title='<%= unvisited_d47e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d47e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d47e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d47e26 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d47e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d47e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d47e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d47e28 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d47e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d47e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d47e30 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d47e30 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d47e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d47e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">Sonstiges Einkommen des Kindes</h2>
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
                           <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "kindeinkuenfte") %>' data-live-stay="stay_nonval_d0e1287">
                              <cit:conditional test="!assistants.request.isValid('kindeinkuenfte')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="kindeinkuenfte"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="kindeinkuenfte" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="kindeinkuenfte" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="label">
                                 <span class="pseudoLabel">Das Kind bezieht Einkünfte</span>
                              </div>
                              <div class="formline">
                                 <div class="inputcontainer choice-inline">
                                    <cit:choiceGroup type="boolean" name="kindeinkuenfte">
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
                              <cit:inputSubmit type="stay.nonval.d0e1287" id="stay.nonval.d0e1287" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                              <script type="text/javascript">document.getElementById('stay_nonval_d0e1287').style.display='none';</script>
                              <cit:script>_unmask(myForm, "kindeinkuenfte", "boolean");</cit:script>
                           </section>
                           <cit:conditional test="myForm.kindeinkuenfte == true">
                              <section class="infobox narrow">Das Kind bezieht folgende Einkünfte:</section>
                           </cit:conditional>
                           <cit:conditional test="myForm.kindeinkuenfte == true">
                              <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "kindhalbwaisenrente") %>' data-live-stay="stay_nonval_d0e1302">
                                 <cit:conditional test="!assistants.request.isValid('kindhalbwaisenrente')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="kindhalbwaisenrente"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="kindhalbwaisenrente" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="kindhalbwaisenrente" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <span class="pseudoLabel">Halbwaisenrente</span>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer choice-inline">
                                       <cit:choiceGroup type="boolean" name="kindhalbwaisenrente">
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
                                 <cit:inputSubmit type="stay.nonval.d0e1302" id="stay.nonval.d0e1302" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e1302').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "kindhalbwaisenrente", "boolean");</cit:script>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.kindhalbwaisenrente == true">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "halbwaisenrentehoehe") %>'>
                                 <cit:conditional test="!assistants.request.isValid('halbwaisenrentehoehe')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="halbwaisenrentehoehe"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="halbwaisenrentehoehe" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="halbwaisenrentehoehe" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="halbwaisenrentehoehe">Halbwaisenrente in Höhe von monatlich</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputCurrency name="halbwaisenrentehoehe" class="number rightalign use-size focus-mark-before" size="15"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.kindhalbwaisenrente == true">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "nachweishalbwaisenrente") %>'>
                                 <cit:conditional test="!assistants.request.isValid('nachweishalbwaisenrente')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="nachweishalbwaisenrente"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="nachweishalbwaisenrente" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="nachweishalbwaisenrente" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="nachweishalbwaisenrente">Bitte laden Sie den Nachweis über die Halbwaisenrente hoch</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputFile name="nachweishalbwaisenrente"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.kindeinkuenfte == true">
                              <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "schadensersatzleistungen") %>' data-live-stay="stay_nonval_d0e1329">
                                 <cit:conditional test="!assistants.request.isValid('schadensersatzleistungen')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="schadensersatzleistungen"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="schadensersatzleistungen" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="schadensersatzleistungen" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <span class="pseudoLabel">Schadenersatzleistungen, die wegen des Todes des anderen Elternteils oder eines Stiefelternteils gezahlt werden</span>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer choice-inline">
                                       <cit:choiceGroup type="boolean" name="schadensersatzleistungen">
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
                                 <cit:inputSubmit type="stay.nonval.d0e1329" id="stay.nonval.d0e1329" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e1329').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "schadensersatzleistungen", "boolean");</cit:script>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.schadensersatzleistungen == true">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "nachweisschadensersatzleistungen") %>'>
                                 <cit:conditional test="!assistants.request.isValid('nachweisschadensersatzleistungen')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="nachweisschadensersatzleistungen"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="nachweisschadensersatzleistungen" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="nachweisschadensersatzleistungen" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="nachweisschadensersatzleistungen">Bitte laden Sie den Nachweis der Schadensersatzleistungen hoch</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputFile name="nachweisschadensersatzleistungen"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.kindeinkuenfte == true">
                              <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "nichtselbststaendigearbeit") %>' data-live-stay="stay_nonval_d0e1347">
                                 <cit:conditional test="!assistants.request.isValid('nichtselbststaendigearbeit')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="nichtselbststaendigearbeit"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="nichtselbststaendigearbeit" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="nichtselbststaendigearbeit" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <span class="pseudoLabel">Einkünfte aus nichtselbstständiger Arbeit, Ausbildung, Freiwilligendienst</span>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer choice-inline">
                                       <cit:choiceGroup type="boolean" name="nichtselbststaendigearbeit">
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
                                 <cit:inputSubmit type="stay.nonval.d0e1347" id="stay.nonval.d0e1347" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e1347').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "nichtselbststaendigearbeit", "boolean");</cit:script>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.nichtselbststaendigearbeit == true">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "nachweisnichtselbststaendigearbeit") %>'>
                                 <cit:conditional test="!assistants.request.isValid('nachweisnichtselbststaendigearbeit')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="nachweisnichtselbststaendigearbeit"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="nachweisnichtselbststaendigearbeit" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="nachweisnichtselbststaendigearbeit" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="nachweisnichtselbststaendigearbeit">nachweisnichtselbststaendigearbeit:</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputFile name="nachweisnichtselbststaendigearbeit"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.kindeinkuenfte == true">
                              <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "selbststaendigearbeit") %>' data-live-stay="stay_nonval_d0e1365">
                                 <cit:conditional test="!assistants.request.isValid('selbststaendigearbeit')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="selbststaendigearbeit"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="selbststaendigearbeit" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="selbststaendigearbeit" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <span class="pseudoLabel">Einkünfte aus Land- oder Forstwirtschaft, Gewerbebetrieb oder selbstständiger Tätigkeit</span>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer choice-inline">
                                       <cit:choiceGroup type="boolean" name="selbststaendigearbeit">
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
                                 <cit:inputSubmit type="stay.nonval.d0e1365" id="stay.nonval.d0e1365" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e1365').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "selbststaendigearbeit", "boolean");</cit:script>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.selbststaendigearbeit == true">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "nachweisselbststaendigearbeit") %>'>
                                 <cit:conditional test="!assistants.request.isValid('nachweisselbststaendigearbeit')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="nachweisselbststaendigearbeit"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="nachweisselbststaendigearbeit" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="nachweisselbststaendigearbeit" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="nachweisselbststaendigearbeit">Bitte Laden Sie die Nachweise über Einkünfte aus Land- oder Forstwirtschaft, Gewerbebetrieb oder selbstständiger Tätigkeit hoch</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputFile name="nachweisselbststaendigearbeit"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.kindeinkuenfte == true">
                              <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "kapitalvermoegen") %>' data-live-stay="stay_nonval_d0e1383">
                                 <cit:conditional test="!assistants.request.isValid('kapitalvermoegen')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="kapitalvermoegen"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="kapitalvermoegen" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="kapitalvermoegen" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <span class="pseudoLabel">Einkünfte aus Kapitalvermögen, Vermietung oder Verpachtung</span>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer choice-inline">
                                       <cit:choiceGroup type="boolean" name="kapitalvermoegen">
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
                                 <cit:inputSubmit type="stay.nonval.d0e1383" id="stay.nonval.d0e1383" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e1383').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "kapitalvermoegen", "boolean");</cit:script>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.kapitalvermoegen == true">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "nachweiskapitalvermoegen") %>'>
                                 <cit:conditional test="!assistants.request.isValid('nachweiskapitalvermoegen')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="nachweiskapitalvermoegen"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="nachweiskapitalvermoegen" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="nachweiskapitalvermoegen" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="nachweiskapitalvermoegen">Bitte laden Sie den Nachweis über Einkünfte aus Kapitalvermögen, Vermietung oder Verpachtung hoch</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputFile name="nachweiskapitalvermoegen"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
                           <h3 class="accessibility">Dialogverlauf</h3>
                           <span class="switch" title="Dialogverlauf öffnen/schließen">
                              <span class="accessibility">Dialogverlauf öffnen/schließen</span>
                           </span>
                           <ul class="icons"><% final boolean unvisited_d49e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d49e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                                    <a href="" class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d49e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d49e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d49e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d49e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d49e4 = !isVisited(session, "antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung"); %><li class='past<%= unvisited_d49e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung") != null) { %><span class="item clickable" data-submit-value="resync.antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung">
                                    <a href="" class="label">
                                       <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                                       <span class="labelicon" title='<%= unvisited_d49e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d49e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                                       <span class="labelicon" title='<%= unvisited_d49e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d49e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d49e6 = !isVisited(session, "weitere-angaben-antragsteller"); %><li class='past<%= unvisited_d49e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-antragsteller") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-antragsteller">
                                    <a href="" class="label">
                                       <span class="labeltext">Weitere Angaben Antragsteller</span>
                                       <span class="labelicon" title='<%= unvisited_d49e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d49e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben Antragsteller</span>
                                       <span class="labelicon" title='<%= unvisited_d49e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d49e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d49e8 = !isVisited(session, "angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d49e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d49e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d49e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d49e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d49e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d49e10 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='past<%= unvisited_d49e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("betreuung-des-anderen-elternteiles") != null) { %><span class="item clickable" data-submit-value="resync.betreuung-des-anderen-elternteiles">
                                    <a href="" class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d49e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d49e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d49e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d49e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d49e12 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d49e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.demnaechst-vollenden-werden">
                                    <a href="" class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d49e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d49e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d49e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d49e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d49e14 = !isVisited(session, "zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist"); %><li class='past<%= unvisited_d49e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist") != null) { %><span class="item clickable" data-submit-value="resync.zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist">
                                    <a href="" class="label">
                                       <span class="labeltext">Zusätzliche Angaben für den Fall, dass das Kind 15, 16 oder 17 Jahre alt ist</span>
                                       <span class="labelicon" title='<%= unvisited_d49e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d49e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Zusätzliche Angaben für den Fall, dass das Kind 15, 16 oder 17 Jahre alt ist</span>
                                       <span class="labelicon" title='<%= unvisited_d49e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d49e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d49e16 = !isVisited(session, "sonstiges-einkommen-des-kindes"); %><li class='present<%= unvisited_d49e16 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Sonstiges Einkommen des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d49e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d49e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d49e18 = !isVisited(session, "einkommen-des-elternteils-bei-dem-das-kind-lebt"); %><li class='future<%= unvisited_d49e18 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Einkommen des Elternteils, bei dem das Kind lebt</span>
                                       <span class="labelicon" title='<%= unvisited_d49e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d49e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d49e20 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='future<%= unvisited_d49e20 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d49e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d49e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d49e22 = !isVisited(session, "angaben-anderes-elternteil"); %><li class='future<%= unvisited_d49e22 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben anderes Elternteil</span>
                                       <span class="labelicon" title='<%= unvisited_d49e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d49e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d49e24 = !isVisited(session, "weitere-angaben-zum-anderen-elternteil"); %><li class='future<%= unvisited_d49e24 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben zum anderen Elternteil</span>
                                       <span class="labelicon" title='<%= unvisited_d49e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d49e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d49e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d49e26 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d49e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d49e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d49e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d49e28 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d49e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d49e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d49e30 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d49e30 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d49e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d49e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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