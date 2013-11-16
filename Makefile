# See the README for installation instructions.

compile :
	node js/lib/bootstrap-tooltip.js 
	node js/lib/jxon.js 
	node js/lib/lodash.js 
	node js/lib/osmauth.js 
	node js/lib/rbush.js 
	node js/lib/togeojson.js 
	node js/lib/marked.js 
	node js/id/start.js 
	node js/id/id.js 
	node js/id/services/*.js 
	node js/id/util.js 
	node js/id/util/suggest_names.js
	node js/id/util/session_mutex.js
	node js/id/geo.js 
	node js/id/geo/*.js 
	node js/id/actions.js 
	node js/id/actions/*.js 
	node js/id/behavior.js 
	node js/id/behavior/*.js 
	node js/id/modes.js 
	node js/id/modes/*.js 
	node js/id/operations.js 
	node js/id/operations/*.js 
	node js/id/core/*.js 
	node js/id/renderer/*.js 
	node js/id/svg.js 
	node js/id/svg/*.js 
	node js/id/ui.js 
	node js/id/ui/*.js 
	node js/id/ui/preset/*.js 
	node js/id/ui/intro/*.js 
	node js/id/presets.js 
	node js/id/presets/*.js 
	node js/id/validate.js 
	node js/id/end.js 
	node js/lib/locale.js 
	node data/introGraph.js
	node js/lib/d3.v3.js 
	node js/lib/d3.combobox.js 
	node 	js/lib/d3.geo.tile.js 
	node	js/lib/d3.jsonp.js 
	node	js/lib/d3.keybinding.js 
	node 	js/lib/d3.one.js 
	node	js/lib/d3.dimensions.js 
	node	js/lib/d3.trigger.js 
	node	js/lib/d3.typeahead.js 
	node	js/lib/d3.curtain.js 
	node js/lib/d3.value.js 

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
