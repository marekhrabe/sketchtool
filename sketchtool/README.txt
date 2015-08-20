Sketch Tool

# USAGE

For full help, use the tool's help command:

> sketchtool help


To list layers, slices, artboards or pages:

> sketchtool list slices <doc.sketch>
> sketchtool list artboards <doc.sketch>
> sketchtool list layers <doc.sketch>
> sketchtool list pages <doc.sketch>

This returns JSON information that can be parsed to obtain page and artboard ids.


To export slices or artboards:

> sketchtool export slices <doc.sketch> --output=<folder> --items=<names-or-ids> --scales="1.0, 2.0" --formats="png,pdf,eps,jpg"

> sketchtool export artboards <doc.sketch> --output=<folder> --items=<names-or-ids> --scales="1.0, 2.0" --formats="png,pdf,eps,jpg"

To export arbitrary rectangles from pages at 1.0 and 2.0 scales, as jpgs:

> sketchtool export pages <doc.sketch> --output=<folder> --items=<page-names-or-ids> --bounds="0,0,256,256" --scales="1.0, 2.0" --formats="jpg"


## Specifying Scales and Formats

By default, we export a layer using the options specified for it in the document.

However, specifying --scales, --formats, or both will override all the size/type export settings.

If --formats is specified but not --scales, the default scale "1.0" is used.

If --scales is specified but not --formats, the default format "png" is used.

If neither is specified, we use the size settings in the document itself.

If both are used, we export all combinations. For example --formats="png,eps" --scales="1.0,2.0" will produce four combinations.


## Defaults

All --options can be ommitted. The defaults are:

--formats=
--scales=
--items=(all slices, artboards, pages)
--bounds=(all content on the page)
--output=(current working directory)
--trimmed=NO
--reveal=NO

# DOCUMENT MIGRATION

Starting with Sketch 3.1, support for loading old documents has been moved into a helper process. In Sketch itself this is an xpc process,
but for the command line sketchtool we've created a standalone tool: sketchmigrate.

You can use this tool to convert old documents manually. It current supports one command:

    sketchmigrate convert <old-file-path> <new-file-path>

Note that you don't have to do a migration when using sketchtool - it is smart enough to work out that the document needs migrating,
and call sketchmigrate itself, using a temporary file as the destination.

There's nothing to stop you using the tool yourself if you wish.


# INSTALLATION

The install.sh script will install the tools in /usr/local/bin, and some required resource files in /usr/local/share/sketchtool.

You can put the tools anywhere else that you want, but you currently need to follow the same folder structure:

my-folder/
  bin/
    sketchtool
    sketchmigrate
  share/
    sketchtool/
      resources.bundle

