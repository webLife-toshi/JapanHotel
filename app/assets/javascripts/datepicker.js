 $(function() {
    $( "#from" ).datepicker({
      minDate: 0, maxDate: "+4M",
      changeMonth: true,
      numberOfMonths: 3,
      onClose: function( selectedDate ) {
        $( "#to" ).datepicker( "option", "minDate", selectedDate );
      }
    });
    $( "#to" ).datepicker({
      minDate: 0, maxDate: "+4M",
      changeMonth: true,
      numberOfMonths: 3,
      onClose: function( selectedDate ) {
        $( "#from" ).datepicker( "option", "maxDate", selectedDate );
      }
    });
  });

  $(function() {
    $( "#room" ).spinner({
      spin: function( event, ui ) {
        if ( ui.value > 8 ) {
          $( this ).spinner( "value", 1 );
          return false;
        } else if ( ui.value < 1 ) {
          $( this ).spinner( "value", 8 );
          return false;
        }
      }
    });
  });

  $(function() {
    $( "#adult" ).spinner({
      spin: function( event, ui ) {
        if ( ui.value > 10 ) {
          $( this ).spinner( "value", 1 );
          return false;
        } else if ( ui.value < 1 ) {
          $( this ).spinner( "value", 10 );
          return false;
        }
      }
    });
  });

 $(function() {
    $( "#child" ).spinner({
      spin: function( event, ui ) {
        if ( ui.value > 6 ) {
          $( this ).spinner( "value", 1 );
          return false;
        } else if ( ui.value < 1 ) {
          $( this ).spinner( "value", 6 );
          return false;
        }
      }
    });
  });

