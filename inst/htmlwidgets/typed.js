HTMLWidgets.widget({

  name: 'typed',

  type: 'output',

  factory: function(el, width, height) {

    return {

      renderValue: function(x) {
        
        var typed = new Typed("#" + el.id, x);

      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});
