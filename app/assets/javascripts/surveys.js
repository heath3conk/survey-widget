$(document).ready(function() {
  // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
  // $('.modal-trigger').leanModal();

  // $('div').on('click', '.modal-action', function(event){
  //   event.preventDefault();
  //   var newSurveyTitle = $("#new-title").val();
  //   $.ajax({
  //     beforeSend: function(xhr){xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
  //     url: "/surveys",
  //     method: "POST",
  //     data: { survey: {title: newSurveyTitle} }
  //   }).done(function(surveyTitle){
  //     console.log(surveyTitle);
  //     $(surveyTitle).appendTo(".survey-list")
  //   });
  // })
});