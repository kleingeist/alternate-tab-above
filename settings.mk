gschemas_in = $(gschemaname).gschema.xml.in

@INTLTOOL_XML_NOMERGE_RULE@

gsettings_SCHEMAS = $(gschemas_in:.xml.in=.xml)

@GSETTINGS_RULES@

CLEANFILES += $(gschemas_in:.xml.in=.valid) $(gsettings_SCHEMAS)
EXTRA_DIST += $(gschemas_in)
