//----------------xZufi--------------------

var NSAPP = 'antragsteller';
var NSAUT = 'behoerde';

var apppartnertype = ['','partnertype'];
var appnationality = ['',''];
var appformOfAddress = [NSAPP,'anrede'];
var appacademicTitle = ['',''];
var appfirstName = [NSAPP,'F00000045'];
var applastName = [NSAPP,'F00000013'];
var apporgName1 = [NSAPP,'Firma'];
var apporgName2 = ['',''];
var appstreet = [NSAPP,'F00000053'];
var apphouseNo = [NSAPP,'F00000016'];
var apppostalCode = [NSAPP,'F00000054'];
var appcity = [NSAPP,'F00000035'];
var apppostOfficeBox = ['',''];
var appcountry = [NSAPP,'land'];
var apptelNo = [NSAPP,'telefon'];
var appmobileNo = ['',''];
var appfaxNo = [NSAPP,'F00000072'];
var appeMail = [NSAPP,'F00000071'];
var appbezirk = [NSAPP,'bzrname'];
var appbezirkNr = [NSAPP,'bzrnr'];
var xzufibezirkNr = ['',''];

var autidentityNamespace = ['',''];
var autpartnerID = ['',''];
var autpartnertype = ['',''];
var autnationality = ['',''];
var autformOfAddress = ['',''];
var autacademicTitle = ['',''];
var autfirstName = ['',''];
var autlastName = ['',''];
var autorgName1 = ['',''];
var autorgName2 = ['',''];
var autstreet = ['',''];
var authouseNo = ['',''];
var autpostalCode = ['',''];
var autcity = ['',''];
var autpostOfficeBox = ['',''];
var autcountry = ['',''];
var auttelNo = ['',''];
var autmobileNo = ['',''];
var autfaxNo = ['',''];
var auteMail = ['',''];
var autbezirk = ['',''];
var autbezirkNr = ['',''];

//^^^^^^^^^^^^^^^^xZufi^^^^^^^^^^^^^^^^^^^^



//---------------copy to modell.js------------------//

var mustbeBerlin = true;

//-----Get SKB Data ------


function isSKB(){
    if (!myForm.user || myForm.user == undefined){
        return false;
    }else{
        return true;
    }
}

function getSKBPerson(){
    var pers = '';
    if (isSKB()){
        pers = myForm.user.modeid;
    }
    return pers;
}


function getSKBTitle(){
    var res = '';
    if (isSKB()) {   
        if(myForm.user.title){
            res = myForm.user.title;
        }
    }
    return res;
}

function getSKBLastname(){
    var res = '';
    if (isSKB()) {   
        if(myForm.user.lastname){
            res = myForm.user.lastname;
        }
    }
    return res;
}

function getSKBFirstname()   {
    // (myForm.user) ? (myForm.user.firstname) ? myForm.user.firstname : "" : ""
    var res = '';
    if (isSKB()) {   
        if(myForm.user.firstname){
            res = myForm.user.firstname;
        }
    }
    return res;
}


function getSKBDateofbirth(){
    // myForm.user.dateofbirth
    var res = '';
    if (isSKB()) {
        if(myForm.user.dateofbirth){
            res = myForm.user.dateofbirth;
        }
    }
    return res;
}


function getSKBPrefix(){
    //myForm.user.prefix
    var res = '';
    if (isSKB()) {
        if(myForm.user.prefix){
            res = myForm.user.prefix;
        }
    }
    return res;
}


function getSKBDate(dat){
    var result = '';
    var year = '';
    var month = '';
    var day = '';
    // if (dat){
        year = dat.substring(0,4);
        month = dat.substring(4,6);
        day = dat.substring(6,8);
        result = year + '-' + month + '-' + day;
    // }else{
    //     result = "";
    // }
    return result;

}

//-----Get SKB Data ------



//-----Get SKB Data according to usermode------


function isBerlin(){
    var res = false;
    if (isSKB()){
        res = getSKBCity();
        if (res.toLowerCase() == "berlin"){
            res = true;
            return res;
        }
    }
    return res;
}

function ifReadSKB(){
    var getSKB;
    getSKB = false;
    if (mustbeBerlin == true && isBerlin() == true){
        getSKB = true;
        return getSKB;
    }else if(mustbeBerlin == false && isBerlin() == true){
        getSKB = true;
        return getSKB;
    }else if(mustbeBerlin == false && isBerlin() == false ){
        getSKB = true; 
        return getSKB;
    }
    return getSKB;

}

