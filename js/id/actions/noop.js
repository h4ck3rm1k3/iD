require ('../actions.js');
iD.actions.Noop = function() {
    return function(graph) {
        return graph;
    };
};
