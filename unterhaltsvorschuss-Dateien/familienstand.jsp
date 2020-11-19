<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("familienstand"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("familienstand"); %>

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
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Familienstand</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow>
            <cit:do action="gosub" href="angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird.jsp" scope="kind"/>
            <cit:do action="goto" href="betreuung-des-anderen-elternteiles.jsp"/>
         </cit:flow>
      </cit:control>
   </head>
   <body id="familienstand">
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
               <ul class="icons"><% final boolean unvisited_d17e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d17e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                        <a href="" class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d17e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d17e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d17e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d17e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d17e4 = !isVisited(session, "antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung"); %><li class='past<%= unvisited_d17e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung") != null) { %><span class="item clickable" data-submit-value="resync.antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung">
                        <a href="" class="label">
                           <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                           <span class="labelicon" title='<%= unvisited_d17e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d17e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                           <span class="labelicon" title='<%= unvisited_d17e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d17e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d17e6 = !isVisited(session, "bankdaten-antragsteller"); %><li class='past<%= unvisited_d17e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("bankdaten-antragsteller") != null) { %><span class="item clickable" data-submit-value="resync.bankdaten-antragsteller">
                        <a href="" class="label">
                           <span class="labeltext">Bankdaten Antragsteller</span>
                           <span class="labelicon" title='<%= unvisited_d17e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d17e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Bankdaten Antragsteller</span>
                           <span class="labelicon" title='<%= unvisited_d17e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d17e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d17e8 = !isVisited(session, "familienstand"); %><li class='present<%= unvisited_d17e8 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Familienstand</span>
                           <span class="labelicon" title='<%= unvisited_d17e8 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d17e8 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d17e10 = !isVisited(session, "angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='future<%= unvisited_d17e10 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d17e10 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d17e10 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d17e12 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d17e12 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d17e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d17e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d17e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='future<%= unvisited_d17e14 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d17e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d17e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d17e16 = !isVisited(session, "zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist"); %><li class='future<%= unvisited_d17e16 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Zusätzliche Angaben für den Fall, dass das Kind 15, 16 oder 17 Jahre alt ist</span>
                           <span class="labelicon" title='<%= unvisited_d17e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d17e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d17e18 = !isVisited(session, "sonstiges-einkommen-des-kindes"); %><li class='future<%= unvisited_d17e18 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Sonstiges Einkommen des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d17e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d17e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d17e20 = !isVisited(session, "einkommen-des-elternteils-bei-dem-das-kind-lebt"); %><li class='future<%= unvisited_d17e20 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Einkommen des Elternteils, bei dem das Kind lebt</span>
                           <span class="labelicon" title='<%= unvisited_d17e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d17e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d17e22 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='future<%= unvisited_d17e22 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d17e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d17e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d17e24 = !isVisited(session, "angaben-anderes-elternteil"); %><li class='future<%= unvisited_d17e24 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben anderes Elternteil</span>
                           <span class="labelicon" title='<%= unvisited_d17e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d17e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d17e26 = !isVisited(session, "weitere-angaben-zum-anderen-elternteil"); %><li class='future<%= unvisited_d17e26 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben zum anderen Elternteil</span>
                           <span class="labelicon" title='<%= unvisited_d17e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d17e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d17e28 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d17e28 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d17e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d17e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d17e30 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d17e30 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d17e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d17e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d17e32 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d17e32 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d17e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d17e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">Familienstand</h2>
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
                           <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "familienstand") %>' data-live-stay="stay_nonval_d0e330">
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
                                 <span class="pseudoLabel">Familienstand:</span>
                              </div>
                              <div class="formline">
                                 <div class="inputcontainer">
                                    <cit:choiceGroup name="familienstand">
                                       <div class="choice">
                                          <cit:inputChoice value="Ich bin verheiratet"/>
                                          <cit:inputLabel name="familienstand.Ich bin verheiratet">Ich bin verheiratet</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="Ich lebe in einer eingetragenen (gleichgeschlechtlichen) Lebenspartnerschaft"/>
                                          <cit:inputLabel name="familienstand.Ich lebe in einer eingetragenen (gleichgeschlechtlichen) Lebenspartnerschaft">Ich lebe in einer eingetragenen (gleichgeschlechtlichen) Lebenspartnerschaft</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="Ich bin ledig"/>
                                          <cit:inputLabel name="familienstand.Ich bin ledig">Ich bin ledig</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="Ich bin rechtskräftig geschieden"/>
                                          <cit:inputLabel name="familienstand.Ich bin rechtskräftig geschieden">Ich bin rechtskräftig geschieden</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="Ich lebe nicht mehr in einer eingetragenen gleichgeschlechtlichen Lebenspartnerschaft"/>
                                          <cit:inputLabel name="familienstand.Ich lebe nicht mehr in einer eingetragenen gleichgeschlechtlichen Lebenspartnerschaft">Ich lebe nicht mehr in einer eingetragenen gleichgeschlechtlichen Lebenspartnerschaft</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="Ich bin verwitwet"/>
                                          <cit:inputLabel name="familienstand.Ich bin verwitwet">Ich bin verwitwet</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="Ich lebe vom Ehegatten/der Ehegattin getrennt"/>
                                          <cit:inputLabel name="familienstand.Ich lebe vom Ehegatten/der Ehegattin getrennt">Ich lebe vom Ehegatten/der Ehegattin getrennt</cit:inputLabel>
                                       </div>
                                    </cit:choiceGroup>
                                 </div>
                              </div>
                              <cit:inputSubmit type="stay.nonval.d0e330" id="stay.nonval.d0e330" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                              <script type="text/javascript">document.getElementById('stay_nonval_d0e330').style.display='none';</script>
                              <cit:script>_unmask(myForm, "familienstand", "string");</cit:script>
                           </section>
                           <cit:conditional test="myForm.familienstand == &#34;Ich bin ledig&#34;">
                              <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vomanderenelternteilgetrennt") %>' data-live-stay="stay_nonval_d0e360">
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
                                 <cit:inputSubmit type="stay.nonval.d0e360" id="stay.nonval.d0e360" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e360').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "vomanderenelternteilgetrennt", "string");</cit:script>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.familienstand === &#34;Ich bin rechtskräftig geschieden&#34;">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "geschiedenseit") %>'>
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
                                 <div class="formline">
                                    <cit:inputLabel name="geschiedenseit">Ich bin rechtskräftig geschieden seit dem:</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputDate name="geschiedenseit" class="tiny focus-mark-before" showChooser="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.familienstand === &#34;Ich bin rechtskräftig geschieden&#34;">
                              <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "scheidungsurteilhochladen") %>' data-live-stay="stay_nonval_d0e384">
                                 <cit:conditional test="!assistants.request.isValid('scheidungsurteilhochladen')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="scheidungsurteilhochladen"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="scheidungsurteilhochladen" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="scheidungsurteilhochladen" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <span class="pseudoLabel">Möchten Sie das Scheidungsurteil direkt hochladen?</span>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer choice-inline">
                                       <cit:choiceGroup type="boolean" name="scheidungsurteilhochladen">
                                          <div class="choice">
                                             <cit:inputChoice value="true" immediate="true"/>
                                             <cit:inputLabel name="scheidungsurteilhochladen.true">Ja</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="false" immediate="true"/>
                                             <cit:inputLabel name="scheidungsurteilhochladen.false">Nein</cit:inputLabel>
                                          </div>
                                       </cit:choiceGroup>
                                    </div>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e384" id="stay.nonval.d0e384" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e384').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "scheidungsurteilhochladen", "boolean");</cit:script>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.scheidungsurteilhochladen == true">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "scheidungsurteil") %>'>
                                 <cit:conditional test="!assistants.request.isValid('scheidungsurteil')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="scheidungsurteil"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="scheidungsurteil" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="scheidungsurteil" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="scheidungsurteil">Bitte Scheidungsurteil hochladen</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputFile name="scheidungsurteil"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.familienstand === &#34;Ich lebe nicht (mehr) in einer eingetragenen gleichgeschlechtlichen Lebenspartnerschaft&#34;">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "nichtmehringleichgeschlechtlicherlebenspartnerschaftseit") %>'>
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
                                 <div class="formline">
                                    <cit:inputLabel name="nichtmehringleichgeschlechtlicherlebenspartnerschaftseit">Ich lebe nicht (mehr) in einer eingetragenen gleichgeschlechtlichen Lebenspartnerschaft seit</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputDate name="nichtmehringleichgeschlechtlicherlebenspartnerschaftseit" class="tiny focus-mark-before" showChooser="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.familienstand === &#34;Ich lebe nicht (mehr) in einer eingetragenen gleichgeschlechtlichen Lebenspartnerschaft&#34;">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "aufhebungsurkunde") %>'>
                                 <cit:conditional test="!assistants.request.isValid('aufhebungsurkunde')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="aufhebungsurkunde"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="aufhebungsurkunde" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="aufhebungsurkunde" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="aufhebungsurkunde">Bitte Aufhebungsurkunde hochladen</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputFile name="aufhebungsurkunde"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.familienstand === &#34;Ich bin verwitwet&#34;">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "verwitwetseit") %>'>
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
                                 <div class="formline">
                                    <cit:inputLabel name="verwitwetseit">Ich bin verwitwet seit dem</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputDate name="verwitwetseit" class="tiny focus-mark-before" showChooser="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.familienstand === &#34;Ich bin verwitwet&#34;">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "sterbeurkunde") %>'>
                                 <cit:conditional test="!assistants.request.isValid('sterbeurkunde')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="sterbeurkunde"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="sterbeurkunde" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="sterbeurkunde" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="sterbeurkunde">Bitte Sterbeurkunde des Ehegatten/der Ehegattin hochladen</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputFile name="sterbeurkunde"/>
                                    </div>
                                 </div>
                              </section>
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
                                       <cit:inputDate name="vonelternteilgetrenntseit" class="tiny focus-mark-before" showChooser="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.familienstand === &#34;Ich lebe vom Ehegatten/der Ehegattin/dem/der eingetragenen (gleichgeschlechtlichen) Lebenspartner/in getrennt&#34;">
                              <section class="block narrow label_before" data-comments='<%= getComments(pageContext.getAttribute("form"), "vonehepartnergetrenntseit") %>'>
                                 <cit:conditional test="!assistants.request.isValid('vonehepartnergetrenntseit')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="vonehepartnergetrenntseit"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="vonehepartnergetrenntseit" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="vonehepartnergetrenntseit" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="formline">
                                    <cit:inputLabel name="vonehepartnergetrenntseit">Ich lebe vom Ehegatten/der Ehegattin/dem/der eingetragenen (gleichgeschlechtlichen) Lebenspartner/in getrennt seit dem</cit:inputLabel>
                                    <div class="inputcontainer">
                                       <cit:inputDate name="vonehepartnergetrenntseit" class="tiny focus-mark-before" showChooser="true"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.familienstand === &#34;Ich lebe vom Ehegatten/der Ehegattin getrennt&#34;">
                              <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "vonehepartnergetrenntweil") %>' data-live-stay="stay_nonval_d0e456">
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
                                             <cit:inputChoice value="Die Ehe im Ausland geschlossen wurde und/oder mein Ehegatte noch nicht einreisen konnte."/>
                                             <cit:inputLabel name="vonehepartnergetrenntweil.Die Ehe im Ausland geschlossen wurde und/oder mein Ehegatte noch nicht einreisen konnte.">Die Ehe im Ausland geschlossen wurde und/oder mein Ehegatte noch nicht einreisen konnte.</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="Mein Ehegatte/Lebenspartner voraussichtlich wenigstens sechs Monate wegen einer gerichtlichen Anordnung (z.B. Haft/ Krankheit/ Behinderung) in einer Anstalt lebt."/>
                                             <cit:inputLabel name="vonehepartnergetrenntweil.Mein Ehegatte/Lebenspartner voraussichtlich wenigstens sechs Monate wegen einer gerichtlichen Anordnung (z.B. Haft/ Krankheit/ Behinderung) in einer Anstalt lebt.">Mein Ehegatte/Lebenspartner voraussichtlich wenigstens sechs Monate wegen einer gerichtlichen Anordnung (z.B. Haft/ Krankheit/ Behinderung) in einer Anstalt lebt.</cit:inputLabel>
                                          </div>
                                       </cit:choiceGroup>
                                    </div>
                                 </div>
                                 <cit:inputSubmit type="stay.nonval.d0e456" id="stay.nonval.d0e456" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                                 <script type="text/javascript">document.getElementById('stay_nonval_d0e456').style.display='none';</script>
                                 <cit:script>_unmask(myForm, "vonehepartnergetrenntweil", "string");</cit:script>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.vonehepartnergetrenntweil == &#34;Mein Ehegatte/Lebenspartner voraussichtlich wenigstens sechs Monate wegen einer gerichtlichen Anordnung (z.B. Haft/ Krankheit/ Behinderung) in einer Anstalt lebt.&#34;">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "getrenntweilnachweis") %>'>
                                 <cit:conditional test="!assistants.request.isValid('getrenntweilnachweis')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="getrenntweilnachweis"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="getrenntweilnachweis" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="getrenntweilnachweis" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="getrenntweilnachweis">Bitte Nachweise vorlegen</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputFile name="getrenntweilnachweis"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.familienstand === &#34;Ich lebe vom Ehegatten/der Ehegattin getrennt&#34;">
                              <section class="group narrow">
                                 <header>
                                    <h3>Daten Ehegatten/Ehegattin/Lebenspartners/Lebenspartnerin</h3>
                                 </header>
                                 <section class="infobox narrow">Bitte geben Sie hier die Daten des Ehegatten/der Ehegattin/des Lebenspartners/der Lebenspartnerin an.<p/></section>
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
                                          <cit:inputDate name="geburtsdatum" class="tiny focus-mark-before" showChooser="true"/>
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
                                          <cit:inputNumber name="hausnummer" class="number rightalign use-size" size="15"/>
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
                              </section>
                           </cit:conditional>
                        </div>
                        <nav id="roadmap_bottom" class="roadmap">
                           <h3 class="accessibility">Dialogverlauf</h3>
                           <span class="switch" title="Dialogverlauf öffnen/schließen">
                              <span class="accessibility">Dialogverlauf öffnen/schließen</span>
                           </span>
                           <ul class="icons"><% final boolean unvisited_d22e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d22e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                                    <a href="" class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d22e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d22e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d22e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d22e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d22e4 = !isVisited(session, "antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung"); %><li class='past<%= unvisited_d22e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung") != null) { %><span class="item clickable" data-submit-value="resync.antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung">
                                    <a href="" class="label">
                                       <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                                       <span class="labelicon" title='<%= unvisited_d22e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d22e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                                       <span class="labelicon" title='<%= unvisited_d22e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d22e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d22e6 = !isVisited(session, "bankdaten-antragsteller"); %><li class='past<%= unvisited_d22e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("bankdaten-antragsteller") != null) { %><span class="item clickable" data-submit-value="resync.bankdaten-antragsteller">
                                    <a href="" class="label">
                                       <span class="labeltext">Bankdaten Antragsteller</span>
                                       <span class="labelicon" title='<%= unvisited_d22e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d22e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Bankdaten Antragsteller</span>
                                       <span class="labelicon" title='<%= unvisited_d22e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d22e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d22e8 = !isVisited(session, "familienstand"); %><li class='present<%= unvisited_d22e8 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Familienstand</span>
                                       <span class="labelicon" title='<%= unvisited_d22e8 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d22e8 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d22e10 = !isVisited(session, "angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='future<%= unvisited_d22e10 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d22e10 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d22e10 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d22e12 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='future<%= unvisited_d22e12 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d22e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d22e12 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d22e14 = !isVisited(session, "demnaechst-vollenden-werden"); %><li class='future<%= unvisited_d22e14 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das 12. Lebensjahr vollendet haben, bzw. demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d22e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d22e14 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d22e16 = !isVisited(session, "zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist"); %><li class='future<%= unvisited_d22e16 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Zusätzliche Angaben für den Fall, dass das Kind 15, 16 oder 17 Jahre alt ist</span>
                                       <span class="labelicon" title='<%= unvisited_d22e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d22e16 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d22e18 = !isVisited(session, "sonstiges-einkommen-des-kindes"); %><li class='future<%= unvisited_d22e18 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Sonstiges Einkommen des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d22e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d22e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d22e20 = !isVisited(session, "einkommen-des-elternteils-bei-dem-das-kind-lebt"); %><li class='future<%= unvisited_d22e20 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Einkommen des Elternteils, bei dem das Kind lebt</span>
                                       <span class="labelicon" title='<%= unvisited_d22e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d22e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d22e22 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='future<%= unvisited_d22e22 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d22e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d22e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d22e24 = !isVisited(session, "angaben-anderes-elternteil"); %><li class='future<%= unvisited_d22e24 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben anderes Elternteil</span>
                                       <span class="labelicon" title='<%= unvisited_d22e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d22e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d22e26 = !isVisited(session, "weitere-angaben-zum-anderen-elternteil"); %><li class='future<%= unvisited_d22e26 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben zum anderen Elternteil</span>
                                       <span class="labelicon" title='<%= unvisited_d22e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d22e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d22e28 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d22e28 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d22e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d22e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d22e30 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d22e30 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d22e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d22e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d22e32 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d22e32 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d22e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d22e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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