function getSKBStreet(){
    //(myForm.id_antragsteller) ? myForm.id_antragsteller.PlaceOfResidence.Street_Name : (myForm.user) ? myForm.user.street : ""
    var res = '';
    if (isSKB()) {      
        if(myForm.user.street){
            res = myForm.user.street;
            return res;
        }else if (myForm.user.companystreet){
            res = myForm.user.companystreet;
            return res;
        }else if (myForm.user.userstreet){
            res = myForm.user.userstreet;
            return res;
        }
    }
    return res;
}

function getSKBStreetNr(){
    //(myForm.id_antragsteller) ? myForm.id_antragsteller.PlaceOfResidence.Street_Number : (myForm.user) ? myForm.user.streetnumber : ""    
    var res = '';
    if (isSKB()) { 
        if(myForm.user.streetnumber){
            res = myForm.user.streetnumber;
            return res;
        }else if (myForm.user.companystreetnumber){
            res = myForm.user.companystreetnumber;
            return res;
        }else if (myForm.user.userstreetnumber){
            res = myForm.user.userstreetnumber;
            return res;
        }
    }
    return res;
}

function getSKBStreetExt(){
    //(myForm.id_antragsteller) ? myForm.id_antragsteller.PlaceOfResidence.Street_Number : (myForm.user) ? myForm.user.streetnumber : ""    
    var res = '';
    if (isSKB()) { 
        if(myForm.user.streetextension){
            res = myForm.user.streetextension;
            return res;
        }
    }
    return res;
}


function getSKBPLZ(){
    //(myForm.id_antragsteller) ? myForm.id_antragsteller.PlaceOfResidence.ZipCode : (myForm.user) ? myForm.user.zipcode : ""
    var res = '';
    if (isSKB()) { 
        if(myForm.user.zipcode){
            res = myForm.user.zipcode;
            return res;
        }else if (myForm.user.companyzipcode){
            res = myForm.user.companyzipcode;
            return res;
        }else if (myForm.user.userzipcode){
            res = myForm.user.userzipcode;
            return res;
        }
    }
    return res;
}


function getSKBCity(){
    //(myForm.id_antragsteller) ? myForm.id_antragsteller.PlaceOfResidence.City : (myForm.user) ? myForm.user.city : ""
    var res = 'Berlin';
    if (isSKB()) { 
        if(myForm.user.city){
            res = myForm.user.city;
            return res;
        }else if (myForm.user.companycity){
            res = myForm.user.companycity;
            return res;
        }else if (myForm.user.usercity){
            res = myForm.user.usercity;
            return res;
        }
    }
    return res;
}

function   getSKBLand() {
    var res = 'Deutschland';
    if (isSKB()) { 
        if(myForm.user.city){
            res = myForm.user.country;
            //return res;
        }else if (myForm.user.companycountry){
            res = myForm.user.companycountry;
            //return res;
        }else if (myForm.user.usercountry){
            res = myForm.user.usercountry;
            ///return res;
        }
        res = getLandCode(res);
    }
    return res;
}


function getLandCode(land){
    var res = "000";
    var myland = land;
    if (myland === "Deutschland"){
        res = "000";
        return res;
    }else if(myland != "Deutschland"){
        res = assistants.xpath.select("C00000009", "string(//Row/Value[SimpleValue=$code]//../Value[@ColumnRef='DESTATIS_Schluessel_Staat']/SimpleValue)", { code : myland });
        return res;
    }
    
}


function checkSelectedLand(){
    var res = "";
    if ((myForm.landh == "|---bitte auswählen---") || (myForm.landh == "")){
        res = getSKBLand();
    }else{
        res = myForm.landh;
    }
    return res;
}

//-----Get SKB Data according to usermode------

//-----Get eID Data -------
function geteIDStreetName(){
    var res = '';
    if (assistants.scope.current === 'eid'){
        if (myForm.id_feld.PlaceOfResidence.Street_Name){
            res = myForm.id_feld.PlaceOfResidence.Street_Name;
        }
    }
    return res;
}

function geteIDStreetNr(){
    var res = '';
    if (assistants.scope.current === 'eid'){
        if (myForm.id_feld.PlaceOfResidence.Street_Number){
            res = myForm.id_feld.PlaceOfResidence.Street_Number;
        }
    }
    return res;
}

