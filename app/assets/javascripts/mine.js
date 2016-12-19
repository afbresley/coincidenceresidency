$(document).ready( function () {

  $('a.btn-fugu').click( function(){ //you can give id or class name here for $('button')
      $(this).text(function(i,old){
          console.log(old)
          // return $.trim(old) == 'hide application' ?  'OPEN APPLICATION' : 'hide application';
      });
  });

})