# See the README for installation instructions.

compileone :
	node js/all.js

compile :
	node js/lib/d3-compat.js
	node js/lib/d3.combobox.js
	node js/lib/d3.curtain.js
	node js/lib/d3.dimensions.js
	node js/lib/d3.geo.tile.js
	node js/lib/d3.jsonp.js
	node js/lib/d3.keybinding.js
	node js/lib/d3.one.js
	node js/lib/d3.trigger.js
	node js/lib/d3.typeahead.js
	node js/lib/d3.v3.js
	node js/lib/d3.value.js
	node js/lib/jxon.js
	node js/lib/locale.js
	node js/lib/lodash.js
	node js/lib/marked.js
	node js/lib/osmauth.js
	node js/lib/rbush.js
	node js/lib/togeojson.js
	node js/lib/window.js

	node js/id/actions.js
	node js/id/actions/add_entity.js
	node js/id/actions/add_member.js
	node js/id/actions/add_midpoint.js
	node js/id/actions/add_vertex.js
	node js/id/actions/change_member.js
	node js/id/actions/change_preset.js
	node js/id/actions/change_tags.js
	node js/id/actions/circularize.js
	node js/id/actions/connect.js
	node js/id/actions/delete_member.js
	node js/id/actions/delete_multiple.js
	node js/id/actions/delete_node.js
	node js/id/actions/delete_relation.js
	node js/id/actions/delete_way.js
	node js/id/actions/deprecate_tags.js
	node js/id/actions/discard_tags.js
	node js/id/actions/disconnect.js
	node js/id/actions/join.js
	node js/id/actions/merge.js
	node js/id/actions/merge_polygon.js
	node js/id/actions/move.js
	node js/id/actions/move_node.js
	node js/id/actions/noop.js
	node js/id/actions/orthogonalize.js
	node js/id/actions/reverse.js
	node js/id/actions/rotate_way.js
	node js/id/actions/split.js
	node js/id/actions/straighten.js
	node js/id/behavior.js
	node js/id/behavior/add_way.js
	node js/id/behavior/drag.js
	node js/id/behavior/draw.js
	node js/id/behavior/draw_way.js
	node js/id/behavior/edit.js
	node js/id/behavior/hash.js
	node js/id/behavior/hover.js
	node js/id/behavior/lasso.js
	node js/id/behavior/select.js
	node js/id/behavior/tail.js
	node js/id/core/connection.js
	node js/id/core/difference.js
	node js/id/core/entity.js
	node js/id/core/graph.js
	node js/id/core/history.js
	node js/id/core/node.js
	node js/id/core/relation.js
	node js/id/core/tree.js
	node js/id/core/way.js
	node js/id/end.js
	node js/id/geo.js
	node js/id/geo/extent.js
	node js/id/geo/multipolygon.js
	node js/id/geo/turn.js
	node js/id/id.js
	node js/id/modes.js
	node js/id/modes/add_area.js
	node js/id/modes/add_line.js
	node js/id/modes/add_point.js
	node js/id/modes/browse.js
	node js/id/modes/drag_node.js
	node js/id/modes/draw_area.js
	node js/id/modes/draw_line.js
	node js/id/modes/move.js
	node js/id/modes/rotate_way.js
	node js/id/modes/save.js
	node js/id/modes/select.js
	node js/id/operations.js
	node js/id/operations/circularize.js
	node js/id/operations/continue.js
	node js/id/operations/delete.js
	node js/id/operations/disconnect.js
	node js/id/operations/merge.js
	node js/id/operations/move.js
	node js/id/operations/orthogonalize.js
	node js/id/operations/reverse.js
	node js/id/operations/rotate.js
	node js/id/operations/split.js
	node js/id/operations/straighten.js
	node js/id/presets.js
	node js/id/presets/category.js
	node js/id/presets/collection.js
	node js/id/presets/field.js
	node js/id/presets/preset.js
	node js/id/renderer/background.js
	node js/id/renderer/background_source.js
	node js/id/renderer/gpx_layer.js
	node js/id/renderer/map.js
	node js/id/renderer/tile_layer.js
	node js/id/services/taginfo.js
	node js/id/services/wikipedia.js
	node js/id/start.js
	node js/id/svg.js
	node js/id/svg/areas.js
	node js/id/svg/labels.js
	node js/id/svg/lines.js
	node js/id/svg/midpoints.js
	node js/id/svg/points.js
	node js/id/svg/restrictions.js
	node js/id/svg/surface.js
	node js/id/svg/tag_classes.js
	node js/id/svg/vertices.js
	node js/id/ui.js
	node js/id/ui/account.js
	node js/id/ui/attribution.js
	node js/id/ui/background.js
	node js/id/ui/cmd.js
	node js/id/ui/commit.js
	node js/id/ui/confirm.js
	node js/id/ui/contributors.js
	node js/id/ui/disclosure.js
	node js/id/ui/entity_editor.js
	node js/id/ui/feature_list.js
	node js/id/ui/flash.js
	node js/id/ui/geolocate.js
	node js/id/ui/help.js
	node js/id/ui/inspector.js
	node js/id/ui/intro.js
	node js/id/ui/intro/area.js
	node js/id/ui/intro/line.js
	node js/id/ui/intro/navigation.js
	node js/id/ui/intro/point.js
	node js/id/ui/intro/start_editing.js
	node js/id/ui/lasso.js
	node js/id/ui/loading.js
	node js/id/ui/modal.js
	node js/id/ui/modes.js
	node js/id/ui/notice.js
	node js/id/ui/preset.js
	node js/id/ui/preset/access.js
	node js/id/ui/preset/address.js
	node js/id/ui/preset/check.js
	node js/id/ui/preset/combo.js
	node js/id/ui/preset/defaultcheck.js
	node js/id/ui/preset/input.js
	node js/id/ui/preset/localized.js
	node js/id/ui/preset/maxspeed.js
	node js/id/ui/preset/radio.js
	node js/id/ui/preset/textarea.js
	node js/id/ui/preset/wikipedia.js
	node js/id/ui/preset_icon.js
	node js/id/ui/preset_list.js
	node js/id/ui/radial_menu.js
	node js/id/ui/raw_member_editor.js
	node js/id/ui/raw_membership_editor.js
	node js/id/ui/raw_tag_editor.js
	node js/id/ui/restore.js
	node js/id/ui/save.js
	node js/id/ui/selection_list.js
	node js/id/ui/sidebar.js
	node js/id/ui/source_switch.js
	node js/id/ui/spinner.js
	node js/id/ui/splash.js
	node js/id/ui/status.js
	node js/id/ui/success.js
	node js/id/ui/tag_reference.js
	node js/id/ui/toggle.js
	node js/id/ui/undo_redo.js
	node js/id/ui/view_on_osm.js
	node js/id/ui/zoom.js
	node js/id/util.js
	node js/id/util/session_mutex.js
	node js/id/util/suggest_names.js
	node js/id/validate.js
	node js/lib/bootstrap-tooltip.js

