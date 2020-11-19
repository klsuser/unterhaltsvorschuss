<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist"); %>

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
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Zusätzliche Angaben für den Fall, dass das Kind 15, 16 oder 17 Jahre alt ist</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow>
            <cit:do action="goto" href="erklaerung.jsp"/>
         </cit:flow>
      </cit:control>
   </head>
   <body id="zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist">
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
                     </span><% } %></li><% final boolean unvisited_d45e4 = !isVisited(session, "antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung"); %><li class='past<%= unvisited_d45e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung") != null) { %><span class="item clickable" data-submit-value="resync.antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung">
                        <a href="" class="label">
                           <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                           <span class="labelicon" title='<%= unvisited_d45e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d45e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                           <span class="labelicon" title='<%= unvisited_d45e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d45e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d45e6 = !isVisited(session, "weitere-angaben-antragsteller-in"); %><li class='past<%= unvisited_d45e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-antragsteller-in") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-antragsteller-in">
                        <a href="" class="label">
                           <span class="labeltext">Weitere Angaben Antragsteller/in</span>
                           <span class="labelicon" title='<%= unvisited_d45e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d45e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben Antragsteller/in</span>
                           <span class="labelicon" title='<%= unvisited_d45e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d45e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d45e8 = !isVisited(session, "angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d45e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d45e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d45e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d45e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d45e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d45e10 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='past<%= unvisited_d45e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("betreuung-des-anderen-elternteiles") != null) { %><span class="item clickable" data-submit-value="resync.betreuung-des-anderen-elternteiles">
                        <a href="" class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d45e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d45e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d45e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d45e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d45e12 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='past<%= unvisited_d45e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("demnaechst-vollenden-werden") != null) { %><span class="item clickable" data-submit-value="resync.demnaechst-vollenden-werden">
                        <a href="" class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d45e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d45e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d45e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d45e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d45e14 = !isVisited(session, "zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist"); %><li class='present<%= unvisited_d45e14 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Zusätzliche Angaben für den Fall, dass das Kind 15, 16 oder 17 Jahre alt ist</span>
                           <span class="labelicon" title='<%= unvisited_d45e14 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d45e14 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d45e16 = !isVisited(session, "erklaerung"); %><li class='future<%= unvisited_d45e16 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Erklärung</span>
                           <span class="labelicon" title='<%= unvisited_d45e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d45e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d45e18 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='future<%= unvisited_d45e18 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d45e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d45e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d45e20 = !isVisited(session, "angaben-anderes-elternteil"); %><li class='future<%= unvisited_d45e20 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben anderes Elternteil</span>
                           <span class="labelicon" title='<%= unvisited_d45e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d45e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d45e22 = !isVisited(session, "weitere-angaben-zum-anderen-elternteil"); %><li class='future<%= unvisited_d45e22 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben zum anderen Elternteil</span>
                           <span class="labelicon" title='<%= unvisited_d45e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d45e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d45e24 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d45e24 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d45e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d45e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d45e26 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d45e26 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d45e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d45e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d45e28 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d45e28 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d45e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d45e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">Zusätzliche Angaben für den Fall, dass das Kind 15, 16 oder 17 Jahre alt ist</h2>
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
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "kindschule") %>'>
                              <cit:conditional test="!assistants.request.isValid('kindschule')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="kindschule"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="kindschule" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="kindschule" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="kindschule">Das Kind geht/ging zur folgenden Schule:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputText name="kindschule"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block live narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "schulebeendet") %>' data-live-stay="stay_nonval_d0e1419">
                              <cit:conditional test="!assistants.request.isValid('schulebeendet')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="schulebeendet"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="schulebeendet" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="schulebeendet" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <span class="pseudoLabel">Hat das Kind die Schule beendet?</span>
                                 <div class="inputcontainer choice-inline">
                                    <cit:choiceGroup type="boolean" name="schulebeendet">
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
                              <cit:inputSubmit type="stay.nonval.d0e1419" id="stay.nonval.d0e1419" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                              <script type="text/javascript">document.getElementById('stay_nonval_d0e1419').style.display='none';</script>
                              <cit:script>_unmask(myForm, "schulebeendet", "boolean");</cit:script>
                           </section>
                           <cit:conditional test="myForm.schulebeendet == false">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "schulevoraussichtlichesende") %>'>
                                 <cit:conditional test="!assistants.request.isValid('schulevoraussichtlichesende')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="schulevoraussichtlichesende"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="schulevoraussichtlichesende" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="schulevoraussichtlichesende" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="schulevoraussichtlichesende">Voraussichtliches Ende:</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputDate name="schulevoraussichtlichesende" class="tiny focus-mark-before" showChooser="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.schulebeendet == false">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "schulevoraussichtlichesende2") %>'>
                                 <cit:conditional test="!assistants.request.isValid('schulevoraussichtlichesende2')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="schulevoraussichtlichesende2"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="schulevoraussichtlichesende2" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="schulevoraussichtlichesende2" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="schulevoraussichtlichesende2">Voraussichtliches Ende:</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputText name="schulevoraussichtlichesende2"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.schulebeendet == true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "schulebeendetseit") %>'>
                                 <cit:conditional test="!assistants.request.isValid('schulebeendetseit')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="schulebeendetseit"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="schulebeendetseit" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="schulebeendetseit" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="schulebeendetseit">Beendet seit:</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputDate name="schulebeendetseit" class="tiny focus-mark-before" showChooser="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "kindabschluss") %>'>
                              <cit:conditional test="!assistants.request.isValid('kindabschluss')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="kindabschluss"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="kindabschluss" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="kindabschluss" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="kindabschluss">angestrebter oder erreichter Abschluss:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputText name="kindabschluss"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausbildungsbeginn") %>'>
                              <cit:conditional test="!assistants.request.isValid('ausbildungsbeginn')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="ausbildungsbeginn"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="ausbildungsbeginn" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="ausbildungsbeginn" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="ausbildungsbeginn">Das Kind hat eine Ausbildung begonnen am:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputDate name="ausbildungsbeginn" class="tiny focus-mark-before" showChooser="true"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausbildungals") %>'>
                              <cit:conditional test="!assistants.request.isValid('ausbildungals')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="ausbildungals"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="ausbildungals" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="ausbildungals" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="ausbildungals">als:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputText name="ausbildungals"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausbildungvoraussichtlichesende") %>'>
                              <cit:conditional test="!assistants.request.isValid('ausbildungvoraussichtlichesende')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="ausbildungvoraussichtlichesende"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="ausbildungvoraussichtlichesende" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="ausbildungvoraussichtlichesende" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="ausbildungvoraussichtlichesende">Voraussichtliches Ende:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputDate name="ausbildungvoraussichtlichesende" class="tiny focus-mark-before" showChooser="true"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausbildungsverguetung") %>'>
                              <cit:conditional test="!assistants.request.isValid('ausbildungsverguetung')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="ausbildungsverguetung"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="ausbildungsverguetung" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="ausbildungsverguetung" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="ausbildungsverguetung">Ausbildungsvergützung netto:</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputCurrency name="ausbildungsverguetung" class="number rightalign use-size focus-mark-before" size="15"/>
                                 </div>
                              </div>
                           </section>
                           <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausbildungunterkunft") %>'>
                              <cit:conditional test="!assistants.request.isValid('ausbildungunterkunft')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="ausbildungunterkunft"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="ausbildungunterkunft" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="ausbildungunterkunft" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="label">
                                 <span class="pseudoLabel">Ausbildungsbedingt eine eigene Unterkunft außerhalb des elterlichen Haushalts</span>
                              </div>
                              <div class="formline">
                                 <div class="inputcontainer choice-inline">
                                    <cit:choiceGroup type="boolean" name="ausbildungunterkunft">
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
                           <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "kinderwerbstaetigkeit") %>' data-live-stay="stay_nonval_d0e1509">
                              <cit:conditional test="!assistants.request.isValid('kinderwerbstaetigkeit')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="kinderwerbstaetigkeit"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="kinderwerbstaetigkeit" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="kinderwerbstaetigkeit" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="label">
                                 <span class="pseudoLabel">Statt einer Ausbildung eine Erwerbstätigkeit aufgenommen.</span>
                              </div>
                              <div class="formline">
                                 <div class="inputcontainer choice-inline">
                                    <cit:choiceGroup type="boolean" name="kinderwerbstaetigkeit">
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
                              <cit:inputSubmit type="stay.nonval.d0e1509" id="stay.nonval.d0e1509" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                              <script type="text/javascript">document.getElementById('stay_nonval_d0e1509').style.display='none';</script>
                              <cit:script>_unmask(myForm, "kinderwerbstaetigkeit", "boolean");</cit:script>
                           </section>
                           <cit:conditional test="myForm.kinderwerbstaetigkeit == true">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "verguetungerwerbstaetigkeit") %>'>
                                 <cit:conditional test="!assistants.request.isValid('verguetungerwerbstaetigkeit')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="verguetungerwerbstaetigkeit"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="verguetungerwerbstaetigkeit" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="verguetungerwerbstaetigkeit" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="verguetungerwerbstaetigkeit">Monatliche Vergütung netto:</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputCurrency name="verguetungerwerbstaetigkeit" class="number rightalign use-size focus-mark-before" size="15"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "ausbildungsnachweis") %>'>
                              <cit:conditional test="!assistants.request.isValid('ausbildungsnachweis')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="ausbildungsnachweis"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="ausbildungsnachweis" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="ausbildungsnachweis" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="label">
                                 <cit:inputLabel name="ausbildungsnachweis">Bitte den Ausbildungs- bzw. Arbeitsvertrag in Kopie und entsprechende Nachweise über das erzielte Einkommen (z. B. Lohn- und Gehaltsbescheinigungen) hochladen</cit:inputLabel>
                              </div>
                              <div class="formline">
                                 <div class="inputcontainer">
                                    <cit:inputFile name="ausbildungsnachweis"/>
                                 </div>
                              </div>
                           </section>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
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
                                 </span><% } %></li><% final boolean unvisited_d47e6 = !isVisited(session, "weitere-angaben-antragsteller-in"); %><li class='past<%= unvisited_d47e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("weitere-angaben-antragsteller-in") != null) { %><span class="item clickable" data-submit-value="resync.weitere-angaben-antragsteller-in">
                                    <a href="" class="label">
                                       <span class="labeltext">Weitere Angaben Antragsteller/in</span>
                                       <span class="labelicon" title='<%= unvisited_d47e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d47e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben Antragsteller/in</span>
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
                                 </span><% } %></li><% final boolean unvisited_d47e14 = !isVisited(session, "zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist"); %><li class='present<%= unvisited_d47e14 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Zusätzliche Angaben für den Fall, dass das Kind 15, 16 oder 17 Jahre alt ist</span>
                                       <span class="labelicon" title='<%= unvisited_d47e14 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d47e14 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d47e16 = !isVisited(session, "erklaerung"); %><li class='future<%= unvisited_d47e16 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Erklärung</span>
                                       <span class="labelicon" title='<%= unvisited_d47e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d47e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d47e18 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='future<%= unvisited_d47e18 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d47e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d47e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d47e20 = !isVisited(session, "angaben-anderes-elternteil"); %><li class='future<%= unvisited_d47e20 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben anderes Elternteil</span>
                                       <span class="labelicon" title='<%= unvisited_d47e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d47e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d47e22 = !isVisited(session, "weitere-angaben-zum-anderen-elternteil"); %><li class='future<%= unvisited_d47e22 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben zum anderen Elternteil</span>
                                       <span class="labelicon" title='<%= unvisited_d47e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d47e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d47e24 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d47e24 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d47e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d47e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d47e26 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d47e26 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d47e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d47e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d47e28 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d47e28 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d47e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d47e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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