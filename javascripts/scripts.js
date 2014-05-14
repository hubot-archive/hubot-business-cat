var jargon = [
  "action items",
  "adult in the room",
  "all hands on deck",
  "at the end of the day",
  "best (of breed|practice)",
  "big(|ger) (picture|data)",
  "bleeding edge",
  "blue sky thinking",
  "blue ocean strategy",
  "boil the ocean",
  "bottom line",
  "brain dump",
  "burn rate",
  "burn platform",
  "(\\W|^)buy(\\s|-)in",
  "care and feeding",
  "change (agent|management)",
  "circle the wagons",
  "client(\\s|-)facing",
  "come to jesus moment",
  "content marketing",
  "core competenc(y|ies)",
  "core values",
  "corporate values",
  "customer centric",
  "deliverable",
  "do more with less",
  "(double|drill) down",
  "drinking the kool(\\s|-)aid",
  "ducks in a row",
  "elevator pitch",
  "emotional bandwidth",
  "eye on the ball",
  "fast track",
  "game plan",
  "gap analysis",
  "get on the same page",
  "giving 110",
  "going forward",
  "go the extra mile",
  "guru",
  "hammer(|ing) away",
  "hard stop",
  "hit the ground running",
  "hold the fort",
  "ideate",
  "it is what it is",
  "key takeaways",
  "learnings",
  "leverage",
  "lots of moving parts",
  "low hanging fruit",
  "make hay",
  "move (the goal posts|the needle)",
  "onboarding",
  "on (my|your) plate",
  "on (my|your) radar",
  "out of (pocket|the loop)",
  "out(side|\\sof) the box",
  "over the wall",
  "paradigm",
  "peel the onion",
  "(\\W|^)per se(\\W|$)",
  "(\\W|^)ping me(\\W|$)",
  "point of contact",
  "price point",
  "proactive",
  "punch a puppy",
  "put this one to bed",
  "reach out",
  "results driven",
  "robust",
  "rock star",
  "rubber hits the road",
  "siwm lane",
  "share of wallet",
  "strategic .*?",
  "synerg(y|ize)",
  "take it (offline|to the next level)",
  "take ownership",
  "takeaway",
  "team (building|player)",
  "thought leadership",
  "tiger teams",
  "topicjacking",
  "total quality",
  "touch(|ing) (base|points)",
  "value (add|proposition)"
];

var checktext = function (str) {

  var arr = [];

  jargon.forEach( function(re) {

    var regex = (new RegExp(re));

    if (str.match(regex) !== null) {
      arr.push(str.match(regex)[0]);
    }

  });

  return arr;

};

var dostuff = function (event) {

  if (event.type === "change") {

    var content = $('#regex-test-content');
    var result = $('#regex-test-result');
    var text = content.html();
    var results = checktext(text);

    if (results.length > 0) {
      result.html('Business jargon: <strong>' + results.join(', ') + '</strong>');
    } else {
      result.html('No business jargon found');
    }

    // save text
    localStorage.setItem('business-cat-test', text);

  }

};

if (localStorage.getItem('business-cat-test')) {
  $('#regex-test-content')[0].innerHTML = localStorage.getItem('business-cat-test');
}

$('#regex-test-form').contentEditable().change(dostuff);

jQuery.fn.selectText = function(){
   var doc = document;
   var element = this[0];
   console.log(this, element);
   if (doc.body.createTextRange) {
       var range = document.body.createTextRange();
       range.moveToElementText(element);
       range.select();
   } else if (window.getSelection) {
       var selection = window.getSelection();
       var range = document.createRange();
       range.selectNodeContents(element);
       selection.removeAllRanges();
       selection.addRange(range);
   }
};