
var navigator = {
    userAgent : "BLA"
};


var window = {
    document : {

        createElement : function (f) {
        },

        documentElement :
        {
            addBehavior : function (x) {
                
            }
        }
    }
};
//win=window;
doc=window.document;
//doc.documentElement.bla=1;
if (doc.documentElement.addBehavior)
{
    console.log("hello");
}
//console.log(win);

module.exports.window = window;
module.exports.navigator = navigator;
