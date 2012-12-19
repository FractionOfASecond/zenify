When photos are uploaded to [zenfolio](http://www.zenfolio.com/) the 
Title, Caption, Copyright and Keywords are read from the 
[IPTC data](http://help.zenfolio.com/customer/portal/articles/408313-exif-and-iptc-metadata).   Unfortunately [Darktable](http://www.darktable.org/) 
does not set these values on export.   Zenify is a bash script that will 
(using [imtag](http://github.com/vosbergw/imtag)) extract the metadata as 
set by [Darktable](http://www.darktable.org/) and copy it to the appropriate 
locations so that [Zenfolio](http://www.zenfolio.com) will find it when 
the photos are uploaded.

Zenify should update the metadata to match what is done by 
[eogMetaEdit](http://github.com/vosbergw/eogMetaEdit).  In a nutshell,
Darktable export sets:

<table>
	<tr>
		<td>Title</td><td>Exif.Image.ImageDescription, Xmp.dc.title</td>
	</tr>
	<tr>
		<td>Caption</td><td>Exif.Photo.UserComment, Xmp.dc.description, </td>
	</tr>
	<tr>
		<td>Keywords</td><td>Xmp.dc.subject, Xmp.lr.hierarchicalSubject</td>
	</tr>
</table>


Zenify will copy the values to the appropriate Iptc fields:

<table>
	<tr>
		<td>Title</td><td>Iptc.Application2</td>
	</tr>
	<tr>
		<td>Caption</td><td>Iptc.Application2.Caption</td>
	</tr>
	<tr>
		<td>Keywords</td><td>Iptc.Application2.Keywords</td>
	</tr>
</table>

Zenify will also set Exif.Image.Make/Model and delete the same meta variables
as [eogMetaEdit](http://github.com/voabergw/eogMetaEdit).

