<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("weitere-angaben-antragsteller-in"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("weitere-angaben-antragsteller-in"); %>

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
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Weitere Angaben Antragsteller/in</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow/>
      </cit:control>
   </head>
   <body id="weitere-angaben-antragsteller-in">
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
               <ul class="icons"><% final boolean unvisited_d19e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d19e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                        <a href="" class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d19e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d19e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d19e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d19e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d19e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d19e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                        <a href="" class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d19e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d19e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Einreichen des Antrags</span>
                           <span class="labelicon" title='<%= unvisited_d19e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d19e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d19e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='past<%= unvisited_d19e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d19e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d19e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d19e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d19e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d19e8 = !isVisited(session, "weitere-angaben-antragsteller-in"); %><li class='present<%= unvisited_d19e8 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben Antragsteller/in</span>
                           <span class="labelicon" title='<%= unvisited_d19e8 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d19e8 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d19e10 = !isVisited(session, "angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='future<%= unvisited_d19e10 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d19e10 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d19e10 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d19e12 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='future<%= unvisited_d19e12 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d19e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d19e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d19e14 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='future<%= unvisited_d19e14 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d19e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d19e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d19e16 = !isVisited(session, "angaben-anderer-elternteil-1-3"); %><li class='future<%= unvisited_d19e16 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben anderer Elternteil (1/3)</span>
                           <span class="labelicon" title='<%= unvisited_d19e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d19e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d19e18 = !isVisited(session, "angaben-anderer-elternteil-2-3"); %><li class='future<%= unvisited_d19e18 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben anderer Elternteil (2/3)</span>
                           <span class="labelicon" title='<%= unvisited_d19e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d19e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d19e20 = !isVisited(session, "angaben-anderer-elternteil-3-3"); %><li class='future<%= unvisited_d19e20 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben anderer Elternteil (3/3)</span>
                           <span class="labelicon" title='<%= unvisited_d19e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d19e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d19e22 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d19e22 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d19e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d19e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d19e24 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d19e24 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d19e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d19e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d19e26 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d19e26 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d19e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d19e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d19e28 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d19e28 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d19e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d19e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d19e30 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d19e30 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Nachweise</span>
                           <span class="labelicon" title='<%= unvisited_d19e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d19e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">Weitere Angaben Antragsteller/in</h2>
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
                           <section class="group narrow">
                              <header>
                                 <h3>Familienstand</h3>
                              </header>
                              <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "familienstand") %>' data-live-stay="stay_nonval_d0e775">
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
                                 <div class="label">
                                    <span class="pseudoLabel required"><p/><span class="required-mark">*<span class="accessibility"> Pflichtfeld</span>
                                       </span>
                                    </span>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
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
                                             <cit:inputLabel name="familienstand.getrennt">Ich lebe vom Ehegatten/Lebenspartner / der Ehegattin/Lebenspartnerin getrennt</cit:inputLabel>
                                          </div>
                                       </cit:choiceGroup>
                                    </div>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e775" id="stay.nonval.d0e775" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e775').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "familienstand", "string");</cit:script>
                              </section>
                              <cit:conditional test="myForm.familienstand == &#34;ledig&#34;">
                                 <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vomanderenelternteilgetrennt") %>' data-live-stay="stay_nonval_d0e805">
                                    <cit:conditional test="!assistants.request.isValid('vomanderenelternteilgetrennt')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="vomanderenelternteilgetrennt"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vomanderenelternteilgetrennt" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vomanderenelternteilgetrennt" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <span class="pseudoLabel">Bitte wählen Sie den zutreffenden Punkt aus:</span>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:choiceGroup name="vomanderenelternteilgetrennt">
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
                                    <cit:inputSubmit type="stay.nonval.d0e805" id="stay.nonval.d0e805" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e805').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "vomanderenelternteilgetrennt", "string");</cit:script>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.familienstand === &#34;geschieden&#34;">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "geschiedenseit") %>'>
                                    <cit:conditional test="!assistants.request.isValid('geschiedenseit')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="geschiedenseit"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="geschiedenseit" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="geschiedenseit" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="geschiedenseit">Ich bin rechtskräftig geschieden seit dem:</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputDate name="geschiedenseit" class="tiny focus-mark-before" showChooser="true" onValidate="(/^\s*$/.test(value))||(value &lt; new Date())" placeholder="TT.MM.JJJJ"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.familienstand === &#34;geschieden&#34;">
                                 <section class="infobox narrow"><br/><br/>Das Scheidungsurteil können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen.<br/><br/></section>
                              </cit:conditional>
                              <cit:conditional test="myForm.familienstand === &#34;nicht mehr lebenspartnerschaft&#34;">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "nichtmehringleichgeschlechtlicherlebenspartnerschaftseit") %>'>
                                    <cit:conditional test="!assistants.request.isValid('nichtmehringleichgeschlechtlicherlebenspartnerschaftseit')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="nichtmehringleichgeschlechtlicherlebenspartnerschaftseit"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="nichtmehringleichgeschlechtlicherlebenspartnerschaftseit" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="nichtmehringleichgeschlechtlicherlebenspartnerschaftseit" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="nichtmehringleichgeschlechtlicherlebenspartnerschaftseit">Ich lebe nicht mehr in einer eingetragenen (gleichgeschlechtlichen) Lebenspartnerschaft seit</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputDate name="nichtmehringleichgeschlechtlicherlebenspartnerschaftseit" class="tiny focus-mark-before" showChooser="true" onValidate="(/^\s*$/.test(value))||(value &lt; new Date())" placeholder="TT.MM.JJJJ"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.familienstand === &#34;nicht mehr lebenspartnerschaft&#34;">
                                 <section class="infobox narrow"><br/><br/>Die Aufhebungsurkunde können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen.<br/><br/></section>
                              </cit:conditional>
                              <cit:conditional test="myForm.familienstand === &#34;verwitwet&#34;">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "verwitwetseit") %>'>
                                    <cit:conditional test="!assistants.request.isValid('verwitwetseit')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="verwitwetseit"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="verwitwetseit" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="verwitwetseit" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="verwitwetseit">Ich bin verwitwet seit dem</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputDate name="verwitwetseit" class="tiny focus-mark-before" showChooser="true" onValidate="(/^\s*$/.test(value))||(value &lt; new Date())" placeholder="TT.MM.JJJJ"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.familienstand === &#34;verwitwet&#34;">
                                 <section class="infobox narrow"><br/><br/>Die Sterbeurkunde können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen..<br/><br/></section>
                              </cit:conditional>
                              <cit:conditional test="myForm.vomanderenelternteilgetrennt === &#34;Ich lebe vom anderen Elternteil getrennt&#34;">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vonelternteilgetrenntseit") %>'>
                                    <cit:conditional test="!assistants.request.isValid('vonelternteilgetrenntseit')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="vonelternteilgetrenntseit"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vonelternteilgetrenntseit" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vonelternteilgetrenntseit" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="vonelternteilgetrenntseit">Ich lebe vom anderen Elternteil getrennt seit dem</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputDate name="vonelternteilgetrenntseit" class="tiny focus-mark-before" showChooser="true" onValidate="(/^\s*$/.test(value))||(value &lt; new Date())" placeholder="TT.MM.JJJJ"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.familienstand === &#34;getrennt&#34;">
                                 <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vomehegattenehegattingetrenntseit") %>'>
                                    <cit:conditional test="!assistants.request.isValid('vomehegattenehegattingetrenntseit')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="vomehegattenehegattingetrenntseit"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vomehegattenehegattingetrenntseit" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vomehegattenehegattingetrenntseit" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="vomehegattenehegattingetrenntseit">Ich lebe vom Ehegatten/der Ehegattin getrennt seit dem</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputDate name="vomehegattenehegattingetrenntseit" class="tiny focus-mark-before" showChooser="true" onValidate="(/^\s*$/.test(value))||(value &lt; new Date())" placeholder="TT.MM.JJJJ"/>
                                       </div>
                                    </div>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.familienstand === &#34;getrennt&#34;">
                                 <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vonehepartnergetrenntweil") %>' data-live-stay="stay_nonval_d0e883">
                                    <cit:conditional test="!assistants.request.isValid('vonehepartnergetrenntweil')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="vonehepartnergetrenntweil"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="vonehepartnergetrenntweil" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="vonehepartnergetrenntweil" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <span class="pseudoLabel">weil</span>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:choiceGroup name="vonehepartnergetrenntweil">
                                             <div class="choice">
                                                <cit:inputChoice value="mindestens einer von uns die Ehe/Lebenspartnerschaft nicht mehr fortführen möchte."/>
                                                <cit:inputLabel name="vonehepartnergetrenntweil.mindestens einer von uns die Ehe/Lebenspartnerschaft nicht mehr fortführen möchte.">mindestens einer von uns die Ehe/Lebenspartnerschaft nicht mehr fortführen möchte.</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="die Ehe im Ausland geschlossen wurde und/oder mein Ehegatte/meine Ehegattin noch nicht einreisen konnte."/>
                                                <cit:inputLabel name="vonehepartnergetrenntweil.die Ehe im Ausland geschlossen wurde und/oder mein Ehegatte/meine Ehegattin noch nicht einreisen konnte.">die Ehe im Ausland geschlossen wurde und/oder mein Ehegatte/meine Ehegattin noch nicht einreisen konnte.</cit:inputLabel>
                                             </div>
                                             <div class="choice">
                                                <cit:inputChoice value="mein Ehegatte/Lebenspartner / meine Ehegattin/Lebenspartnerin voraussichtlich wenigstens sechs Monate wegen einer gerichtlichen Anordnung (z. B. Haft/Krankheit/Behinderung) in einer Anstalt lebt."/>
                                                <cit:inputLabel name="vonehepartnergetrenntweil.mein Ehegatte/Lebenspartner / meine Ehegattin/Lebenspartnerin voraussichtlich wenigstens sechs Monate wegen einer gerichtlichen Anordnung (z. B. Haft/Krankheit/Behinderung) in einer Anstalt lebt.">mein Ehegatte/Lebenspartner / meine Ehegattin/Lebenspartnerin voraussichtlich wenigstens sechs Monate wegen einer gerichtlichen Anordnung (z. B. Haft/Krankheit/Behinderung) in einer Anstalt lebt.</cit:inputLabel>
                                             </div>
                                          </cit:choiceGroup>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e883" id="stay.nonval.d0e883" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e883').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "vonehepartnergetrenntweil", "string");</cit:script>
                                 </section>
                              </cit:conditional>
                              <cit:conditional test="myForm.vonehepartnergetrenntweil == &#34;mein Ehegatte/Lebenspartner / meine Ehegattin/Lebenspartnerin voraussichtlich wenigstens sechs Monate wegen einer gerichtlichen Anordnung (z. B. Haft/ Krankheit/ Behinderung) in einer Anstalt lebt.&#34;">
                                 <section class="infobox narrow"><br/><br/>Den Nachweis der gerichtlichen Anordnung (z. B. Haft/ Krankheit/ Behinderung) können Sie am Ende der Antragstellung auf der letzten Antragsseite "Nachweise" hochladen.<br/><br/></section>
                              </cit:conditional>
                           </section>
                           <cit:conditional test="myForm.familienstand == &#34;getrennt&#34;">
                              <section class="group narrow">
                                 <header>
                                    <h3>Daten Ehegatten/Ehegattin/Lebenspartners/Lebenspartnerin</h3>
                                 </header>
                                 <section class="infobox narrow">Bitte geben Sie hier die Daten des Ehegatten/der Ehegattin / des Lebenspartners/der Lebenspartnerin an.<br/><br/><br/><br/></section>
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
                                          <cit:inputDate name="geburtsdatum" class="tiny focus-mark-before" showChooser="true" onValidate="(/^\s*$/.test(value))||(value &lt; new Date())" placeholder="TT.MM.JJJJ"/>
                                       </div>
                                    </div>
                                 </section>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.familienstand == &#34;getrennt&#34;">
                              <section class="group narrow rbs">
                                 <header>
                                    <h3>Anschrift</h3>
                                 </header>
                                 <cit:xmlResource id="C00000009" src="js:{myForm.transaction ? 'vfs:///root/intelliForm-Mandanten/default/Ressourcen/xml/staat.xml' : '/WEB-INF/data/staat.xml' }"/>
                                 <section class="block narrow label_before 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "onlyberlin") %>'>
                                    <cit:conditional test="!assistants.request.isValid('onlyberlin')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="onlyberlin"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="onlyberlin" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="onlyberlin" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="onlyberlin">onlyberlin:</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="onlyberlin" onDefault="onlyBerlin()"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_above 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "beznrh") %>'>
                                    <cit:conditional test="!assistants.request.isValid('beznrh')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="beznrh"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="beznrh" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="beznrh" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="beznrh">beznrh:</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="beznrh"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block live narrow 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "objtype") %>' data-live-stay="stay_nonval_d0e972">
                                    <cit:conditional test="!assistants.request.isValid('objtype')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="objtype"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="objtype" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="objtype" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="objtype">Objekttyp</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputSelect name="objtype" immediate="true" default="'*STRASSE*">
                                             <cit:option value="*STRASSE*">*STRASSE*</cit:option>
                                             <cit:option value="AUTOBAHN">AUTOBAHN</cit:option>
                                             <cit:option value="AUTOBAHNABSCHNITT">AUTOBAHNABSCHNITT</cit:option>
                                             <cit:option value="BAHNHOF">BAHNHOF</cit:option>
                                             <cit:option value="BRUECKE">BRUECKE</cit:option>
                                             <cit:option value="BRUECKE_IN_PARK">BRUECKE_IN_PARK</cit:option>
                                             <cit:option value="FLUGHAFEN">FLUGHAFEN</cit:option>
                                             <cit:option value="FORST">FORST</cit:option>
                                             <cit:option value="FORSTAMT">FORSTAMT</cit:option>
                                             <cit:option value="FUSS-/RADWEG">FUSS-/RADWEG</cit:option>
                                             <cit:option value="FUSSGAENGERBRUECKE">FUSSGAENGERBRUECKE</cit:option>
                                             <cit:option value="GEWAESSER">GEWAESSER</cit:option>
                                             <cit:option value="GRUENANLAGE">GRUENANLAGE</cit:option>
                                             <cit:option value="HALBINSEL">HALBINSEL</cit:option>
                                             <cit:option value="INSEL">INSEL</cit:option>
                                             <cit:option value="KLEINGARTENANLAGE">KLEINGARTENANLAGE</cit:option>
                                             <cit:option value="OBJEKT">OBJEKT</cit:option>
                                             <cit:option value="OERTL.BEGRIFF">OERTL.BEGRIFF</cit:option>
                                             <cit:option value="PARK">PARK</cit:option>
                                             <cit:option value="PARKPLATZ">PARKPLATZ</cit:option>
                                             <cit:option value="PLATZ">PLATZ</cit:option>
                                             <cit:option value="PLATZ_IN_FORST">PLATZ_IN_FORST</cit:option>
                                             <cit:option value="PRIVATSTRASSE">PRIVATSTRASSE</cit:option>
                                             <cit:option value="SCHLEUSE">SCHLEUSE</cit:option>
                                             <cit:option value="SIEDLUNG">SIEDLUNG</cit:option>
                                             <cit:option value="SPORTSTAETTE">SPORTSTAETTE</cit:option>
                                             <cit:option value="STADTBAHNBOGEN">STADTBAHNBOGEN</cit:option>
                                             <cit:option value="STRASSE">STRASSE</cit:option>
                                             <cit:option value="STRASSE_IN_FORST">STRASSE_IN_FORST</cit:option>
                                             <cit:option value="STRASSE_IN_KGA">STRASSE_IN_KGA</cit:option>
                                             <cit:option value="STRASSE_IN_PARK">STRASSE_IN_PARK</cit:option>
                                             <cit:option value="TUNNEL">TUNNEL</cit:option>
                                             <cit:option value="VERWALTUNGSWEG">VERWALTUNGSWEG</cit:option>
                                             <cit:option value="WALDWEG">WALDWEG</cit:option>
                                             <cit:option value="WASSERWERK">WASSERWERK</cit:option>
                                             <cit:option value="WOHNSCHIFF">WOHNSCHIFF</cit:option>
                                             <cit:option value="ZUFAHRT">ZUFAHRT</cit:option>
                                          </cit:inputSelect>
                                       </div>
                                    </div>
                                    <cit:inputSubmit type="stay.nonval.d0e972" id="stay.nonval.d0e972" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                    <script type="text/javascript">document.getElementById('stay_nonval_d0e972').style.display='none';</script>
                                    <cit:script>_unmask(myForm, "objtype", "string");</cit:script>
                                 </section>
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "F00000053") %>'>
                                    <cit:conditional test="!assistants.request.isValid('F00000053')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="F00000053"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="F00000053" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="F00000053" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="F00000053">Straße</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="F00000053"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_above 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "F00000016") %>'>
                                    <cit:conditional test="!assistants.request.isValid('F00000016')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="F00000016"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="F00000016" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="F00000016" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="F00000016">hausnr:</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="F00000016"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_above 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "F00000084") %>'>
                                    <cit:conditional test="!assistants.request.isValid('F00000084')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="F00000084"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="F00000084" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="F00000084" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="F00000084">hausnrz:</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="F00000084"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before width-xs" data-comments='<%= getComments(pageContext.getAttribute("form"), "hnr") %>'>
                                    <cit:conditional test="!assistants.request.isValid('hnr')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:conditional test="!My.isCustomReason('hnr')">
                                                <cit:errorText name="hnr"/>
                                             </cit:conditional>
                                             <cit:conditional test="My.isCustomReason('hnr')">
                                                <cit:errorText name="hnr">Bitte wählen Sie ein Hausnummer aus!</cit:errorText>
                                             </cit:conditional>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="hnr" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="hnr" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="hnr">Hausnummer (von)</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="hnr" onValidate="(/^\s*$/.test(value))||(myForm.objtype.includes(&#34;STRASSE&#34;) == true &amp;&amp; value.length == 0 ? false : true)" errtitle="Bitte wählen Sie ein Hausnummer aus!"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before width-xs" data-comments='<%= getComments(pageContext.getAttribute("form"), "F00000054") %>'>
                                    <cit:conditional test="!assistants.request.isValid('F00000054')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="F00000054"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="F00000054" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="F00000054" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="F00000054">Postleitzahl</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="F00000054"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "F00000035") %>'>
                                    <cit:conditional test="!assistants.request.isValid('F00000035')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="F00000035"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="F00000035" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="F00000035" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="F00000035">Ort</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="F00000035"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before 2_ro" data-comments='<%= getComments(pageContext.getAttribute("form"), "land") %>'>
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
                                       <cit:inputLabel name="land">Land</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputSelect name="land" onDefault="'000'">
                                             <cit:option value="">---bitte auswählen---</cit:option>
                                             <cit:xmlOptions src="urn:xmlid:C00000009" select="/*/SimpleCodeList/Row/Value[@ColumnRef=&#34;staatenname-kurz&#34;] " text="SimpleValue" value="parent::*/Value[@ColumnRef=&#34;schluessel-staat&#34;]/SimpleValue">
                                                <cit:sort select="SimpleValue" data-type="text" order="ascending" lang="de" case-order="upper-first"/>
                                             </cit:xmlOptions>
                                          </cit:inputSelect>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_above 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "bzrname") %>'>
                                    <cit:conditional test="!assistants.request.isValid('bzrname')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="bzrname"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="bzrname" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="bzrname" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="bzrname">Bezirk</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="bzrname"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "otnr") %>'>
                                    <cit:conditional test="!assistants.request.isValid('otnr')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="otnr"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="otnr" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="otnr" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="otnr">otnr:</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="otnr"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "bzrnr") %>'>
                                    <cit:conditional test="!assistants.request.isValid('bzrnr')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="bzrnr"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="bzrnr" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="bzrnr" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="bzrnr">bzrnr:</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="bzrnr"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_above 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "strnr") %>'>
                                    <cit:conditional test="!assistants.request.isValid('strnr')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="strnr"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="strnr" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="strnr" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="label">
                                       <cit:inputLabel name="strnr">strnr:</cit:inputLabel>
                                    </div>
                                    <div class="formline">
                                       <div class="inputcontainer">
                                          <cit:inputText name="strnr"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "otname") %>'>
                                    <cit:conditional test="!assistants.request.isValid('otname')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="otname"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="otname" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="otname" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="otname">Ortsteil</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="otname"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "k1000") %>'>
                                    <cit:conditional test="!assistants.request.isValid('k1000')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="k1000"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="k1000" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="k1000" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="k1000">k1000:</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="k1000"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "k5000") %>'>
                                    <cit:conditional test="!assistants.request.isValid('k5000')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="k5000"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="k5000" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="k5000" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="k5000">k5000:</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="k5000"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "xstat") %>'>
                                    <cit:conditional test="!assistants.request.isValid('xstat')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="xstat"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="xstat" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="xstat" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="xstat">xstat:</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="xstat"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "ystat") %>'>
                                    <cit:conditional test="!assistants.request.isValid('ystat')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="ystat"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="ystat" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="ystat" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="ystat">ystat:</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="ystat"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "etrs89_x") %>'>
                                    <cit:conditional test="!assistants.request.isValid('etrs89_x')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="etrs89_x"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="etrs89_x" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="etrs89_x" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="etrs89_x">etrs89_x:</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="etrs89_x"/>
                                       </div>
                                    </div>
                                 </section>
                                 <section class="block narrow label_before 2_hide" data-comments='<%= getComments(pageContext.getAttribute("form"), "etrs89_y") %>'>
                                    <cit:conditional test="!assistants.request.isValid('etrs89_y')">
                                       <p class="errorText">
                                          <strong>
                                             <cit:errorText name="etrs89_y"/>
                                          </strong>
                                       </p>
                                    </cit:conditional>
                                    <cit:errorText name="etrs89_y" id="#page-strict">
                                       <p class="errorText">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <cit:errorText name="etrs89_y" id="#page-soft">
                                       <p class="errorText loose">
                                          <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                       </p>
                                    </cit:errorText>
                                    <div class="formline">
                                       <cit:inputLabel name="etrs89_y">etrs89_y:</cit:inputLabel>
                                       <div class="inputcontainer">
                                          <cit:inputText name="etrs89_y"/>
                                       </div>
                                    </div>
                                 </section>
                                 <cit:inputComputed name="rbs_valid" value="(myForm.F00000035.toLowerCase() == &#34;berlin&#34; &amp;&amp;  myForm.land == &#34;000&#34;) ? validateAddress() : &#34;false&#34;"/>
                                 <cit:inputComputed name="strasse" value="myForm.F00000053"/>
                                 <cit:inputComputed name="plz" value="myForm.F00000054"/>
                                 <cit:inputComputed name="ort" value="myForm.F00000035"/>
                                 <cit:inputComputed name="staat" value="&#34;&#34;+calculateStaat()"/>
                                 <cit:inputComputed name="staat_code" value="myForm.land"/>
                              </section>
                           </cit:conditional>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
                           <h3 class="accessibility">Dialogverlauf</h3>
                           <span class="switch" title="Dialogverlauf öffnen/schließen">
                              <span class="accessibility">Dialogverlauf öffnen/schließen</span>
                           </span>
                           <ul class="icons"><% final boolean unvisited_d24e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d24e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                                    <a href="" class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d24e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d24e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d24e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d24e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d24e4 = !isVisited(session, "einreichen-des-antrags"); %><li class='past<%= unvisited_d24e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("einreichen-des-antrags") != null) { %><span class="item clickable" data-submit-value="resync.einreichen-des-antrags">
                                    <a href="" class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d24e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d24e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Einreichen des Antrags</span>
                                       <span class="labelicon" title='<%= unvisited_d24e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d24e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d24e6 = !isVisited(session, "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes"); %><li class='past<%= unvisited_d24e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d24e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d24e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Antragstellenden als gesetzliche Vertretung des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d24e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d24e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d24e8 = !isVisited(session, "weitere-angaben-antragsteller-in"); %><li class='present<%= unvisited_d24e8 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben Antragsteller/in</span>
                                       <span class="labelicon" title='<%= unvisited_d24e8 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d24e8 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d24e10 = !isVisited(session, "angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='future<%= unvisited_d24e10 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d24e10 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d24e10 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d24e12 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='future<%= unvisited_d24e12 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d24e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d24e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d24e14 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='future<%= unvisited_d24e14 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d24e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d24e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d24e16 = !isVisited(session, "angaben-anderer-elternteil-1-3"); %><li class='future<%= unvisited_d24e16 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben anderer Elternteil (1/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d24e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d24e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d24e18 = !isVisited(session, "angaben-anderer-elternteil-2-3"); %><li class='future<%= unvisited_d24e18 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben anderer Elternteil (2/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d24e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d24e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d24e20 = !isVisited(session, "angaben-anderer-elternteil-3-3"); %><li class='future<%= unvisited_d24e20 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben anderer Elternteil (3/3)</span>
                                       <span class="labelicon" title='<%= unvisited_d24e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d24e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d24e22 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d24e22 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d24e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d24e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d24e24 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d24e24 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d24e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d24e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d24e26 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d24e26 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d24e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d24e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d24e28 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d24e28 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d24e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d24e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d24e30 = !isVisited(session, "nachweise"); %><li class='future<%= unvisited_d24e30 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Nachweise</span>
                                       <span class="labelicon" title='<%= unvisited_d24e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d24e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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