function geteIDStreetNrExt(){
    var res = '';
    if (assistants.scope.current === 'eid'){
        if (myForm.id_feld.PlaceOfResidence.Street_NumberSuffix){
            res = myForm.id_feld.PlaceOfResidence.Street_NumberSuffix;
        }
    }
    return res;
}

function geteIDPLZ(){
    var res = '';
    if (assistants.scope.current === 'eid'){
        if (myForm.id_feld.PlaceOfResidence.ZipCode){
            res = myForm.id_feld.PlaceOfResidence.ZipCode;
        }
    }
    return res;
}

function geteIDCity(){
    var res = '';
    if (assistants.scope.current === 'eid'){
        if (myForm.id_feld.PlaceOfResidence.City){
            res = myForm.id_feld.PlaceOfResidence.City;
        }
    }
    return res;
}

function geteIDCountry(){
    var res = '';
    if (assistants.scope.current === 'eid'){
        if (myForm.id_feld.PlaceOfResidence.Country){
            res = myForm.id_feld.PlaceOfResidence.Country;
        }
        if (res == "D") { res == "000"; }
    }
    return res;
}

function geteIDAcademicTitle(){
    var res = '';
    if (assistants.scope.current === 'eid'){
        if (myForm.id_feld.AcademicTitle){
            res = myForm.id_feld.AcademicTitle;
        }
    }
    return res;
}

function geteIDFamilyNames(){
    var res = '';
    if (assistants.scope.current === 'eid'){
        if (myForm.id_feld.FamilyNames){
            res = myForm.id_feld.FamilyNames;
        }
    }
    return res;
}

function geteIDGivenNames(){
    var res = '';
    if (assistants.scope.current === 'eid'){
        if (myForm.id_feld.GivenNames){
            res = myForm.id_feld.GivenNames;
        }
    }
    return res;
}


function geteIDBirthName(){
    var res = '';
    if (assistants.scope.current === 'eid'){
        if (myForm.id_feld.BirthName){
            res = myForm.id_feld.BirthName;
        }
    }
    return res;
}

function geteIDDateOfBirth(){
    var res = '';
    if (assistants.scope.current === 'eid'){
        if (myForm.id_feld.DateOfBirth){
            res = myForm.id_feld.DateOfBirth;
        }
    }
    return res;
}

function geteIDPlaceOfBirth(){
    var res = '';
    if (assistants.scope.current === 'eid'){
        if (myForm.id_feld.PlaceOfBirth){
            res = myForm.id_feld.PlaceOfBirth;
        }
    }
    return res;
}



function checkReadOnly(){
	if (assistants.scope.current === 'eid'){
        return true; //read from eID
	}else{
		if (myForm.user){
			if (myForm.user.modeid == '3'){
				return true; //Firmenkunde
			}else{
				if (myForm.user.levelid == '3') {
					return true; //hÃ¶here Sicherheitstufe BÃ¼rger
				}else{
					return false;
                }
			}
		}else{
			return false;
		}
	}
}

//-----Get eID Data -------

    function validateAddress(){
        var res = false
        if (myForm.F00000035h.toLowerCase() == "berlin" && (myForm.landh == "000")) {
            if (myForm.bzrnr != '' && myForm.bzrnr === myForm.beznrh) {
                res = true;
            }
        }else{
            res = true  
        }
        
        return res;
    }

function mytolowercase(text) {
    res = "";
    res = text.toLowerCase()
    return res;
}

/*
	the values for res are the names of the pages (<body id="">)
	where only Berlin addresses are allowed and 
	should be validated.
*/

function onlyBerlin(){
    var res = "angaben-zum-antragstellenden-als-gesetzliche-vertretung-des-kindes";
    return res;
}

