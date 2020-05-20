function GetCookie(sCookie)
{
  // cookies are separated by semicolons
  var aCookie = document.cookie.split("; ");
  for (var i=0; i < aCookie.length; i++)
  {
    var aCrumb = aCookie[i].split("=");
    if (sCookie == aCrumb[0]) {
        if (decodeURIComponent==undefined)
            return unescape(aCrumb[1]);
        else
            return decodeURIComponent(aCrumb[1]);
    }
  }
  return null;
}

function SetCookie(sName, sValue)
{
  document.cookie = sName + "=" + escape(sValue) ;
 }

function copyelement(origname,destname)
{
temp=document.getElementById(origname).outerHTML;
temp=temp.replace("id="+origname,"id="+destname);
return temp.replace("name="+origname,"name="+destname);
}

function copyit(origname,destname)
{
temp=document.getElementById(origname).outerHTML;
temp=temp.replace("id="+origname,"id="+destname);
return temp.replace("name="+origname,"name="+destname);
}


function getArg(arg_name)
{
 var qstr=document.URL.split("?");
if(qstr[1]!=null){
	var aArg = qstr[1].split("&");
	 for (var i=0; i < aArg.length; i++)
	 {
	  var aCrumb = aArg[i].split("=");
	   if (arg_name == aCrumb[0])
	     return unescape(aCrumb[1]);
	 }
	 }
  return null;
}

function get_combotext(id,nr){
var elem=document.getElementById(id);
elem.value=nr;
return elem.options(elem.selectedIndex).innerText;
}


function dtbox(eid,sel,min, max){
		var i;
		var str="<select id='"+eid+"'>"
		for(i=max;i>=min;i--)
		{
		str+="<option value="+i;
			if(i==sel)
				str+=" selected ";
		str+=">"+i+"</option>";
		}
		return str+"</select>";
}

function datebox (sel, eid, tarid)
{
var str;
str=dtbox(eid+'y', dtprt(sel, 'y'),1900, 2020);
str+=dtbox(eid+'m', dtprt(sel, 'm'),1, 12);
str+=dtbox(eid+'d', dtprt(sel, 'd'),1, 31);
tarid.innerHTML=str;
}

function dtprt(str, prt){ //returns the datepart
var tmp;
switch(prt){
case "y" : tmp=str.substr(0,4);break;
case "m" : tmp=str.substring(5,str.lastIndexOf("-"));break;
case "d" : tmp=str.substring(str.lastIndexOf("-")+1);break;
}
return tmp;
}

function createcombo(){
var z, nodes, max, str, k=0;
for (i=0;i<document.all.tags("xml").length;i++)
{
		z=document.all.tags("xml").item(i);
		nodes=document.getElementById(z.id).XMLDocument.selectNodes("ROOT/*");
		max=nodes.length;

		str="<SELECT id="+z.tid+ " name="+z.tid+" size="+z.tsize;
		if(z.tonchange!=null)
			str+=" onchange="+z.tonchange;
		str+=" >";
		if(z.tall=="1")
			str+="<OPTION value=0>*";
		if(z.tid!="" && z.tt=="select")
		{
		for (k=0;k<max;k++)
			{str+="<OPTION value="+nodes(k).attributes(0).value+">";
			 GetCookie("lang")==1?str+=nodes(k).attributes(2).value:str+=nodes(k).attributes(1).value;
			}
			str+="</SELECT>";
			document.getElementById(z.id) .insertAdjacentHTML("beforeBegin",str);
		}
}}


function createcombo1(){
var z, nodes, max, str, k=0;
for (i=0;i<document.all.tags("xml").length;i++)
{
		z=document.all.tags("xml").item(i);
		nodes=document.getElementById(z.id).XMLDocument.selectNodes("ROOT/*");
		max=nodes.length;

		str="<SELECT id="+z.tid+ " name="+z.tid+" size="+z.tsize;
		if(z.tonchange!=null)
			str+=" onchange="+z.tonchange;
		str+=" >";
		if(z.tall=="1")
			str+="<OPTION value=0>*";
		if(z.tid!="" && z.tt=="select")
		{ for (k=0;k<max;k++)
			{str+="<OPTION value="+nodes(k).attributes(0).value+">"+nodes(k).attributes(1).value;
		}
			str+="</SELECT>";
			document.getElementById(z.id) .insertAdjacentHTML("beforeBegin",str);
		}
}}

function submitforms(frm){ //form submit

var temp=frm.action+"?";
	for(var k=1;k<frm.elements.length; k++){
		if(frm.elements(k).name!="")
			temp+=frm.elements(k).name+"="+escape(frm.elements(k).value)+"&";
	}

temp+="form="+frm.name;
if(window.showModalDialog(temp,null,' dialogHeight:250px;dialogWidth:250px; center: Yes; help: No; resizable: No; status: No;')==1)
	document.location.reload();
}

function getXML(url){
var objHTTP = new ActiveXObject("Microsoft.XMLHTTP");
objHTTP.Open('GET',url,false);
objHTTP.Send();
return objHTTP.responseXML;
}