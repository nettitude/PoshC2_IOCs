# PoshC2 Communications IOCs

### Default beacon URLs

The default beacon URIs utilised by PoshC2 are below:

```
http://127.0.0.1/adsense/troubleshooter/1631343/
http://127.0.0.1/adServingData/PROD/TMClient/6/8736/
http://127.0.0.1/advanced_search?hl=en-GB&fg=
http://127.0.0.1/async/newtab?ei=
http://127.0.0.1/babel-polyfill/6.3.14/polyfill.min.js=
http://127.0.0.1/bh/sync/aol?rurl=/ups/55972/sync?origin=
http://127.0.0.1/bootstrap/3.1.1/bootstrap.min.js?p=
http://127.0.0.1/branch-locator/search.asp?WT.ac&api=
http://127.0.0.1/business/home.asp&ved=
http://127.0.0.1/business/retail-business/insurance.asp?WT.mc_id=
http://127.0.0.1/cdba?ptv=48&profileId=125&av=1&cb=
http://127.0.0.1/cisben/marketq?bartype=AREA&showheader=FALSE&showvaluemarkers=
http://127.0.0.1/classroom/sharewidget/widget_stable.html?usegapi=
http://127.0.0.1/client_204?&atyp=i&biw=1920&bih=921&ei=
http://127.0.0.1/load/pages/index.php?t=
http://127.0.0.1/putil/2018/0/11/po.html?ved=
http://127.0.0.1/qqzddddd/2018/load.php?lang=en&modules=
http://127.0.0.1/status/995598521343541248/query=
http://127.0.0.1/TOS?loc=GB&hl=en&privacy=
http://127.0.0.1/trader-update/history&pd=
http://127.0.0.1/types/translation/v1/articles/
http://127.0.0.1/uasclient/0.1.34/modules/
http://127.0.0.1/usersync/tradedesk/
http://127.0.0.1/utag/lbg/main/prod/utag.15.js?utv=
http://127.0.0.1/vfe01s/1/vsopts.js?
http://127.0.0.1/vssf/wppo/site/bgroup/visitor/
http://127.0.0.1/wpaas/load.php?debug=false&lang=en&modules=
http://127.0.0.1/web/20110920084728/
http://127.0.0.1/webhp?hl=en&sa=X&ved=
http://127.0.0.1/work/embedded/search?oid=
http://127.0.0.1/GoPro5/black/2018/
http://127.0.0.1/Philips/v902/
```

These are available [here](https://github.com/nettitude/PoshC2/blob/master/resources/urls.txt).

### HTTP Responses

The 404 response is returned to GET requests when C2 data is not being returned (such as a new task).

```
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>404 Not Found</title>
</head><body>
<h1>Not Found</h1>
<p>The requested URL was not found on this server.</p>
<hr>
<address>Apache (Debian) Server</address>
</body></html>
```

The default response is available [here](https://github.com/nettitude/PoshC2/master/resources/responses/404_response.html).

A random 200 response is chosen and return in the response to POST requests when C2 data is not being returned.

These default responses are [here](https://github.com/nettitude/PoshC2/tree/master/resources/responses).

### Certificate

The default PoshC2 SSL Certificate values are below:

```
Cert_C = "US"
Cert_ST = "Minnesota"
Cert_L = "Minnetonka"
Cert_O = "Pajfds"
Cert_OU = "Jethpro"
Cert_CN = "P18055077"
Cert_SerialNumber = 1000
Cert_NotBefore = 0
Cert_NotAfter = (10 * 365 * 24 * 60 * 60)
```

These are available [here](https://github.com/nettitude/PoshC2/blob/master/poshc2/server/Config.py#L89).


### Named Pipe Comms (PBind Implants)

The default values for the named pipe and secret used for PBind communications are in the [configuration file](https://github.com/nettitude/PoshC2/blob/master/resources/config-template.yml#L40)

```
# PBind Options
PBindPipeName: "jaccdpqnvbrrxlaf"
PBindSecret: "mtkn4"
```