function getaddressdata(){
    var html = "";
    if (assistants.scope.current === 'eid' && myForm.id_feld){
        var stg = "";
        var stgb = "";
        stg = myForm.id_feld.PlaceOfResidence.Street_Name;
        html = "<tr><strong><td>Straße: </td><td>" + stg + "</td></strong></tr>";
        stg = "";
        stg = myForm.id_feld.PlaceOfResidence.Street_Number;
        stg += myForm.id_feld.PlaceOfResidence.Street_NumberSuffix;
        html += "<tr><strong><td>Hausnummer: </td><td>" + stg + "</td></strong></tr>"
        stg = "";
        stg = myForm.id_feld.PlaceOfResidence.ZipCode;
        html += "<tr><strong><td>Postleitzahl: </td><td>" + stg + "</td></strong></tr>"
        stg = "";
        stg = myForm.id_feld.PlaceOfResidence.City;
        html += "<tr><strong><td>Ort: </td><td>" + stg + "</td></strong></tr>"
        stg = "";
        stg = "Deutschland"; // eID nur Adressen in Deutschland???
        html += "<tr><strong><td>Land: </td><td>" + stg + "</td></strong></tr>"        
    }
    return html;
}

function ro(){
    if (assistants.scope.current === 'eid' && myForm.id_feld){
        return true;
    } else {
        return false;
    }
}

//---------------copy to modell.js------------------//

//----copy in modell.js ----//

function selectDistrict(){
    myForm.bzrname = "";
    myForm.otnr = "";
    myForm.bzrnr = "";
    myForm.bzrnr = myForm.beznum;
    myForm.otnr = myForm.otnum;
    if (myForm.bzrnr != ""){
        myForm.bzrname = myForm['beznum/@label'];
    }else{
        myForm.bzrname = "";
    }
    if (myForm.otnr != ""){
        myForm.otname = myForm['otnum/@label'];
    }else{
        myForm.otname = "";
    }
}

function calculateStaat() {
	var landCode = myForm.land;
	var rawState = assistants.xpath.select("C00000009", "/*/SimpleCodeList/Row//Value[@ColumnRef=\"schluessel-staat\"]/SimpleValue[text() = \""+landCode+"\"]/../../Value[@ColumnRef=\"staatenname-kurz\"]/SimpleValue/text()").toString();
	rawState = rawState.substring(0, rawState.lastIndexOf("\""));
	return rawState.substring(rawState.lastIndexOf("\"")+1);
	
}

function calcAge(){
    var age = '';
    var value = myForm.F00000066;
    if (value != undefined){
        var now = new Date();
        var ageDifMs = now - value.getTime();
        var ageDate = new Date(ageDifMs);
        age = Math.abs(ageDate.getUTCFullYear() - 1970);
        return age;
    }
};

//----copy in modell.js ----//

// Custom JS //

var birthdayThisMonth = function(indate) {
	var today = new Date();
	return indate.getMonth() === today.getMonth() && indate.getDate() > today.getDate();
}

var currentMonthAndYear = function() {
	var today = new Date();
	var monthNames = ['Januar', 'Februar', 'März', 'April', 'Mai', 'Juni', 'Juli', 'August', 'September', 'Oktober', 'November', 'Dezember'];
	return monthNames[today.getMonth()] + " " + today.getFullYear();
}

var getAge = function(indate) {
	
	if (!(indate instanceof Date))
		return -1;
	
	var inday = indate.getDate();
	var inmonth = indate.getMonth() +1;
	var inyear = indate.getFullYear();
	
	if (inday === undefined || inday === null) {
		// get last day of the month
		inmonth++;
		inday = 0;
	}
	
	var birthDate = new Date(inyear, inmonth -1, inday);
	
	var today = new Date();
	var days = Math.floor((today.getTime() - birthDate.getTime())/1000/60/60/24);
	var age = 0;
	for (var year = birthDate.getFullYear(); year <= today.getFullYear(); year++) {
		var daysInYear = isLeapYear(year) ? 366 : 365;
		if (days >= daysInYear) {
			days -= daysInYear;
			age++;
		}
	}
	return age;
}

var isLeapYear = function(year) {
	return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
}

function liegt_nach(d1, d2) {

    if (d1 == undefined && d2 == undefined)
        return true;

    if (d1 instanceof String)
        return false;
    if (d2 instanceof String)
        return false;

    return d1.getTime() >= d2.getTime();
}


//-----------------xZufi------------------------





//TODO: each field muss have own namespace. Not only applicant address is RBS relevant.

function readForm (arr){
    var val = '';
    var ns = arr[0];
    var fd = arr[1].toLowerCase();
    if (fd.length < 1) {return val};
    if (ns.length < 1){
        if (myForm[fd] != undefined){
            val = myForm[fd];
        }
    }else{
        if (myForm[ns][fd] != undefined){
            val = myForm[ns][fd];
        }
    }
    return val;
}

