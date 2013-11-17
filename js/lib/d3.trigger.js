require('./d3.v3.js');
d3.selection.prototype.trigger = function (type) {
    this.each(function() {
        var evt = document.createEvent('HTMLEvents');
        evt.initEvent(type, true, true);
        this.dispatchEvent(evt);
    });
};
