<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("weitere-angaben-zum-antragsteller-zur-antragstellerin"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("weitere-angaben-zum-antragsteller-zur-antragstellerin"); %>

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
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Weitere Angaben zum Antragsteller/zur Antragstellerin</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow/>
      </cit:control>
   </head>
   <body id="weitere-angaben-zum-antragsteller-zur-antragstellerin">
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
               <ul class="icons"><% final boolean unvisited_d25e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d25e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                        <a href="" class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d25e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d25e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d25e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d25e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d25e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d25e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                        <a href="" class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d25e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d25e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d25e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d25e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d25e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='past<%= unvisited_d25e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d25e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d25e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d25e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d25e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d25e8 = !isVisited(session, "rbs_bez"); %><li class='past<%= unvisited_d25e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("rbs_bez") != null) { %><span class="item clickable" data-submit-value="resync.rbs_bez">
                        <a href="" class="label">
                           <span class="labeltext">Anschrift Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d25e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d25e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Anschrift Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d25e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d25e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d25e10 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='present<%= unvisited_d25e10 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d25e10 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d25e10 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d25e12 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='future<%= unvisited_d25e12 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d25e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d25e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d25e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='future<%= unvisited_d25e14 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d25e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d25e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d25e16 = !isVisited(session, "angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %><li class='future<%= unvisited_d25e16 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d25e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d25e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d25e18 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='future<%= unvisited_d25e18 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                           <span class="labelicon" title='<%= unvisited_d25e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d25e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d25e20 = !isVisited(session, "angaben-zum-anderen-elternteil-2-3"); %><li class='future<%= unvisited_d25e20 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                           <span class="labelicon" title='<%= unvisited_d25e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d25e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d25e22 = !isVisited(session, "angaben-zum-anderen-elternteil-3-3"); %><li class='future<%= unvisited_d25e22 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                           <span class="labelicon" title='<%= unvisited_d25e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d25e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d25e24 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d25e24 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d25e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d25e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d25e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d25e26 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d25e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d25e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d25e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d25e28 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d25e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d25e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d25e30 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d25e30 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d25e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d25e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d25e32 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d25e32 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Nachweise</span>
                           <span class="labelicon" title='<%= unvisited_d25e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d25e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d25e34 = !isVisited(session, "schriftformerfordernis"); %><li class='future<%= unvisited_d25e34 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Schriftformerfordernis</span>
                           <span class="labelicon" title='<%= unvisited_d25e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d25e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">Weitere Angaben zum Antragsteller/zur Antragstellerin</h2>
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
                           <p class="required-hint">
                              <em>
                                 <span class="required-mark" aria-hidden="true">*</span>
                                 <span aria-hidden="true"> Pflichtfelder</span>
                                 <span class="accessibility">Diese Seite enthält Pflichtfelder.</span>
                              </em>
                           </p>
                           <cit:xmlResource id="C00000009" src="/WEB-INF/data/staat_2019-04-01.xml"/>
                           <section class="group narrow">
                              <header>
                                 <h3>Familienstand</h3>
                              </header>
                              <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "familienstand") %>' data-live-stay="stay_nonval_d0e963">
                                 <cit:conditional test="!assistants.request.isValid('familienstand')">
                                    <p class="errorText v2">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <cit:errorText name="familienstand"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="familienstand" id="#page-strict">
                                    <p class="errorText v2" id="$$ID$$">
                                       <span class="icon-warning-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="familienstand" id="#page-soft">
                                    <p class="errorText v2 loose" id="$$ID$$">
                                       <span class="icon-exclamation-sign" aria-hidden="true"/>
                                       <strong>
                                          <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <span class="pseudoLabel required">
                                       <span id="d0e963_label"><p/><span class="required-mark">
                                             <span aria-hidden="true">*</span>
                                             <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                          </span>
                                       </span>
                                    </span>
                                 </div>
                                 <div class="formline">
                                    <div role="group" aria-labelledby='d0e963_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "familienstand") %>' class="inputcontainer">
                                       <cit:choiceGroup name="familienstand" required="true">
                                          <div class="choice">
                                             <cit:inputChoice value="verheiratet"/>
                                             <cit:inputLabel name="familienstand.verheiratet">Ich bin verheiratet</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="lebenspartnerschaft"/>
                                             <cit:inputLabel name="familienstand.lebenspartnerschaft">Ich lebe in einer eingetragenen (gleichgeschlechtlichen) Lebenspartnerschaft</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="ledig"/>
                                             <cit:inputLabel name="familienstand.ledig">Ich bin ledig</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="geschieden"/>
                                             <cit:inputLabel name="familienstand.geschieden">Ich bin rechtskräftig geschieden</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="nicht mehr lebenspartnerschaft"/>
                                             <cit:inputLabel name="familienstand.nicht mehr lebenspartnerschaft">Ich lebe nicht mehr in einer eingetragenen (gleichgeschlechtlichen) Lebenspartnerschaft</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="verwitwet"/>
                                             <cit:inputLabel name="familienstand.verwitwet">Ich bin verwitwet</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="getrennt"/>
                                             <cit:inputLabel name="familienstand.getrennt">Ich lebe vom Ehegatten/Lebenspartner/der Ehegattin/Lebenspartnerin getrennt</cit:inputLabel>
                                          </div>
                                       </cit:choiceGroup>
                                    </div>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e963" id="stay.nonval.d0e963" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e963').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "familienstand", "string");</cit:script>
                              </section>
                              <cit:conditional test="myForm.familienstand == &#34;ledig&#34;">
                                 <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vomanderenelternteilgetrennt") %>' data-live-stay="stay_nonval_d0e993">
                                    <cit:conditional test="!assistants.request.isValid('vomanderenelternteilgetrennt')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="vomanderenelternteilgetrennt"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vomanderenelternteilgetrennt" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vomanderenelternteilgetrennt" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <span class="pseudoLabel required">
                                          <span id="d0e993_label">Bitte wählen Sie den zutreffenden Punkt aus<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                       </span>
                                    </div>
                                    <div class="formline">
                                       <div role="group" aria-labelledby='d0e993_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "vomanderenelternteilgetrennt") %>' class="inputcontainer">
                                          <cit:choiceGroup name="vomanderenelternteilgetrennt" required="true">
                                             <div class="choice">
                                                <cit:inputChoice value="Ich lebe vom anderen Elternteil getrennt"/>
                                                <cit:inputLabel name="vomanderenelternteilgetrennt.Ich lebe vom anderen Elternteil getrennt">Ich lebe vom anderen Elternteil getrennt</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="Ich habe noch nie mit dem anderen Elternteil meines Kindes zusammengelebt"/>
                                                <cit:inputLabel name="vomanderenelternteilgetrennt.Ich habe noch nie mit dem anderen Elternteil meines Kindes zusammengelebt">Ich habe noch nie mit dem anderen Elternteil meines Kindes zusammengelebt</cit:inputLabel>
                                             </div>
                                          </cit:choiceGroup>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e993" id="stay.nonval.d0e993" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e993').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "vomanderenelternteilgetrennt", "string");</cit:script>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.familienstand === &#34;geschieden&#34;">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "geschiedenseit") %>'>
                                    <cit:conditional test="!assistants.request.isValid('geschiedenseit')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="geschiedenseit"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="geschiedenseit" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="geschiedenseit" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="geschiedenseit" v="2" required="true">
                                          <span id="$$ID$$">Ich bin rechtskräftig geschieden seit dem<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                          <span class="tooltip date_format_hint_only">
                                             <a target="intelliform_help" class="icon" href='<%= response.encodeURL("help.jsp#antragstellerweitere.geschiedenseit") %>'>
                                                <span class="accessibility">Hilfe öffnen</span>
                                             </a>
                                          </span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputDate name="geschiedenseit" class="tiny focus-mark-before" ariaLabelledby="$label-id $error-ids d0e1008_date_format_hint" showChooser="true" required="true" onValidate="value &lt; new Date()"/>
                                       </div>
                                       <div class="tooltip_overlay">
                                          <div class="tooltip_text" id="d0e1008_tooltip">
                                             <p class="date_format_hint" id="d0e1008_date_format_hint">Bitte geben Sie hier ein Datum im Format TT.MM.JJJJ ein.</p>
                                             <button class="close" type="button" onclick="return false;">
                                                <span class="icon-close" aria-hidden="true"/>
                                                <span class="accessibility">Schließen</span>
                                             </button>
                                          </div>
                                       </div>
                                    </div>
                                    <footer><p>TT.MM.JJJJ</p></footer>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.familienstand === &#34;geschieden&#34;">
                                 <section class="infobox narrow"><p><br/><br/>Das Scheidungsurteil können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen<br/><br/></p></section>
                              </cit:conditional>
                              <cit:conditional test="myForm.familienstand === &#34;nicht mehr lebenspartnerschaft&#34;">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "nichtmehringleichgeschlechtlicherlebenspartnerschaftseit") %>'>
                                    <cit:conditional test="!assistants.request.isValid('nichtmehringleichgeschlechtlicherlebenspartnerschaftseit')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="nichtmehringleichgeschlechtlicherlebenspartnerschaftseit"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="nichtmehringleichgeschlechtlicherlebenspartnerschaftseit" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="nichtmehringleichgeschlechtlicherlebenspartnerschaftseit" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="nichtmehringleichgeschlechtlicherlebenspartnerschaftseit" v="2" required="true">
                                          <span id="$$ID$$">Ich lebe nicht mehr in einer eingetragenen (gleichgeschlechtlichen) Lebenspartnerschaft seit dem<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                          <span class="tooltip date_format_hint_only">
                                             <a target="intelliform_help" class="icon" href='<%= response.encodeURL("help.jsp#antragstellerweitere.nichtmehringleichgeschlechtlicherlebenspartnerschaftseit") %>'>
                                                <span class="accessibility">Hilfe öffnen</span>
                                             </a>
                                          </span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputDate name="nichtmehringleichgeschlechtlicherlebenspartnerschaftseit" class="tiny focus-mark-before" ariaLabelledby="$label-id $error-ids d0e1026_date_format_hint" showChooser="true" required="true" onValidate="value &lt; new Date()"/>
                                       </div>
                                       <div class="tooltip_overlay">
                                          <div class="tooltip_text" id="d0e1026_tooltip">
                                             <p class="date_format_hint" id="d0e1026_date_format_hint">Bitte geben Sie hier ein Datum im Format TT.MM.JJJJ ein.</p>
                                             <button class="close" type="button" onclick="return false;">
                                                <span class="icon-close" aria-hidden="true"/>
                                                <span class="accessibility">Schließen</span>
                                             </button>
                                          </div>
                                       </div>
                                    </div>
                                    <footer><p>TT.MM.JJJJ</p></footer>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.familienstand === &#34;nicht mehr lebenspartnerschaft&#34;">
                                 <section class="infobox narrow"><p><br/><br/>Die Aufhebungsurkunde können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen<br/><br/></p></section>
                              </cit:conditional>
                              <cit:conditional test="myForm.familienstand === &#34;verwitwet&#34;">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "verwitwetseit") %>'>
                                    <cit:conditional test="!assistants.request.isValid('verwitwetseit')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="verwitwetseit"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="verwitwetseit" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="verwitwetseit" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="verwitwetseit" v="2" required="true">
                                          <span id="$$ID$$">Ich bin verwitwet seit dem<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                          <span class="tooltip date_format_hint_only">
                                             <a target="intelliform_help" class="icon" href='<%= response.encodeURL("help.jsp#antragstellerweitere.verwitwetseit") %>'>
                                                <span class="accessibility">Hilfe öffnen</span>
                                             </a>
                                          </span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputDate name="verwitwetseit" class="tiny focus-mark-before" ariaLabelledby="$label-id $error-ids d0e1044_date_format_hint" showChooser="true" required="true" onValidate="value &lt; new Date()"/>
                                       </div>
                                       <div class="tooltip_overlay">
                                          <div class="tooltip_text" id="d0e1044_tooltip">
                                             <p class="date_format_hint" id="d0e1044_date_format_hint">Bitte geben Sie hier ein Datum im Format TT.MM.JJJJ ein.</p>
                                             <button class="close" type="button" onclick="return false;">
                                                <span class="icon-close" aria-hidden="true"/>
                                                <span class="accessibility">Schließen</span>
                                             </button>
                                          </div>
                                       </div>
                                    </div>
                                    <footer><p>TT.MM.JJJJ</p></footer>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.familienstand === &#34;verwitwet&#34;">
                                 <section class="infobox narrow"><p><br/><br/>Die Sterbeurkunde können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen<br/><br/></p></section>
                              </cit:conditional>
                              <cit:conditional test="myForm.vomanderenelternteilgetrennt === &#34;Ich lebe vom anderen Elternteil getrennt&#34;">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vonelternteilgetrenntseit") %>'>
                                    <cit:conditional test="!assistants.request.isValid('vonelternteilgetrenntseit')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="vonelternteilgetrenntseit"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vonelternteilgetrenntseit" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vonelternteilgetrenntseit" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="vonelternteilgetrenntseit" v="2" required="true">
                                          <span id="$$ID$$">Ich lebe vom anderen Elternteil getrennt seit dem<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                          <span class="tooltip date_format_hint_only">
                                             <a target="intelliform_help" class="icon" href='<%= response.encodeURL("help.jsp#antragstellerweitere.vonelternteilgetrenntseit") %>'>
                                                <span class="accessibility">Hilfe öffnen</span>
                                             </a>
                                          </span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputDate name="vonelternteilgetrenntseit" class="tiny focus-mark-before" ariaLabelledby="$label-id $error-ids d0e1062_date_format_hint" showChooser="true" required="true" onValidate="value &lt; new Date()"/>
                                       </div>
                                       <div class="tooltip_overlay">
                                          <div class="tooltip_text" id="d0e1062_tooltip">
                                             <p class="date_format_hint" id="d0e1062_date_format_hint">Bitte geben Sie hier ein Datum im Format TT.MM.JJJJ ein.</p>
                                             <button class="close" type="button" onclick="return false;">
                                                <span class="icon-close" aria-hidden="true"/>
                                                <span class="accessibility">Schließen</span>
                                             </button>
                                          </div>
                                       </div>
                                    </div>
                                    <footer><p>TT.MM.JJJJ</p></footer>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.familienstand === &#34;getrennt&#34;">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vomehegattenehegattingetrenntseit") %>'>
                                    <cit:conditional test="!assistants.request.isValid('vomehegattenehegattingetrenntseit')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="vomehegattenehegattingetrenntseit"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vomehegattenehegattingetrenntseit" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vomehegattenehegattingetrenntseit" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="vomehegattenehegattingetrenntseit" v="2" required="true">
                                          <span id="$$ID$$">Ich lebe vom Ehegatten/Lebenspartner/der Ehegattin/Lebenspartnerin getrennt seit dem<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                          <span class="tooltip date_format_hint_only">
                                             <a target="intelliform_help" class="icon" href='<%= response.encodeURL("help.jsp#antragstellerweitere.vomehegattenehegattingetrenntseit") %>'>
                                                <span class="accessibility">Hilfe öffnen</span>
                                             </a>
                                          </span>
                                       </cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputDate name="vomehegattenehegattingetrenntseit" class="tiny focus-mark-before" ariaLabelledby="$label-id $error-ids d0e1074_date_format_hint" showChooser="true" required="true" onValidate="value &lt; new Date()"/>
                                       </div>
                                       <div class="tooltip_overlay">
                                          <div class="tooltip_text" id="d0e1074_tooltip">
                                             <p class="date_format_hint" id="d0e1074_date_format_hint">Bitte geben Sie hier ein Datum im Format TT.MM.JJJJ ein.</p>
                                             <button class="close" type="button" onclick="return false;">
                                                <span class="icon-close" aria-hidden="true"/>
                                                <span class="accessibility">Schließen</span>
                                             </button>
                                          </div>
                                       </div>
                                    </div>
                                    <footer><p>TT.MM.JJJJ</p></footer>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.familienstand === &#34;getrennt&#34;">
                                 <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vonehepartnergetrenntweil") %>' data-live-stay="stay_nonval_d0e1086">
                                    <cit:conditional test="!assistants.request.isValid('vonehepartnergetrenntweil')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="vonehepartnergetrenntweil"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vonehepartnergetrenntweil" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vonehepartnergetrenntweil" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <span class="pseudoLabel required">
                                          <span id="d0e1086_label">Begründung<span class="required-mark">
                                                <span aria-hidden="true">*</span>
                                                <span class="accessibility"> Dies ist ein Pflichtfeld.</span>
                                             </span>
                                          </span>
                                       </span>
                                    </div>
                                    <div class="formline">
                                       <div role="group" aria-labelledby='d0e1086_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "vonehepartnergetrenntweil") %>' class="inputcontainer">
                                          <cit:choiceGroup name="vonehepartnergetrenntweil" required="true">
                                             <div class="choice">
                                                <cit:inputChoice value="Weil mindestens einer von uns die Ehe/Lebenspartnerschaft nicht mehr fortführen möchte"/>
                                                <cit:inputLabel name="vonehepartnergetrenntweil.Weil mindestens einer von uns die Ehe/Lebenspartnerschaft nicht mehr fortführen möchte">Weil mindestens einer von uns die Ehe/Lebenspartnerschaft nicht mehr fortführen möchte</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="Weil die Ehe im Ausland geschlossen wurde und/oder mein Ehegatte/meine Ehegattin noch nicht einreisen konnte"/>
                                                <cit:inputLabel name="vonehepartnergetrenntweil.Weil die Ehe im Ausland geschlossen wurde und/oder mein Ehegatte/meine Ehegattin noch nicht einreisen konnte">Weil die Ehe im Ausland geschlossen wurde und/oder mein Ehegatte/meine Ehegattin noch nicht einreisen konnte</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="Weil mein Ehegatte/Lebenspartner/meine Ehegattin/Lebenspartnerin voraussichtlich wenigstens sechs Monate wegen einer gerichtlichen Anordnung (wie Haft, Krankheit, Behinderung) in einer Anstalt lebt"/>
                                                <cit:inputLabel name="vonehepartnergetrenntweil.Weil mein Ehegatte/Lebenspartner/meine Ehegattin/Lebenspartnerin voraussichtlich wenigstens sechs Monate wegen einer gerichtlichen Anordnung (wie Haft, Krankheit, Behinderung) in einer Anstalt lebt">Weil mein Ehegatte/Lebenspartner/meine Ehegattin/Lebenspartnerin voraussichtlich wenigstens sechs Monate wegen einer gerichtlichen Anordnung (wie Haft, Krankheit, Behinderung) in einer Anstalt lebt</cit:inputLabel>
                                             </div>
                                          </cit:choiceGroup>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e1086" id="stay.nonval.d0e1086" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e1086').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "vonehepartnergetrenntweil", "string");</cit:script>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.vonehepartnergetrenntweil == &#34;Weil mein Ehegatte/Lebenspartner/meine Ehegattin/Lebenspartnerin voraussichtlich wenigstens sechs Monate wegen einer gerichtlichen Anordnung (wie Haft, Krankheit, Behinderung) in einer Anstalt lebt&#34;">
                                 <section class="infobox narrow"><p><br/><br/>Den Nachweis der gerichtlichen Anordnung (z. B. Haft/ Krankheit/ Behinderung) können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen<br/><br/></p></section>
                              </cit:conditional>
                           </section>
                           <cit:conditional test="myForm.familienstand == &#34;getrennt&#34;">
                              <section class="group narrow">
                                 <header>
                                    <h3>Daten zum Ehegatten/Lebenspartner/zur Ehegattin/Lebenspartnerin</h3>
                                 </header>
                                 <section class="infobox narrow"><p>Bitte geben Sie hier die Daten des Ehegatten/Lebenspartners/der Ehegattin/Lebenspartnerin an<br/><br/><br/><br/></p></section>
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "geschlecht") %>'>
                                    <cit:conditional test="!assistants.request.isValid('geschlecht')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="geschlecht"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="geschlecht" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="geschlecht" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <div class="pseudoLabel">
                                          <span id="d0e1122_label">Geschlecht</span>
                                       </div>
                                       <div role="group" aria-labelledby='d0e1122_label <%= de.cit.jsp.tags.ErrorTextTag.getErrorIDs(request, "geschlecht") %>' class="inputcontainer">
                                          <cit:choiceGroup name="geschlecht">
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
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="name"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="name" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="name" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="name" v="2">
                                          <span id="$$ID$$">Name</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="name" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "vorname") %>'>
                                    <cit:conditional test="!assistants.request.isValid('vorname')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="vorname"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vorname" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vorname" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="vorname" v="2">
                                          <span id="$$ID$$">Vorname</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="vorname" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "geburtsdatum") %>'>
                                    <cit:conditional test="!assistants.request.isValid('geburtsdatum')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="geburtsdatum"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="geburtsdatum" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="geburtsdatum" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="geburtsdatum" v="2">
                                          <span id="$$ID$$">Geburtsdatum</span>
                                          <span class="tooltip date_format_hint_only">
                                             <a target="intelliform_help" class="icon" href='<%= response.encodeURL("help.jsp#antragstellerweitere.geburtsdatum") %>'>
                                                <span class="accessibility">Hilfe öffnen</span>
                                             </a>
                                          </span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputDate name="geburtsdatum" class="tiny focus-mark-before" ariaLabelledby="$label-id $error-ids d0e1161_date_format_hint" showChooser="true" onValidate="(/^\s*$/.test(value))||(value &lt; new Date())"/>
                                       </div>
                                       <div class="tooltip_overlay">
                                          <div class="tooltip_text" id="d0e1161_tooltip">
                                             <p class="date_format_hint" id="d0e1161_date_format_hint">Bitte geben Sie hier ein Datum im Format TT.MM.JJJJ ein.</p>
                                             <button class="close" type="button" onclick="return false;">
                                                <span class="icon-close" aria-hidden="true"/>
                                                <span class="accessibility">Schließen</span>
                                             </button>
                                          </div>
                                       </div>
                                    </div>
                                    <footer><p>TT.MM.JJJJ</p></footer>
                                 </section>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.familienstand == &#34;getrennt&#34;">
                              <section class="group narrow">
                                 <header>
                                    <h3>Anschrift</h3>
                                 </header>
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "strasse") %>'>
                                    <cit:conditional test="!assistants.request.isValid('strasse')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="strasse"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="strasse" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="strasse" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="strasse" v="2">
                                          <span id="$$ID$$">Straße</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="strasse" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before width-xs" data-comments='<%= getComments(pageContext.getAttribute("form"), "hausnummer") %>'>
                                    <cit:conditional test="!assistants.request.isValid('hausnummer')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="hausnummer"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="hausnummer" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="hausnummer" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="hausnummer" v="2">
                                          <span id="$$ID$$">Hausnummer</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="hausnummer" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before width-xs" data-comments='<%= getComments(pageContext.getAttribute("form"), "postleitzahl") %>'>
                                    <cit:conditional test="!assistants.request.isValid('postleitzahl')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="postleitzahl"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="postleitzahl" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="postleitzahl" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="postleitzahl" v="2">
                                          <span id="$$ID$$">Postleitzahl</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="postleitzahl" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "ort") %>'>
                                    <cit:conditional test="!assistants.request.isValid('ort')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="ort"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="ort" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="ort" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="ort" v="2">
                                          <span id="$$ID$$">Ort</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="ort" ariaLabelledby="$label-id $error-ids"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow" data-comments='<%= getComments(pageContext.getAttribute("form"), "land") %>'>
                                    <cit:conditional test="!assistants.request.isValid('land')">
                                       <p class="errorText v2">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <cit:errorText name="land"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="land" id="#page-strict">
                                       <p class="errorText v2" id="$$ID$$">
                                          <span class="icon-warning-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="land" id="#page-soft">
                                       <p class="errorText v2 loose" id="$$ID$$">
                                          <span class="icon-exclamation-sign" aria-hidden="true"/>
                                          <strong>
                                             <span class="accessibility">Fehler: </span>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="land" v="2">
                                          <span id="$$ID$$">Land</span>
                                       </cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputSelect name="land" ariaLabelledby="$label-id $error-ids" default="Deutschland">
                                             <cit:option value="">--- bitte auswählen ---</cit:option>
                                             <cit:xmlOptions src="urn:xmlid:C00000009" select="/*/SimpleCodeList/Row/Value[@ColumnRef=&#34;Staatsname_kurz&#34;]" text="SimpleValue" value="SimpleValue">
                                                <cit:sort select="SimpleValue" data-type="text" order="ascending" lang="de" case-order="upper-first"/>
                                             </cit:xmlOptions>
                                          </cit:inputSelect>
                                       </div>
                                    </div>
                                 </section>
                              </section>
                           </cit:conditional>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
                           <h3 class="accessibility">Dialogverlauf</h3>
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
                                 </span><% } %></li><% final boolean unvisited_d31e8 = !isVisited(session, "rbs_bez"); %><li class='past<%= unvisited_d31e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("rbs_bez") != null) { %><span class="item clickable" data-submit-value="resync.rbs_bez">
                                    <a href="" class="label">
                                       <span class="labeltext">Anschrift Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d31e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d31e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Anschrift Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d31e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d31e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d31e10 = !isVisited(session, "weitere-angaben-zum-antragsteller-zur-antragstellerin"); %><li class='present<%= unvisited_d31e10 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben zum Antragsteller/zur Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d31e10 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d31e10 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e12 = !isVisited(session, "angaben-zum-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='future<%= unvisited_d31e12 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d31e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='future<%= unvisited_d31e14 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d31e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e16 = !isVisited(session, "angaben-zur-vormundschaft-beistandschaft-und-zum-rechtsbeistand"); %><li class='future<%= unvisited_d31e16 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zur Vormundschaft, Beistandschaft und zum Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d31e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e18 = !isVisited(session, "angaben-zum-anderen-elternteil-1-3"); %><li class='future<%= unvisited_d31e18 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (1/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d31e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e20 = !isVisited(session, "angaben-zum-anderen-elternteil-2-3"); %><li class='future<%= unvisited_d31e20 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (2/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d31e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e22 = !isVisited(session, "angaben-zum-anderen-elternteil-3-3"); %><li class='future<%= unvisited_d31e22 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum anderen Elternteil (3/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d31e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e24 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d31e24 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d31e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e26 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d31e26 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d31e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e28 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d31e28 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d31e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e30 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d31e30 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d31e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e32 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d31e32 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Nachweise</span>
                                       <span class="labelicon" title='<%= unvisited_d31e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d31e34 = !isVisited(session, "schriftformerfordernis"); %><li class='future<%= unvisited_d31e34 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Schriftformerfordernis</span>
                                       <span class="labelicon" title='<%= unvisited_d31e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d31e34 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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