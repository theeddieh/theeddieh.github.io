
var NUM_PATS = 59;
var NUM_PATS_BW = 1
var NUM_PATS_ANIM = 59;

/*
  var imagePath = window.location.protocol + "//" + window.location.host + "/";

  var cssRuleCode = document.all ? 'rules' : 'cssRules'; //account for IE and FF
  var rule = document.styleSheets[0][cssRuleCode][0];
  var selector = rule.selectorText;  //maybe '#tId'
  var value = rule.value;            //both selectorText and value are settable.
  */

//stylesheet.cssRules[0].style.backgroundColor="blue";

var stylesheet = document.styleSheets[0];
console.log(stylesheet.href);

var num = Math.floor(Math.random() * (NUM_PATS) + 1);
stylesheet.insertRule("html { background: transparent url(\"images/" + num + ".jpg\") repeat scroll 0% 0%; }", 0);

document.addEventListener('click', function (event) {
    if (event.target.tagName === "HTML") {
        num = Math.floor(Math.random() * (NUM_PATS_ANIM) + 1);
        stylesheet.deleteRule(0);
        stylesheet.insertRule("html { background: transparent url(\"images/" + num + ".jpg\") repeat scroll 0% 0%; }", 0);
    }
});
// }
