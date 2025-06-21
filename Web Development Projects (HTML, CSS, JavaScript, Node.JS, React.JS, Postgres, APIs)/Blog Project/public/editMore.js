// const { titleList, contentList } = require('../index');
$(".edit").click(function(){
    var btnId = $(this).attr("id"); // Get the ID of the clicked element
    console.log(btnId);
    var lastChar = btnId.charAt(btnId.length - 1);
    // Convert the last character to a number
    var idSel = parseInt(lastChar, 10);
    var titleId = "title_" + idSel;
    var contenteId = "content_" + idSel;
    var canceleId = "cancel_" + idSel;
    var updateId = "update_" + idSel;
    // var formId = "form_" + idSel;
    $("#" + titleId).removeAttr("readonly");
    $("#" + contenteId).removeAttr("readonly");
    $("#" + canceleId).removeAttr("hidden");
    $("#" + updateId).removeAttr("hidden");
    $(this).attr("hidden", true);
    
  });

  $(".update").click(function(){
    var btnId_new_1 = $(this).attr("id"); // Get the ID of the clicked element
    var lastChar_new_1 = btnId_new_1.charAt(btnId_new_1.length - 1);
    // Convert the last character to a number
    var idSel_new_1 = parseInt(lastChar_new_1, 10);
    var formId_1 = "form_" + idSel_new_1;
    $(this).attr('type', 'submit');
    $("#" + formId_1).attr('action', '/updatepost');}
  );

  $(".cancel").click(function(){
    var btnId_new = $(this).attr("id"); // Get the ID of the clicked element
    var lastChar_new = btnId_new.charAt(btnId_new.length - 1);
    // Convert the last character to a number
    var idSel_new = parseInt(lastChar_new, 10);
    var formId = "form_" + idSel_new;
    $(this).attr('type', 'submit');
    $("#" + formId).attr('action', '/cancel'); 
  });