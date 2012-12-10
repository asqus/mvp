function addOpt(){
  var x = $(".optionSelect").last()
  var m = x.attr('id')
  m = m.replace('select', '')
  var q = parseInt(m,10) + 1
  $("#addOption").remove()
  $("#removeOption").remove()
  $("#options_div").append('<div id="select'+q+'" class="optionSelect" style="margin-top:6px; margin-bottom:6px;"><input id="option'+q+'" class="options" /><div id="addOption" class="btn btn-primary" onclick="addOpt()" style="margin-left:6px; margin-right:6px;">+</div><div id="removeOption" class="btn btn-danger" onclick="removeOpt()">-</div></div>'
    )
};

function removeOpt(){
  var x = $(".optionSelect").last()
  var y = x.prev()
  var m = x.attr('id')
  var q = m.replace('select', '')
  if(q != 0){
    $("#"+m).remove()
  }
  if(y.hasClass("optionSelect")){
    $(y).append('<div id="addOption" class="btn btn-primary" onclick="addOpt()" style="margin-left:6px; margin-right:6px;">+</div><div id="removeOption" class="btn btn-danger" onclick="removeOpt()">-</div>')
  }
};

function createPOS(){
  $.ajax({
    url: "/poll_options_sets",
    type: "POST",
    data: {pos: {
             set_type: $("#set_type").val(), 
             options: createJSON(),
             num_options: $(".optionSelect").size() }},
    success: function(resp){ }
  });
};

function discardPOS(){
  $("#newPOS").empty()
  $("#poll_poll_options_set_id").val(0)
};

function createJSON(){
  var str = "{";
  $(".options").each(function(index, elem){
    str = str.concat("\""+index+"\":\""+$(elem).val()+"\",")
  })
  str = str.substr(0,str.length-1)
  str = str.concat("}")
  return str
};
