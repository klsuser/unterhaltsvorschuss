<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("datenschutzhinweis"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("datenschutzhinweis"); %>

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
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Datenschutzhinweis</title>
      <cit:script href="/WEB-INF/etc/commons.js">/**/</cit:script>
      <cit:script href="/WEB-INF/etc/script.js" fileEncoding="utf-8">/**/</cit:script><!--plugin:js-validations-banking-->
    
      <cit:script href="/WEB-INF/include/js/validations/Banking.js">/**/</cit:script>
  
      <cit:script href="/WEB-INF/etc/custom.js" fileEncoding="utf-8">/**/</cit:script>
      <cit:template select="/.." xhtml="true"/>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow>
            <cit:do action="goto" href="einreichen-des-antrags.jsp"/>
         </cit:flow>
      </cit:control>
   </head>
   <body id="datenschutzhinweis">
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
               <ul class="icons"><% final boolean unvisited_d4e2 = !isVisited(session, "datenschutzhinweis"); %><li class='present<%= unvisited_d4e2 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d4e2 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d4e2 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d4e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='future<%= unvisited_d4e4 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d4e4 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d4e4 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d4e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='future<%= unvisited_d4e6 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d4e6 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d4e6 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d4e8 = !isVisited(session, "rbs_bez"); %><li class='future<%= unvisited_d4e8 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Anschrift Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d4e8 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d4e8 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d4e10 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='future<%= unvisited_d4e10 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d4e10 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d4e10 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d4e12 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='future<%= unvisited_d4e12 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d4e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d4e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d4e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='future<%= unvisited_d4e14 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d4e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d4e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d4e16 = !isVisited(session, "angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %><li class='future<%= unvisited_d4e16 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d4e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d4e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d4e18 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='future<%= unvisited_d4e18 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                           <span class="labelicon" title='<%= unvisited_d4e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d4e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d4e20 = !isVisited(session, "angaben-zum-anderen-elternteil-2-3"); %><li class='future<%= unvisited_d4e20 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                           <span class="labelicon" title='<%= unvisited_d4e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d4e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d4e22 = !isVisited(session, "angaben-zum-anderen-elternteil-3-3"); %><li class='future<%= unvisited_d4e22 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                           <span class="labelicon" title='<%= unvisited_d4e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d4e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d4e24 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d4e24 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d4e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d4e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d4e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d4e26 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d4e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d4e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d4e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d4e28 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d4e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d4e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d4e30 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d4e30 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d4e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d4e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d4e32 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d4e32 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Nachweise</span>
                           <span class="labelicon" title='<%= unvisited_d4e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d4e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d4e34 = !isVisited(session, "schriftformerfordernis"); %><li class='future<%= unvisited_d4e34 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Schriftformerfordernis</span>
                           <span class="labelicon" title='<%= unvisited_d4e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d4e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">Datenschutzhinweis</h2>
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
                           <section class="infobox narrow"><p>Zur Bearbeitung Ihres Anliegens benötigen wir personenbezogene Daten.</p><p>Der Digitale Antrag ist ein Dienst der Senatsverwaltung für Inneres und Sport (Dienstanbieter) und der jeweiligen Fachverwaltung. Ihre Daten werden im Sinne der Datenschutzgrundverordnung gemeinsam von den beteiligten Verwaltungen des Landes Berlin verarbeitet.</p><p>Die Verarbeitung der personenbezogenen Daten aus den Eingabemasken dient uns allein zur Bearbeitung der Antragsstellung.</p><p>Sonstige, während des Absendevorgangs verarbeitete, personenbezogene Daten dienen dazu, einen Missbrauch zu verhindern und die Sicherheit unserer informationstechnischen Systeme sicherzustellen.</p><p>Mit Ihrer Einwilligung in die Datenverarbeitung dürfen wir personenbezogene Daten für den Zweck der Bearbeitung des Antrags verarbeiten, das heißt: erheben, speichern und abfragen.</p><p>Für nähere Informationen beachten Sie bitte auch unsere <a title="Es öffnet sich ein neuer Browsertab." target="blank" href="https://service.berlin.de/digitaler-antrag/datenschutz/unterhaltsvorschussgesetz-1010249.php">Datenschutzerklärung</a>. Hier können Sie insbesondere einsehen, <a title="Es öffnet sich ein neuer Browsertab." target="blank" href="https://service.berlin.de/digitaler-antrag/datenschutz/erhobene-daten-881689.php#unterhalt">welche Daten für Ihren Antrag erhoben und verarbeitet werden</a> und wer die beteiligten Verwaltungen sind.</p><p>Sie haben das Recht, jederzeit der Verarbeitung Ihrer personenbezogenen Daten zu widersprechen. Hierzu wenden Sie sich bitte an die <a target="blank" title="Es öffnet sich ein neuer Browser-Tab" href="https://service.berlin.de/digitaler-antrag/datenschutz/unterhaltsvorschussgesetz-1010249.php#verantwortung">in der Datenschutzerklärung genannte, verantwortliche Stelle</a>.</p></section>
                           <section class="block narrow label_after leftalign" data-comments='<%= getComments(pageContext.getAttribute("form"), "ja_nein_feld") %>'>
                              <header><p>Einwilligung</p></header>
                              <cit:conditional test="!assistants.request.isValid('ja_nein_feld')">
                                 <p class="errorText v2">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <cit:conditional test="!My.isCustomReason('ja_nein_feld')">
                                          <cit:errorText name="ja_nein_feld"/>
                                       </cit:conditional>
                                       <cit:conditional test="My.isCustomReason('ja_nein_feld')">
                                          <cit:errorText name="ja_nein_feld">
                                             <span id="$$ID$$">
                                                <span class="accessibility">Fehler: </span>Zur Antragstellung ist die Einwilligung zur Weiterverarbeitung Ihrer Eingabedaten erforderlich.</span>
                                          </cit:errorText>
                                       </cit:conditional>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="ja_nein_feld" id="#page-strict">
                                 <p class="errorText v2" id="$$ID$$">
                                    <span class="icon-warning-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="ja_nein_feld" id="#page-soft">
                                 <p class="errorText v2 loose" id="$$ID$$">
                                    <span class="icon-exclamation-sign" aria-hidden="true"/>
                                    <strong>
                                       <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <div class="inputcontainer">
                                    <cit:inputBoolean name="ja_nein_feld" ariaLabelledby="$label-id $error-ids" onValidate="(/^\s*$/.test(value))||(value==true)" errtitle="Zur Antragstellung ist die Einwilligung zur Weiterverarbeitung Ihrer Eingabedaten erforderlich."/>
                                 </div>
                                 <cit:inputLabel name="ja_nein_feld" v="2">
                                    <span id="$$ID$$">Ich bin damit einverstanden, dass die von mir eingegebenen Daten weiterverarbeitet werden dürfen.</span>
                                 </cit:inputLabel>
                              </div>
                           </section>
                           <cit:inputComputed name="monat" value="currentMonthAndYear()"/>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
                           <h3 class="accessibility">Dialogverlauf</h3>
                           <ul class="icons"><% final boolean unvisited_d6e2 = !isVisited(session, "datenschutzhinweis"); %><li class='present<%= unvisited_d6e2 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d6e2 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d6e2 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d6e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='future<%= unvisited_d6e4 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d6e4 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d6e4 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d6e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='future<%= unvisited_d6e6 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d6e6 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d6e6 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d6e8 = !isVisited(session, "rbs_bez"); %><li class='future<%= unvisited_d6e8 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Anschrift Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d6e8 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d6e8 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d6e10 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='future<%= unvisited_d6e10 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d6e10 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d6e10 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d6e12 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='future<%= unvisited_d6e12 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d6e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d6e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d6e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='future<%= unvisited_d6e14 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d6e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d6e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d6e16 = !isVisited(session, "angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %><li class='future<%= unvisited_d6e16 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d6e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d6e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d6e18 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='future<%= unvisited_d6e18 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d6e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d6e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d6e20 = !isVisited(session, "angaben-zum-anderen-elternteil-2-3"); %><li class='future<%= unvisited_d6e20 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d6e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d6e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d6e22 = !isVisited(session, "angaben-zum-anderen-elternteil-3-3"); %><li class='future<%= unvisited_d6e22 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d6e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d6e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d6e24 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d6e24 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d6e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d6e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d6e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d6e26 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d6e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d6e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d6e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d6e28 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d6e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d6e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d6e30 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d6e30 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d6e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d6e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d6e32 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d6e32 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Nachweise</span>
                                       <span class="labelicon" title='<%= unvisited_d6e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d6e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d6e34 = !isVisited(session, "schriftformerfordernis"); %><li class='future<%= unvisited_d6e34 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Schriftformerfordernis</span>
                                       <span class="labelicon" title='<%= unvisited_d6e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d6e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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