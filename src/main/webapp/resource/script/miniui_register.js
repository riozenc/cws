var WinAlerts = window.alert;
window.alert = function (e) {
	if (e != null && e.indexOf("试用到期")>-1)
	{
	//和谐了
	}
	else
	{
	WinAlerts (e);
	}
};