all: \
	dist/iD.css \
	dist/iD.js \
	dist/iD.min.js \
	dist/img/line-presets.png \
	dist/img/relation-presets.png

DATA_FILES = $(shell find data -type f -name '*.json' -o -name '*.md')
data/data.js: $(DATA_FILES) dist/locales/en.json dist/img/maki-sprite.png
	node build.js

dist/locales/en.json: data/core.yaml data/presets.yaml
	node build.js

dist/iD.js: \
	js/lib/bootstrap-tooltip.js \
	js/lib/d3.v3.js \
	js/lib/d3.combobox.js \
	js/lib/d3.geo.tile.js \
	js/lib/d3.jsonp.js \
	js/lib/d3.keybinding.js \
	js/lib/d3.one.js \
	js/lib/d3.dimensions.js \
	js/lib/d3.trigger.js \
	js/lib/d3.typeahead.js \
	js/lib/d3.curtain.js \
	js/lib/d3.value.js \
	js/lib/jxon.js \
	js/lib/lodash.js \
	js/lib/osmauth.js \
	js/lib/rbush.js \
	js/lib/togeojson.js \
	js/lib/marked.js \
	js/id/start.js \
	js/id/id.js \
	js/id/services/*.js \
	js/id/util.js \
	js/id/util/*.js \
	js/id/geo.js \
	js/id/geo/*.js \
	js/id/actions.js \
	js/id/actions/*.js \
	js/id/behavior.js \
	js/id/behavior/*.js \
	js/id/modes.js \
	js/id/modes/*.js \
	js/id/operations.js \
	js/id/operations/*.js \
	js/id/core/*.js \
	js/id/renderer/*.js \
	js/id/svg.js \
	js/id/svg/*.js \
	js/id/ui.js \
	js/id/ui/*.js \
	js/id/ui/preset/*.js \
	js/id/ui/intro/*.js \
	js/id/presets.js \
	js/id/presets/*.js \
	js/id/validate.js \
	js/id/end.js \
	js/lib/locale.js \
	data/introGraph.js

.INTERMEDIATE dist/iD.js: data/data.js

dist/iD.js: node_modules/.install Makefile
	@rm -f $@
	cat $(filter %.js,$^) > $@

dist/iD.min.js: dist/iD.js Makefile
	@rm -f $@
	node_modules/.bin/uglifyjs $< -c -m -o $@

dist/iD.css: css/*.css
	cat css/reset.css css/map.css css/app.css css/feature-icons.css > $@

node_modules/.install: package.json
	npm install && touch node_modules/.install

clean:
	rm -f dist/iD*.js dist/iD.css

translations:
	node data/update_locales

imagery:
	npm install editor-imagery-index@git://github.com/osmlab/editor-imagery-index.git#gh-pages && node data/update_imagery

suggestions:
	npm install name-suggestion-index@git://github.com/osmlab/name-suggestion-index.git
	cp node_modules/name-suggestion-index/name-suggestions.json data/name-suggestions.json

SPRITE = inkscape --export-area-page

dist/img/line-presets.png: svg/line-presets.svg
	if [ `which inkscape` ]; then $(SPRITE) --export-png=$@ $<; else echo "Inkscape is not installed"; fi;

dist/img/relation-presets.png: svg/relation-presets.svg
	if [ `which inkscape` ]; then $(SPRITE) --export-png=$@ $<; else echo "Inkscape is not installed"; fi;

dist/img/maki-sprite.png: ./node_modules/maki/www/images/maki-sprite.png
	cp $< $@
	node data/maki_sprite

D3_FILES = \
	node_modules/d3/src/start.js \
	node_modules/d3/src/arrays/index.js \
	node_modules/d3/src/behavior/behavior.js \
	node_modules/d3/src/behavior/zoom.js \
	node_modules/d3/src/core/index.js \
	node_modules/d3/src/event/index.js \
	node_modules/d3/src/geo/mercator.js \
	node_modules/d3/src/geo/path.js \
	node_modules/d3/src/geo/stream.js \
	node_modules/d3/src/geom/polygon.js \
	node_modules/d3/src/selection/index.js \
	node_modules/d3/src/transition/index.js \
	node_modules/d3/src/xhr/index.js \
	node_modules/d3/src/end.js

js/lib/d3.v3.js: $(D3_FILES)
	node_modules/.bin/smash $(D3_FILES) > $@
	@echo 'd3 rebuilt. Please reapply 7e2485d, 4da529f, and 223974d'
