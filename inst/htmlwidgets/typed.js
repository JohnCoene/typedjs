HTMLWidgets.widget({

  name: 'typed',

  type: 'output',

  factory: function(el, width, height) {

    return {

      renderValue: function(x) {

        if (jQuery.type( x.type ) === "string")
          var type = Array(x.type);
        else
          var type = x.type;

        $(function(){
          $('#' + el.id).typed({
            strings: type,
            typeSpeed: x.typeSpeed,
            contentType: x.contentType
          });
        });

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});