function getIdentityNamespace(){
    var val = 'DE-BE';
    return val;
}

function getBezirkNr(namespace){
    var val = '';
    if (namespace == 'applicant') {
        //if (appbezirkNr.length < 1) {return val;}
        val = readForm (appbezirkNr);
    } else {
        val = readForm (appbezirkNr);
        if (val.length > 0){
            val = '110' + val + '0' + val;
        }
    }
    return val;
}

function getBezirk(namespace){
    var val = '';
    if (namespace == 'applicant') {
        //if (appbezirk.length < 1) {return val;}
        val = readForm (appbezirk);
    } else {
        val = '';
    }
    return val;
}

function getFaxNo (namespace){
    var val = '';
    if (namespace == 'applicant') {
        if (appfaxNo.length < 1) {return val;}
        if (myForm[NSAPP][appfaxNo] != undefined){
            val = myForm[NSAPP][appfaxNo];
        }
    } else {
        if (fetchAutFaxNo() != undefined){
            val = fetchAutFaxNo();
        }
    }
    return val;
}

function getEMail (namespace){
    var val = '';
    if (namespace == 'applicant') {
        val = readForm (appeMail);
    } else {
        if (fetchAutEMail() != undefined){
            val = fetchAutEMail();
        }
    }
    return val;
}

function getTelNo (namespace){
    var val = '';
    if (namespace == 'applicant') {
        val = readForm (apptelNo);
    } else {
        if (fetchAutTelNo() != undefined){
            val = fetchAutTelNo();
        }
    }
    return val;
}

function getMobileNo (namespace){
    var val = '';
    if (namespace == 'applicant') {
        val = readForm (appmobileNo);
    } else {
        if (fetchAutMobileNo() != undefined){
            val = fetchAutMobileNo();
        }
    }
    return val;
}

function getPostOfficeBox (namespace){
    var val = '';
    if (namespace == 'applicant') {
        val = readForm (apppostOfficeBox);
    } else {
        if (fetchAutPostOfficeBox() != undefined){
            val = fetchAutPostOfficeBox();
        }
    }
    return val;
}

function getCountry (namespace){
    var val = '';
    if (namespace == 'applicant') {
        val = readForm (appcountry);
    } else {
        val = 'DE';
    }
    return val;
}

function getPostalCode (namespace){
    var val = '';
    if (namespace == 'applicant') {
        val = readForm (apppostalCode);
    } else {
        if (fetchAutPostalCode() != undefined){
            val = fetchAutPostalCode();
        }
    }
    return val;
}

function getCity (namespace){
    var val = '';
    if (namespace == 'applicant') {
        val = readForm (appcity);
    } else {
        if (fetchAutCity() != undefined){
            val = fetchAutCity();
        }
    }
    return val;
}

function getStreet (namespace){
    var val = '';
    if (namespace == 'applicant') {
        val = readForm (appstreet);
    } else {
        if (fetchAutStreet() != undefined){
            val = fetchAutStreet();
        }
    }
    return val;
}

function getHouseNo (namespace){
    var val = '';
    if (namespace == 'applicant') {
        val = readForm (apphouseNo);
    } else {
        if (fetchAutHouseNo() != undefined){
            val = fetchAutHouseNo();
        }
    }
    return val;
}

function getOrgName1 (namespace){
    var val = '';
    if (namespace == 'applicant') {
        val = readForm (apporgName1);
    } else {
        if (fetchAutorgName1() != undefined){
            val = fetchAutorgName1();
        }
    }
    return val;
}

function getOrgName2 (namespace){
    var val = '';
    if (namespace == 'applicant') {
        val = readForm (apporgName2);
    } else {
        val = '';
    }
    return val;
}

function getFirstName (namespace){
    var val = '';
    if (namespace == 'applicant') {
        val = readForm (appfirstName);
    } else {
        val = '';
    }
    return val;
}

function getLastName (namespace){
    var val = '';
    if (namespace == 'applicant') {
        val = readForm (applastName);
    } else {
        val = '';
    }
    return val;
}

function getPartnerType (namespace){
    var val = '0';
    if (namespace == "applicant") {
        val = readForm (apppartnertype);
    } else {
        val = '2';
    }
    return val;
}

function getNationality (namespace){
    var val = 'DE';
    if (namespace == 'applicant') {
        val = readForm (appnationality);
    } else {
        val = 'DE';
    }
    return val;
}

