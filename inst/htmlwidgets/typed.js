HTMLWidgets.widget({

  name: 'typed',

  type: 'output',

  factory: function(el, width, height) {

    return {

      renderValue: function(x) {

        if (jQuery.type( x.tp ) === "string")
          var type = Array(x.tp);
        else
          var type = x.tp;

        var waypoint = new Waypoint({
          element: document.getElementById(el.id),
          handler: function() {
            $(function(){
                $('#' + el.id).typed({
                  strings: type,
                  typeSpeed: x.typeSpeed,
                  contentType: x.contentType
                });
            });
          },
          offset: x.offset
        });

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});
