(function() {
  var template = Handlebars.template, templates = Handlebars.templates = Handlebars.templates || {};
templates['tasks_index'] = template(function (Handlebars,depth0,helpers,partials,data) {
  this.compilerInfo = [3,'>= 1.0.0-rc.4'];
helpers = helpers || Handlebars.helpers; data = data || {};
  var buffer = "", stack1, helperMissing=helpers.helperMissing, escapeExpression=this.escapeExpression, self=this;

function program1(depth0,data) {
  
  var buffer = "", stack1, options;
  buffer += "\n  <li> ";
  options = {hash:{},data:data};
  buffer += escapeExpression(((stack1 = helpers.link),stack1 ? stack1.call(depth0, depth0.name, depth0.url, options) : helperMissing.call(depth0, "link", depth0.name, depth0.url, options)))
    + " </li>\n";
  return buffer;
  }

  buffer += "<ul class='unstyled'>\n";
  stack1 = helpers.each.call(depth0, depth0.tasks, {hash:{},inverse:self.noop,fn:self.program(1, program1, data),data:data});
  if(stack1 || stack1 === 0) { buffer += stack1; }
  buffer += "\n<ul>";
  return buffer;
  });
})();