function getFormOfAddress (namespace){
    var val = '';
    if (namespace == 'applicant') {
        val = readForm (appformOfAddress);
    } else {
        val = '';
    }
    return val;
}

function getAcademicTitle (namespace){
    var val = 'DE';
    if (namespace == 'applicant') {
        val = readForm (appacademicTitle);
    } else {
        val = 'DE';
    }
    return val;
}

//------xZuFi-----

function fetchAutEMail(){
    var mycode = '';
    var kanal = 'email';
    mycode = getBezirkNr('authority');
    var val = assistants.xpath.select('xzufi', "string(//gemeindeschluessel[code=$code]/ancestor::ergebnisOrganisationseinheit/kommunikation/kanal[code=$channel]/following-sibling::kennung)", { code : mycode, channel : kanal } ); 
    return val;
}

function fetchAutTelNo(){
    var mycode = '';
    var kanal = 'telefon';
    mycode = getBezirkNr('authority');
    var val = assistants.xpath.select('xzufi', "string(//gemeindeschluessel[code=$code]/ancestor::ergebnisOrganisationseinheit/kommunikation/kanal[code=$channel]/following-sibling::kennung)", { code : mycode, channel : kanal } ); 
    return val;
}

function fetchAutMobileNo(){
    var mycode = '';
    var kanal = 'handy';
    mycode = getBezirkNr('authority');
    var val = assistants.xpath.select('xzufi', "string(//gemeindeschluessel[code=$code]/ancestor::ergebnisOrganisationseinheit/kommunikation/kanal[code=$channel]/following-sibling::kennung)", { code : mycode, channel : kanal } ); 
    return val;
}

function fetchAutFaxNo(){
    var mycode = '';
    var kanal = 'fax';
    mycode = getBezirkNr('authority');
    var val = assistants.xpath.select('xzufi', "string(//gemeindeschluessel[code=$code]/ancestor::ergebnisOrganisationseinheit/kommunikation/kanal[code=$channel]/following-sibling::kennung)", { code : mycode, channel : kanal } ); 
    return val;
}

function fetchAutPostOfficeBox(){
    var mycode = '';
    mycode = getBezirkNr('authority');
    var val = assistants.xpath.select('xzufi', 'string(//gemeindeschluessel[code=$code]/ancestor::ergebnisOrganisationseinheit/anschrift/postfach)', { code : mycode } ); 
    return val;
}

function fetchAutCity(){
    var mycode = '';
    mycode = getBezirkNr('authority');
    var val = assistants.xpath.select('xzufi', 'string(//gemeindeschluessel[code=$code]/ancestor::ergebnisOrganisationseinheit/anschrift/ort)', { code : mycode } ); 
    return val;
}

function fetchAutPostalCode(){
    var mycode = '';
    mycode = getBezirkNr('authority');
    var val = assistants.xpath.select('xzufi', 'string(//gemeindeschluessel[code=$code]/ancestor::ergebnisOrganisationseinheit/anschrift/postleitzahl)', { code : mycode } ); 
    return val;
}

function fetchAutHouseNo(){
    var mycode = '';
    mycode = getBezirkNr('authority');
    var val = assistants.xpath.select('xzufi', 'string(//gemeindeschluessel[code=$code]/ancestor::ergebnisOrganisationseinheit/anschrift/hausnummer)', { code : mycode } ); 
    return val;
}

function fetchAutStreet(){
    var mycode = '';
    mycode = getBezirkNr('authority');
    var val = assistants.xpath.select('xzufi', 'string(//gemeindeschluessel[code=$code]/ancestor::ergebnisOrganisationseinheit/anschrift/strasse)', { code : mycode } ); 
    return val;
}

function fetchAutorgName1 (){
    var mycode = '';
    mycode = getBezirkNr('authority');
    var val = assistants.xpath.select('xzufi', 'string(//gemeindeschluessel[code=$code]/ancestor::ergebnisOrganisationseinheit/name/name)', { code : mycode } ); 
    return val;
}

function fetchAutorgName2 (){
    var mycode = '';
    mycode = getBezirkNr('authority');
    var val = assistants.xpath.select('xzufi', 'string(//gemeindeschluessel[code=$code]/ancestor::ergebnisOrganisationseinheit/name/name)', { code : mycode } ); 
    return val;
}


//--------------------------------------------//