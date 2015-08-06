//jQuery.ajax
$(function(){
  'use strict';
  var sa = '//localhost:3000';
  //var sa = 'https://young-citadel-2431.herokuapp.com';
  // var sa = 'http://10.13.108.54:3000';
  var token;

//ajax user actions
  $("#register").on('click', function(e) {
    $.ajax(sa + '/users', {
      contentType: 'application/json',
      processData: false,
      data: JSON.stringify({
        credentials: {
          email: $('#email').val(),
          password: $('#password').val(),
          password_confirmation: $('#password').val()
        }
      }),
      dataType: 'json',
      method: 'POST'
    }).done(function(data, textStatus, jqxhr) {
      $('#result').val(JSON.stringify(data));
        console.log('Ballin, Bitches, Eating yall food leaving dishes');
    }).fail(function(jqxhr, textStatus, errorThrown) {
      $('#result').val('registration failed');
    });
  });

  $("#login").on('click', function(e){
    $.ajax(sa + "/login", {
      contentType: 'application/json',
      processData: false,
      data: JSON.stringify({
        credentials: {
          email: $('#email').val(),
          password: $('#password').val()
        }
      }),
      dataType: 'json',
      method: 'POST'
    }).done(function(data){
      $("#token").val(data.token);
        console.log('Ballin, Bitches, Eating yall food leaving dishes');
        console.log(data);
      $("#user-id").val(data.id)
    }).fail(function(){
      $('#result').val('login failed');
    });
  });

   $("#delete-user").on('click', function(){
 $.ajax({
   url: '/users/' + $("#user-id").val(),
   method: 'DELETE',
 }).done(function(data){
   console.log("Deleted user from database. You did it, you did it,you did it, horray");
 }).fail(function(data){
   console.error(data);
 });
//ajax for teachers
//CREATE teacher
 $("#teacher-create")$("#register").on('click', function(e) {
    $.ajax(sa + '/teacers', {
      contentType: 'application/json',
      data: JSON.stringify({
        data: {
          username: $('#teacher-username').val(),
          school: $('#teacher-school').val(),
        }
      }),
      dataType: 'json',
      method: 'POST'
    }).done(function(data, textStatus, jqxhr) {
      $('#result').val(JSON.stringify(data));
        console.log('Ballin, Bitches, Eating yall food leaving dishes');
    }).fail(function(jqxhr, textStatus, errorThrown) {
      $('#result').val('registration failed');
    });
  });


//update teachers with Ajax
$("#teacher-update").on('click', function(){
 $.$.ajax({
   url: '/teachers/',
   type: 'PATCH',
   dataType: 'json)',
   data: {
    username: '#teacher-username'
    school: '#teacher-school'},
 })
 .done(function() {
   console.log("success");
 })
 .fail(function() {
   console.log("error");
 })
 .always(function() {
   console.log("complete");
 });

   // url: '/teachers/' + $("#teacher-id").val(),
   // method: 'PATCH',
   // data: {
   //   teacher: {
   //     title: $("#teacher-title").val(),
   //     description: $("#teacher-description").val(),
   //     release_year: Number($("#teacher-year").val()),
   //     chris_rating: $("#teacher-mpaa").val(),
   //     length: Number($("#teacher-length").val())
     }
   }
 }).done(function(data){
   console.log("I'm a robot that UPDATED a teacher.");
 }).fail(function(data){
   console.log("YOU DONE FUCKED UP NOW!");
 });
});
});


  // List users. Unessecary code. keep to use as template for other list actions


  // $("#list").on('click', function(e){
  //   $.ajax(sa + '/users', {
  //     dataType: 'json',
  //     method: 'GET',
  //     headers: {
  //       Authorization: 'Token token=' + $('#token').val()
  //     }
  //   }).done(function(data){
  //     $("#result").val(JSON.stringify(data));
  //       console.log('Ballin, Bitches, Eating yall food leaving dishes');
  //   }).fail(function(){
  //     $("#result").val('list failed');
  //   });
  // });
});
