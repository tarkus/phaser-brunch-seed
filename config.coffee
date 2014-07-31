exports.config =
  files:
    javascripts:
      joinTo:
        'javascripts/vendor.js': /^(bower_components|vendor)/
        'javascripts/app.js': /^app/
      before: [
        'bower_components/jquery/dist/jquery'
      ]
    stylesheets:
      joinTo:
        'stylesheets/app.css': /^(bower_components|vendor|app\/styles)/
      order:
        after: [
          'app/styles/app.styl'
        ]

    templates:
      defaultExtension: '.jade'
      joinTo:
        'javascripts/templates.js': /^app/

  plugins:

    jade:
      options:
        pretty: true

    static_jade:
      extension: '.html.jade'
