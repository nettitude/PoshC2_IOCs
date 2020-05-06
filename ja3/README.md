# JA3 Signatures for PoshC2

Below are some JA3 signatures for PoshC2.

JA3 signatures are hashes of a fingerprint of the TCP session creation and can be used to identify PoshC2 down to the implant type, with or without SSL Inspection.

Salesforce have an excellent blog post on JA3 here: https://engineering.salesforce.com/tls-fingerprinting-with-ja3-and-ja3s-247362855967
Their repository is here: https://github.com/salesforce/ja3

## Beaconing

### PowerShell Implant

```
c12f54a3f91dc7bafd92cb59fe009a35
```


### Sharp Implant

```
fc54e0d16d9764783542f0146a98b300
```
