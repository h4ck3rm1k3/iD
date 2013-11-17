require('../presets.js')
iD.presets.Collection = function(collection) {

    var presets = {

        collection: collection,

        item: function(id) {
            return _.find(collection, function(d) {
                return d.id === id;
            });
        },

        matchGeometry: function(geometry) {
            return iD.presets.Collection(collection.filter(function(d) {
                return d.matchGeometry(geometry);
            }));
        },

        search: function(value, geometry) {
            if (!value) return this;

            value = value.toLowerCase();

            var searchable = _.filter(collection, function(a) {
                return a.searchable !== false;
            });

            var leading_name = _.filter(searchable, function(a) {
                    return leading(a.name().toLowerCase());
                }).sort(function(a, b) {
                    var i = a.name().toLowerCase().indexOf(value) - b.name().toLowerCase().indexOf(value);
                    if (i === 0) return a.name().length - b.name().length;
                    else return i;
                }),
                leading_terms = _.filter(searchable, function(a) {
                    return _.any(a.terms() || [], leading);
                });

            function leading(a) {
                var index = a.indexOf(value);
                return index === 0 || a[index - 1] === ' ';
            }

            var levenstein_name = searchable.map(function(a) {
                    return {
                        preset: a,
                        dist: iD.util.editDistance(value, a.name().toLowerCase())
                    };
                }).filter(function(a) {
                    return a.dist + Math.min(value.length - a.preset.name().length, 0) < 3;
                }).sort(function(a, b) {
                    return a.dist - b.dist;
                }).map(function(a) {
                    return a.preset;
                }),
                leventstein_terms = _.filter(searchable, function(a) {
                    return _.any(a.terms() || [], function(b) {
                        return iD.util.editDistance(value, b) + Math.min(value.length - b.length, 0) < 3;
                    });
                });

            var other = presets.item(geometry);

            return iD.presets.Collection(
                _.unique(
                    leading_name.concat(
                        leading_terms,
                        levenstein_name,
                        leventstein_terms,
                        other)));
        }
    };

    return presets;
};
