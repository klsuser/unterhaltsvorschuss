<?xml version="1.0" encoding="utf-8"?>
<%@ page contentType="application/xhtml+xml; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://www.cit.de/ns/jsp" prefix="cit" %>
<%@ page import="de.cit.jsp.control.PageProcessor" %>
<%! private boolean isVisited(final HttpSession session, final String id) { return ((java.util.Set)session.getAttribute("composer.visitedPages")).contains(id); } %>
<% if (session.getAttribute("composer.visitedPages") == null) { session.setAttribute("composer.visitedPages", java.util.Collections.synchronizedSet(new java.util.HashSet())); } %>
<% PageProcessor pageProcessor = PageProcessor.getSessionInstance(session); %>
<% pageProcessor.createSyncPoint("ergaenzende-angaben-fuer-kinder-die-das-zwoelfte-lebensjahr-vollendet-haben-beziehungsweise-demnaechst-vollenden-werden"); %>
<% ((java.util.Set)session.getAttribute("composer.visitedPages")).add("ergaenzende-angaben-fuer-kinder-die-das-zwoelfte-lebensjahr-vollendet-haben-beziehungsweise-demnaechst-vollenden-werden"); %>

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
         <cit:conditional test="!assistants.request.valid">Fehler beim Ausfüllen - </cit:conditional>unterhaltsvorschuss - Ergänzende Angaben für Kinder, die das zwölfte Lebensjahr vollendet haben, beziehungsweise demnächst vollenden werden</title>
      <cit:control>
         <cit:link rel="helpbase" href="help.jsp"/>
         <cit:flow>
            <cit:do action="goto" href="zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist.jsp"/>
         </cit:flow>
      </cit:control>
   </head>
   <body id="ergaenzende-angaben-fuer-kinder-die-das-zwoelfte-lebensjahr-vollendet-haben-beziehungsweise-demnaechst-vollenden-werden">
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
               <ul class="icons"><% final boolean unvisited_d43e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d43e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                        <a href="" class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d43e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d43e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Datenschutzhinweis</span>
                           <span class="labelicon" title='<%= unvisited_d43e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d43e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d43e4 = !isVisited(session, "antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung"); %><li class='past<%= unvisited_d43e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung") != null) { %><span class="item clickable" data-submit-value="resync.antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung">
                        <a href="" class="label">
                           <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                           <span class="labelicon" title='<%= unvisited_d43e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d43e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                           <span class="labelicon" title='<%= unvisited_d43e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d43e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d43e6 = !isVisited(session, "bankdaten-antragsteller"); %><li class='past<%= unvisited_d43e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("bankdaten-antragsteller") != null) { %><span class="item clickable" data-submit-value="resync.bankdaten-antragsteller">
                        <a href="" class="label">
                           <span class="labeltext">Bankdaten Antragsteller</span>
                           <span class="labelicon" title='<%= unvisited_d43e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d43e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Bankdaten Antragsteller</span>
                           <span class="labelicon" title='<%= unvisited_d43e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d43e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d43e8 = !isVisited(session, "letzter-bezirk-und-ortsteil-in-berlin"); %><li class='past<%= unvisited_d43e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("letzter-bezirk-und-ortsteil-in-berlin") != null) { %><span class="item clickable" data-submit-value="resync.letzter-bezirk-und-ortsteil-in-berlin">
                        <a href="" class="label">
                           <span class="labeltext">Letzter Bezirk und Ortsteil in Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d43e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d43e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Letzter Bezirk und Ortsteil in Berlin</span>
                           <span class="labelicon" title='<%= unvisited_d43e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d43e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d43e10 = !isVisited(session, "familienstand"); %><li class='past<%= unvisited_d43e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("familienstand") != null) { %><span class="item clickable" data-submit-value="resync.familienstand">
                        <a href="" class="label">
                           <span class="labeltext">Familienstand</span>
                           <span class="labelicon" title='<%= unvisited_d43e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d43e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Familienstand</span>
                           <span class="labelicon" title='<%= unvisited_d43e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d43e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d43e12 = !isVisited(session, "angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d43e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird">
                        <a href="" class="label">
                           <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d43e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d43e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                           <span class="labelicon" title='<%= unvisited_d43e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d43e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d43e14 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='past<%= unvisited_d43e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("betreuung-des-anderen-elternteiles") != null) { %><span class="item clickable" data-submit-value="resync.betreuung-des-anderen-elternteiles">
                        <a href="" class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d43e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d43e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </a>
                     </span><% } else { %><span class="item">
                        <span class="label">
                           <span class="labeltext">Betreuung des anderen Elternteiles</span>
                           <span class="labelicon" title='<%= unvisited_d43e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                              <span class="accessibility"><%= unvisited_d43e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                           </span>
                        </span>
                     </span><% } %></li><% final boolean unvisited_d43e16 = !isVisited(session, "ergaenzende-angaben-fuer-kinder-die-das-zwoelfte-lebensjahr-vollendet-haben-beziehungsweise-demnaechst-vollenden-werden"); %><li class='present<%= unvisited_d43e16 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Ergänzende Angaben für Kinder, die das zwölfte Lebensjahr vollendet haben, beziehungsweise demnächst vollenden werden</span>
                           <span class="labelicon" title='<%= unvisited_d43e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                              <span class="accessibility"><%= unvisited_d43e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d43e18 = !isVisited(session, "zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist"); %><li class='future<%= unvisited_d43e18 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Zusätzliche Angaben für den Fall, dass das Kind 15, 16 oder 17 Jahre alt ist</span>
                           <span class="labelicon" title='<%= unvisited_d43e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d43e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d43e20 = !isVisited(session, "sonstiges-einkommen-des-kindes"); %><li class='future<%= unvisited_d43e20 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Sonstiges Einkommen des Kindes</span>
                           <span class="labelicon" title='<%= unvisited_d43e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d43e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d43e22 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='future<%= unvisited_d43e22 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                           <span class="labelicon" title='<%= unvisited_d43e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d43e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d43e24 = !isVisited(session, "angaben-anderes-elternteil"); %><li class='future<%= unvisited_d43e24 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben anderes Elternteil</span>
                           <span class="labelicon" title='<%= unvisited_d43e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d43e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d43e26 = !isVisited(session, "weitere-angaben-zum-anderen-elternteil"); %><li class='future<%= unvisited_d43e26 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Weitere Angaben zum anderen Elternteil</span>
                           <span class="labelicon" title='<%= unvisited_d43e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d43e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d43e28 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d43e28 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zum Unterhalt</span>
                           <span class="labelicon" title='<%= unvisited_d43e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d43e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d43e30 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d43e30 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                           <span class="labelicon" title='<%= unvisited_d43e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d43e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                           </span>
                        </span>
                     </span>
                  </li><% final boolean unvisited_d43e32 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d43e32 ? " unvisited" : "" %>'>
                     <span class="item">
                        <span class="label">
                           <span class="labeltext">Hinweise</span>
                           <span class="labelicon" title='<%= unvisited_d43e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                              <span class="accessibility"><%= unvisited_d43e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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
                           <h2 id="title">Ergänzende Angaben für Kinder, die das zwölfte Lebensjahr vollendet haben, beziehungsweise demnächst vollenden werden</h2>
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
                           <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "antragjaehrlicheueberpruefung") %>'>
                              <cit:conditional test="!assistants.request.isValid('antragjaehrlicheueberpruefung')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="antragjaehrlicheueberpruefung"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="antragjaehrlicheueberpruefung" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="antragjaehrlicheueberpruefung" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="label">
                                 <span class="pseudoLabel">Bitte wählen Sie den zutreffenden Punkt aus</span>
                              </div>
                              <div class="formline">
                                 <div class="inputcontainer">
                                    <cit:choiceGroup name="antragjaehrlicheueberpruefung">
                                       <div class="choice">
                                          <cit:inputChoice value="zum Antrag"/>
                                          <cit:inputLabel name="antragjaehrlicheueberpruefung.zum Antrag">zum Antrag</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="zur jährlichen Überprüfung"/>
                                          <cit:inputLabel name="antragjaehrlicheueberpruefung.zur jährlichen Überprüfung">zur jährlichen Überprüfung</cit:inputLabel>
                                       </div>
                                    </cit:choiceGroup>
                                 </div>
                              </div>
                              <footer>auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in der jeweils geltenden Fassung</footer>
                           </section>
                           <section class="infobox narrow"><p><b>Hinweis:</b></p><p><b>- Bei Beantragung werden die nachfolgenden Angaben und Nachweise für den Monat benötigt, in dem Unterhaltsvorschuss beantragt wird.</b></p><p><b>- Bei Überprüfung der Anspruchsvoraussetzungen werden die Angaben für den Monat <cit:display errorReplacement="―" expression="My.undefinedReplacement(myForm.getMonth())"/> benötigt.</b></p><p><b><cit:display errorReplacement="―" expression="My.undefinedReplacement(myForm.kind.name)"/></b></p></section>
                           <section class="block narrow" data-comments='<%= getComments(pageContext.getAttribute("form"), "leistungsmonat") %>'>
                              <header>Das Kind <cit:display errorReplacement="―" expression="My.undefinedReplacement(myForm.kind.vorname)"/> 
                                 <cit:display errorReplacement="―" expression="My.undefinedReplacement(myForm.kind.name)"/>, geboren am <cit:display errorReplacement="―" expression="My.undefinedReplacement(myForm.kind.geburtsdatum)"/> hat im maßgeblichem</header>
                              <cit:conditional test="!assistants.request.isValid('leistungsmonat')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="leistungsmonat"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="leistungsmonat" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="leistungsmonat" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="formline">
                                 <cit:inputLabel name="leistungsmonat">Monat</cit:inputLabel>
                                 <div class="inputcontainer">
                                    <cit:inputSelect name="leistungsmonat">
                                       <cit:option value="---bitte wählen Sie aus---">---bitte wählen Sie aus---</cit:option>
                                       <cit:option value="Januar">Januar</cit:option>
                                       <cit:option value="Februar">Februar</cit:option>
                                       <cit:option value="März">März</cit:option>
                                       <cit:option value="April">April</cit:option>
                                       <cit:option value="Mai">Mai</cit:option>
                                       <cit:option value="Juni">Juni</cit:option>
                                       <cit:option value="Juli">Juli</cit:option>
                                       <cit:option value="August">August</cit:option>
                                       <cit:option value="September">September</cit:option>
                                       <cit:option value="Oktober">Oktober</cit:option>
                                       <cit:option value="November">November</cit:option>
                                       <cit:option value="Dezember">Dezember</cit:option>
                                    </cit:inputSelect>
                                 </div>
                              </div>
                           </section>
                           <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "leistungenjobcenter") %>' data-live-stay="stay_nonval_d0e1104">
                              <cit:conditional test="!assistants.request.isValid('leistungenjobcenter')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="leistungenjobcenter"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="leistungenjobcenter" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="leistungenjobcenter" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="label">
                                 <span class="pseudoLabel">Leistungen vom Jobcenter nach dem SGB II ("Hartz IV") beantragt/erhalten</span>
                              </div>
                              <div class="formline">
                                 <div class="inputcontainer choice-inline">
                                    <cit:choiceGroup type="boolean" name="leistungenjobcenter">
                                       <div class="choice">
                                          <cit:inputChoice value="true" immediate="true"/>
                                          <cit:inputLabel name="leistungenjobcenter.true">Ja</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="false" immediate="true"/>
                                          <cit:inputLabel name="leistungenjobcenter.false">Nein</cit:inputLabel>
                                       </div>
                                    </cit:choiceGroup>
                                 </div>
                              </div>
                              <cit:inputSubmit type="stay.nonval.d0e1104" id="stay.nonval.d0e1104" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                              <script type="text/javascript">document.getElementById('stay_nonval_d0e1104').style.display='none';</script>
                              <cit:script>_unmask(myForm, "leistungenjobcenter", "boolean");</cit:script>
                           </section>
                           <section class="block live narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "kinderwohngeld") %>' data-live-stay="stay_nonval_d0e1113">
                              <cit:conditional test="!assistants.request.isValid('kinderwohngeld')">
                                 <p class="errorText">
                                    <strong>
                                       <cit:errorText name="kinderwohngeld"/>
                                    </strong>
                                 </p>
                              </cit:conditional>
                              <cit:errorText name="kinderwohngeld" id="#page-strict">
                                 <p class="errorText">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <cit:errorText name="kinderwohngeld" id="#page-soft">
                                 <p class="errorText loose">
                                    <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                 </p>
                              </cit:errorText>
                              <div class="label">
                                 <span class="pseudoLabel">Kinderwohngeld beantragt/erhalten</span>
                              </div>
                              <div class="formline">
                                 <div class="inputcontainer choice-inline">
                                    <cit:choiceGroup type="boolean" name="kinderwohngeld">
                                       <div class="choice">
                                          <cit:inputChoice value="true" immediate="true"/>
                                          <cit:inputLabel name="kinderwohngeld.true">Ja</cit:inputLabel>
                                       </div>
                                       <div class="choice">
                                          <cit:inputChoice value="false" immediate="true"/>
                                          <cit:inputLabel name="kinderwohngeld.false">Nein</cit:inputLabel>
                                       </div>
                                    </cit:choiceGroup>
                                 </div>
                              </div>
                              <cit:inputSubmit type="stay.nonval.d0e1113" id="stay.nonval.d0e1113" value="OK" title="Klicken Sie auf OK, um die Seite zu aktualisieren."/>
                              <script type="text/javascript">document.getElementById('stay_nonval_d0e1113').style.display='none';</script>
                              <cit:script>_unmask(myForm, "kinderwohngeld", "boolean");</cit:script>
                           </section>
                           <cit:conditional test="myForm.leistungenjobcenter == true">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "bescheidjobcenter") %>'>
                                 <cit:conditional test="!assistants.request.isValid('bescheidjobcenter')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="bescheidjobcenter"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="bescheidjobcenter" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="bescheidjobcenter" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="bescheidjobcenter">Fügen Sie bitte den vollständigen aktuellsten Bescheid des Jobcenters für den maßgeblichen Monat bei</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputFile name="bescheidjobcenter"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.kinderwohngeld == true">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "bescheidkinderwohngeld") %>'>
                                 <cit:conditional test="!assistants.request.isValid('bescheidkinderwohngeld')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="bescheidkinderwohngeld"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="bescheidkinderwohngeld" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="bescheidkinderwohngeld" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <cit:inputLabel name="bescheidkinderwohngeld">bescheidkinderwohngeld:</cit:inputLabel>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer">
                                       <cit:inputFile name="bescheidkinderwohngeld"/>
                                    </div>
                                 </div>
                              </section>
                           </cit:conditional>
                           <cit:conditional test="myForm.leistungenjobcenter == true">
                              <section class="block narrow label_above" data-comments='<%= getComments(pageContext.getAttribute("form"), "erzielungbruttoeinkommen") %>'>
                                 <cit:conditional test="!assistants.request.isValid('erzielungbruttoeinkommen')">
                                    <p class="errorText">
                                       <strong>
                                          <cit:errorText name="erzielungbruttoeinkommen"/>
                                       </strong>
                                    </p>
                                 </cit:conditional>
                                 <cit:errorText name="erzielungbruttoeinkommen" id="#page-strict">
                                    <p class="errorText">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <cit:errorText name="erzielungbruttoeinkommen" id="#page-soft">
                                    <p class="errorText loose">
                                       <strong>Bitte Eingabe bzw. Auswahl prüfen.</strong>
                                    </p>
                                 </cit:errorText>
                                 <div class="label">
                                    <span class="pseudoLabel">Der Elternteil, bei dem das Kind lebt, hat im maßgeblichen Monat Bruttoeinkommen in Höhe von mindestens 600 Euro erzielt (siehe Erläuterungen).</span>
                                 </div>
                                 <div class="formline">
                                    <div class="inputcontainer choice-inline">
                                       <cit:choiceGroup type="boolean" name="erzielungbruttoeinkommen">
                                          <div class="choice">
                                             <cit:inputChoice value="true"/>
                                             <cit:inputLabel name="erzielungbruttoeinkommen.true">Ja</cit:inputLabel>
                                          </div>
                                          <div class="choice">
                                             <cit:inputChoice value="false"/>
                                             <cit:inputLabel name="erzielungbruttoeinkommen.false">Nein</cit:inputLabel>
                                          </div>
                                       </cit:choiceGroup>
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
                           <ul class="icons"><% final boolean unvisited_d51e2 = !isVisited(session, "datenschutzhinweis"); %><li class='past<%= unvisited_d51e2 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("datenschutzhinweis") != null) { %><span class="item clickable" data-submit-value="resync.datenschutzhinweis">
                                    <a href="" class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d51e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d51e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Datenschutzhinweis</span>
                                       <span class="labelicon" title='<%= unvisited_d51e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d51e2 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d51e4 = !isVisited(session, "antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung"); %><li class='past<%= unvisited_d51e4 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung") != null) { %><span class="item clickable" data-submit-value="resync.antrag-auf-leistungen-nach-dem-unterhaltsvorschussgesetz-uvg-in-jeweils-geltenden-fassung">
                                    <a href="" class="label">
                                       <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                                       <span class="labelicon" title='<%= unvisited_d51e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d51e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Antrag auf Leistungen nach dem Unterhaltsvorschussgesetz (UVG) in jeweils geltenden Fassung</span>
                                       <span class="labelicon" title='<%= unvisited_d51e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d51e4 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d51e6 = !isVisited(session, "bankdaten-antragsteller"); %><li class='past<%= unvisited_d51e6 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("bankdaten-antragsteller") != null) { %><span class="item clickable" data-submit-value="resync.bankdaten-antragsteller">
                                    <a href="" class="label">
                                       <span class="labeltext">Bankdaten Antragsteller</span>
                                       <span class="labelicon" title='<%= unvisited_d51e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d51e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Bankdaten Antragsteller</span>
                                       <span class="labelicon" title='<%= unvisited_d51e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d51e6 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d51e8 = !isVisited(session, "letzter-bezirk-und-ortsteil-in-berlin"); %><li class='past<%= unvisited_d51e8 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("letzter-bezirk-und-ortsteil-in-berlin") != null) { %><span class="item clickable" data-submit-value="resync.letzter-bezirk-und-ortsteil-in-berlin">
                                    <a href="" class="label">
                                       <span class="labeltext">Letzter Bezirk und Ortsteil in Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d51e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d51e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Letzter Bezirk und Ortsteil in Berlin</span>
                                       <span class="labelicon" title='<%= unvisited_d51e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d51e8 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d51e10 = !isVisited(session, "familienstand"); %><li class='past<%= unvisited_d51e10 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("familienstand") != null) { %><span class="item clickable" data-submit-value="resync.familienstand">
                                    <a href="" class="label">
                                       <span class="labeltext">Familienstand</span>
                                       <span class="labelicon" title='<%= unvisited_d51e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d51e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Familienstand</span>
                                       <span class="labelicon" title='<%= unvisited_d51e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d51e10 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d51e12 = !isVisited(session, "angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird"); %><li class='past<%= unvisited_d51e12 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird") != null) { %><span class="item clickable" data-submit-value="resync.angaben-zu-dem-kind-fuer-das-die-leistung-beantragt-wird">
                                    <a href="" class="label">
                                       <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d51e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d51e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu dem Kind, für das die Leistung beantragt wird</span>
                                       <span class="labelicon" title='<%= unvisited_d51e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d51e12 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d51e14 = !isVisited(session, "betreuung-des-anderen-elternteiles"); %><li class='past<%= unvisited_d51e14 ? " unvisited" : "" %>'><% if (pageProcessor.getSyncPoint("betreuung-des-anderen-elternteiles") != null) { %><span class="item clickable" data-submit-value="resync.betreuung-des-anderen-elternteiles">
                                    <a href="" class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d51e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d51e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </a>
                                 </span><% } else { %><span class="item">
                                    <span class="label">
                                       <span class="labeltext">Betreuung des anderen Elternteiles</span>
                                       <span class="labelicon" title='<%= unvisited_d51e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d51e14 ? "Zurückliegende Seite (nicht besucht)" : "Zurückliegende Seite" %></span>
                                       </span>
                                    </span>
                                 </span><% } %></li><% final boolean unvisited_d51e16 = !isVisited(session, "ergaenzende-angaben-fuer-kinder-die-das-zwoelfte-lebensjahr-vollendet-haben-beziehungsweise-demnaechst-vollenden-werden"); %><li class='present<%= unvisited_d51e16 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Ergänzende Angaben für Kinder, die das zwölfte Lebensjahr vollendet haben, beziehungsweise demnächst vollenden werden</span>
                                       <span class="labelicon" title='<%= unvisited_d51e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %>'>
                                          <span class="accessibility"><%= unvisited_d51e16 ? "Aktuelle Seite (nicht besucht)" : "Aktuelle Seite" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d51e18 = !isVisited(session, "zusaetzliche-angaben-fuer-den-fall-dass-das-kind-15-16-oder-17-jahre-alt-ist"); %><li class='future<%= unvisited_d51e18 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Zusätzliche Angaben für den Fall, dass das Kind 15, 16 oder 17 Jahre alt ist</span>
                                       <span class="labelicon" title='<%= unvisited_d51e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d51e18 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d51e20 = !isVisited(session, "sonstiges-einkommen-des-kindes"); %><li class='future<%= unvisited_d51e20 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Sonstiges Einkommen des Kindes</span>
                                       <span class="labelicon" title='<%= unvisited_d51e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d51e20 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d51e22 = !isVisited(session, "vormundschaft-beistandschaft-rechtsbeistand"); %><li class='future<%= unvisited_d51e22 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Vormundschaft / Beistandschaft / Rechtsbeistand</span>
                                       <span class="labelicon" title='<%= unvisited_d51e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d51e22 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d51e24 = !isVisited(session, "angaben-anderes-elternteil"); %><li class='future<%= unvisited_d51e24 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben anderes Elternteil</span>
                                       <span class="labelicon" title='<%= unvisited_d51e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d51e24 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d51e26 = !isVisited(session, "weitere-angaben-zum-anderen-elternteil"); %><li class='future<%= unvisited_d51e26 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Weitere Angaben zum anderen Elternteil</span>
                                       <span class="labelicon" title='<%= unvisited_d51e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d51e26 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d51e28 = !isVisited(session, "angaben-zum-unterhalt"); %><li class='future<%= unvisited_d51e28 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zum Unterhalt</span>
                                       <span class="labelicon" title='<%= unvisited_d51e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d51e28 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d51e30 = !isVisited(session, "angaben-zu-weiteren-gemeinsamen-kindern-des-antragstellers-der-antragstellerin"); %><li class='future<%= unvisited_d51e30 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Angaben zu weiteren (gemeinsamen) Kindern des Antragstellers / der Antragstellerin</span>
                                       <span class="labelicon" title='<%= unvisited_d51e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d51e30 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
                                       </span>
                                    </span>
                                 </span>
                              </li><% final boolean unvisited_d51e32 = !isVisited(session, "hinweise"); %><li class='future<%= unvisited_d51e32 ? " unvisited" : "" %>'>
                                 <span class="item">
                                    <span class="label">
                                       <span class="labeltext">Hinweise</span>
                                       <span class="labelicon" title='<%= unvisited_d51e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %>'>
                                          <span class="accessibility"><%= unvisited_d51e32 ? "Kommende Seite" : "Kommende Seite (besucht)" %></span>
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