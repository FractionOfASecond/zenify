When photos are uploaded to [zenfolio](http://www.zenfolio.com/) the 
Title, Caption, Copyright and Keywords are read from the 
[IPTC data](http://help.zenfolio.com/customer/portal/articles/408313-exif-and-iptc-metadata).   Unfortunately [Darktable](http://www.darktable.org/) 
does not set these values on
export.   Zenify is a bash script that will (using 
[imtag](http://github.com/vosbergw/imtag)) extract the metadata as set by 
[Darktable](http://www.darktable.org/) and copy it to the appropriate 
locations so that [Zenfolio](http://www.zenfolio.com) will find it when 
the photos are uploaded.

See the script itself for details of which metadata is modified.
