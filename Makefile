contents = convenience.js  extension.js  LICENSE  metadata.json  prefs.js
package = alternate-tab-above.zip
target_dir = $(HOME)/.local/share/gnome-shell/extensions/alternate-tab-above@gnome-shell-extensions.ae35.de

release: $(contents)
	-rm -f $(package)
	zip $(package) $(contents)

install: $(contents)
	install -D --target-directory $(target_dir) $(contents)

uninstall:
	-rm -rf $(target_dir)


