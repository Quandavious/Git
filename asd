function getFrameSrc() {
	alert(html5Iframe.src)
}

function enableMenu() {
	html5Iframe.contentWindow.localStorage.cheats = '{"showMenu":true}', html5Iframe.contentWindow.document.getElementById("settings-gear").click(), html5Iframe.contentWindow.document.getElementById("cancelBtn").click()
}

function disableMenu() {
	html5Iframe.contentWindow.localStorage.cheats = '{"showMenu":false}', html5Iframe.contentWindow.document.getElementById("settings-gear").click(), html5Iframe.contentWindow.document.getElementById("cancelBtn").click()
}

function fix() {
	html5Iframe.contentWindow.localStorage.clear(), html5Iframe.contentWindow.document.getElementById("settings-gear").click(), html5Iframe.contentWindow.document.getElementById("cancelBtn").click()
}

function dragElement(e) {
	var t = 0,
		n = 0,
		o = 0,
		i = 0;
	
	function c(e) {
		(e = e || window.event).preventDefault(), o = e.clientX, i = e.clientY, document.onmouseup = r, document.onmousemove = l
	}
	
	function l(c) {
		(c = c || window.event).preventDefault(), t = o - c.clientX, n = i - c.clientY, o = c.clientX, i = c.clientY, e.style.top = e.offsetTop - n + "px", e.style.left = e.offsetLeft - t + "px"
	}
	
	function r() {
		document.onmouseup = null, document.onmousemove = null
	}
	document.getElementById(e.id + "header") ? document.getElementById(e.id + "header").onmousedown = c : e.onmousedown = c
}
var UI = document.createElement("div");
UI.innerHTML = `
	<div style="width:300px; left: 1px; top: 1px; background-color: #282828; color: white; outline: white solid 1px; position:absolute; z-index: 99999;">
		<h1 style="font-size: 32px;">i-Ready Basic Hack</h1>
		<br>
		<h2 style="font-size: 25px; font-style: normal !important; color: white !important;">Teacher Menu</h2>
		<button onclick="enableMenu()">Enable</button>
		<br>
		<button onclick="disableMenu()">Disable</button>
    <br>
		<br>
		<h2 style="font-size: 25px; font-style: normal !important; color: white !important;">Get i-frame src</h2>
		<button onclick="getFrameSrc()">Get i-frame src</button>
		<br>
		<br>
    <h2 style="font-size: 25px; font-style: normal !important; color: white !important;">Fix Lesson</h2>
		<button onclick="fix()">Fix</button>
		<br>
		<br>
		
	</div>`, dragElement(UI.firstElementChild), document.body.appendChild(UI);
