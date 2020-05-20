function XmlDom() {
    if (window.ActiveXObject) {
        var arrSignatures = ["MSXML2.DOMDocument.7.0", "MSXML2.DOMDocument.6.0","MSXML2.DOMDocument.5.0", "MSXML2.DOMDocument.4.0","MSXML2.DOMDocument.3.0", "MSXML2.DOMDocument","Microsoft.XmlDom"];
        for (var i = 0; i < arrSignatures.length; i++) {
            try {var oXmlDom = new ActiveXObject(arrSignatures[i]);oXmlDom.async = false;
                try {oXmlDom.setProperty("AllowXsltScript", true);oXmlDom.setProperty("AllowDocumentFunction", true);oXmlDom.resolveExternals = true;oXmlDom.validateOnParse = false;} catch (err) { }
                return oXmlDom;} catch (oError) {}
        }throw new Error("MSXML is not installed on your system.");}
    else if (document.implementation && document.implementation.createDocument) {
    try {var oXmlDom = document.implementation.createDocument("", "", null);oXmlDom.parseError = {
            valueOf: function() { return this.errorCode; },
            toString: function() { return this.errorCode.toString() }
        };
        oXmlDom.__initError__();
        oXmlDom.addEventListener("load", function() {
            this.__checkForErrors__();
            this.__changeReadyState__(4);
        }, false);
        oXmlDom.async = false;
        return oXmlDom;
    }
    catch (e) {alert("aldaa garsan");}
    } else {
        throw new Error("Your browser doesn't support an XML DOM object.");
    }
}
/////////////////////////////////csssssssssssssssssssssssssssssss////////////////
function LoadCssJs(mainxml) {
    var maincss = mainxml.getElementsByTagName("cssPath");
    for (i = 0; i < maincss.length; i++) { loadjscssfile(maincss[i].getAttribute("path"), 'css'); }
    var mainjs = mainxml.getElementsByTagName("jsPath");
    for (i = 0; i < mainjs.length; i++) { loadjscssfile(mainjs[i].getAttribute("path"), 'js'); }
}
function loadjscssfile(filename, filetype) {
    if (filetype == "js") {
        var script = document.createElement('script');
        script.src = filename;
        script.type = 'text/javascript';
        document.getElementsByTagName('head')[0].appendChild(script);
    }
    else if (filetype == "css") {
        var link = document.createElement('link');
        link.href = filename;
        link.rel = 'stylesheet';
        link.type = 'text/css';
        document.getElementsByTagName('head')[0].appendChild(link);
    }
    if (typeof fileref != "undefined")
        document.getElementsByTagName("head")[0].appendChild(fileref);
}
//////////////////////////*********xml-eer guigeed child-g n olood transform hiine***********////////////////////////////////////////
function checkChild(getxml) {
    var i = 0;
    var maincss = getxml.getElementsByTagName("module");
    for (i = 0; i < maincss.length; i++) {
        if (maincss[i].getAttribute("hasChild") == "no") {
            elements(maincss[i].getAttribute("id"), maincss[i].getElementsByTagName("xmlDataPath")[0].getAttribute("path"), maincss[i].getElementsByTagName("xsltDataPath")[0].getAttribute("path"))
        }
        if (maincss[i].getAttribute("hasChild") == "yes") {
            xml1 = loadXMLDoc(maincss[i].getElementsByTagName("xmlDataPath")[0].getAttribute("path"));
            checkChild(xml1);
        }
    }
}
///////////////////////////xml///////////////////////////////////////////
function loadXMLDoc(dname) {
    if (window.XMLHttpRequest) {
        xhttp = new window.XMLHttpRequest();
    }
    else {
        xhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xhttp.open("GET", dname, false);
    xhttp.send("");
    return xhttp.responseXML;
}
//function loadXMLDoc(file) { try { xmlDoc = new XmlDom(); xmlDoc.async = false; xmlDoc.load(file); } catch (e) { try { var xmlhttp = new window.XMLHttpRequest(); xmlhttp.open("GET", file, false); xmlhttp.send(null); xmlDoc = xmlhttp.responseXML.documentElement; } catch (e) { error = e.message; } } return (xmlDoc); }
function elements(a, b, c) { var gxml = new loadXMLDoc(b); var gxsl = new loadXMLDoc(c); document.getElementById(a).innerHTML = gxml.transformNode(gxsl); }
function elementsobj(a, b, c) { var gxml = b; var gxsl = c; document.getElementById(a).innerHTML = gxml.transformNode(gxsl); }
if (document.implementation && document.implementation.createDocument) {Document.prototype.readyState = 0;Document.prototype.onreadystatechange = null;Document.prototype.__changeReadyState__ = function(iReadyState){this.readyState = iReadyState;if (typeof this.onreadystatechange == "function") {this.onreadystatechange();}};
    Document.prototype.__initError__ = function() {this.parseError.errorCode = 0;this.parseError.filepos = -1;this.parseError.line = -1;this.parseError.linepos = -1;this.parseError.reason = null;this.parseError.srcText = null;this.parseError.url = null;};
    Document.prototype.__checkForErrors__ = function() {if (this.documentElement.tagName == "parsererror") {var reError = />([\s\S]*?)Location:([\s\S]*?)Line Number (\d+), Column (\d+):<sourcetext>([\s\S]*?)(?:\-*\^)/;reError.test(this.xml);this.parseError.errorCode = -999999;this.parseError.reason = RegExp.$1;this.parseError.url = RegExp.$2;this.parseError.line = parseInt(RegExp.$3);this.parseError.linepos = parseInt(RegExp.$4);this.parseError.srcText = RegExp.$5;}};
    Document.prototype.loadXML = function(sXml) {

        this.__initError__();
        this.__changeReadyState__(1);

        var oParser = new DOMParser();
        var oXmlDom = oParser.parseFromString(sXml, "text/xml");

        while (this.firstChild) {
            this.removeChild(this.firstChild);
        }

        for (var i = 0; i < oXmlDom.childNodes.length; i++) {
            var oNewNode = this.importNode(oXmlDom.childNodes[i], true);
            this.appendChild(oNewNode);
        }

        this.__checkForErrors__();
        this.__changeReadyState__(4);
    };

    Node.prototype.__defineGetter__("xml", function() {
        var oSerializer = new XMLSerializer();
        return oSerializer.serializeToString(this, "text/xml");
    });
    Node.prototype.transformNode = function(oXslDom) {
        var oProcessor = new XSLTProcessor();
        oProcessor.importStylesheet(oXslDom);
        var oResultDom = oProcessor.transformToDocument(this);
        var sResult = oResultDom.xml;
        if (sResult.indexOf("<transformiix:result") > -1) {
            sResult = sResult.substring(sResult.indexOf(">") + 1, sResult.lastIndexOf("<"));
        }
        return sResult;
    };
}
function loadServerData(usp_number, optype, data) {
    var oXmlHttp = new XMLHttpRequest();
    oXmlHttp.open("POST", "process.ashx", false);
    oXmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    oXmlHttp.send("spnumber=" + usp_number + "&optype=" + optype + "&data=" + data);
    //alert(oXmlHttp.responseText);
    if (oXmlHttp.status == 200) {
        try {
            if (oXmlHttp.responseXML.getElementsByTagName("row")!=null) {
            if (oXmlHttp.responseXML.getElementsByTagName("row")[0].getAttribute("resultLoginCode") != null) {
                if (oXmlHttp.responseXML.getElementsByTagName("row")[0].getAttribute("resultLoginCode") == 0) {
                    alert(oXmlHttp.responseXML.getElementsByTagName("row")[0].getAttribute("resultMessage"));
                    document.location.replace("http://10.0.0.78:88/modules/login/login.htm?redir=http://10.0.0.22/SisiTestSystem_version1/redirectingTestSystem.ashx");
                }
            }
            else {//alert("login code null");
            }
            }
         }
         catch (e) {
        //     alert('Алдаа гарах магадлал их өндөр байна');
        }
        return oXmlHttp.responseXML;
    }
    else {alert("Сервертэй холбогдож чадсангүй");}
}
