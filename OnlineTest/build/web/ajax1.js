var xmlhttp;
function addchap(n)
{
	xmlhttp=getXmlHttpObject();
	if (xmlhttp==null)
	{
		alert("your browser doesnt Support XMLHTTP");
		return;
	}
	var url="addchap.jsp?n="+n;//alert(url);
	xmlhttp.onreadystatechange=statechanged4;
	xmlhttp.open("GET",url,true);
	xmlhttp.send(null);
}

function statechanged4()
{
	if (xmlhttp.readyState==4 || xmlhttp.readyState=="complete")
	{
		document.getElementById("addchap").innerHTML=xmlhttp.responseText;
	}
}
function getXmlHttpObject()
{
	if (window.XMLHttpRequest)
	{
		xmlhttp = new XMLHttpRequest();
	}
	else if (window.ActiveXObbject)
	{
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	else
		{
			xmlhttp=null;
		}
	return xmlhttp;
}

