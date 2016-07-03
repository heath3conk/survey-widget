$(document).ready(function() {
  $(".finalize").on("click", function(event){
    event.preventDefault();
    var surveyToFinalize = $(this).closest("form").attr("action");
    $.ajax({
      beforeSend: function(xhr){xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
      url: surveyToFinalize,
      method: "PATCH"
    }).done(function(surveyObject){
      console.log(surveyObject);
      // location.reload();
    })
  })


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