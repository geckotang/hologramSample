module.exports = (grunt) ->

  grunt.loadTasks 'gruntcomponents/tasks'
  grunt.loadNpmTasks 'grunt-shell'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-compass'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.initConfig

    growl:
      common:
        title: 'COMPLETE!!'
        msg: 'compile done.'
      compass:
        title: 'COMPLETE!!'
        msg: 'compass compiling done.'
      hologram:
        title: 'COMPLETE!!'
        msg: 'hologram compiling done.'

    compass:
      all:
        options:
          config: 'config.rb'
          bundleExec: true

    shell:
      hologram:
        options:
          stdout: true
          stderr: true
        command: 'bundle exec hologram hologram/config.yml'

    clean:
      hologram_output: [ 'htdocs/styleguide' ]

    watch:
      compass:
        options:
          livereload: true
        files: [ 'htdocs/css/src/**/*' ]
        tasks: [
          'compass'
          'growl:compass'
        ]
      hologram:
        options:
          livereload: true
        files: [
          'htdocs/common/css/src/**/*'
          'hologram/config.yml'
          'hologram/markdown_renderer.rb'
          'hologram/templates/*'
          'hologram/asset/**/*'
        ]
        tasks: [
          #'clean:hologram_output'
          'shell:hologram'
          'growl:hologram'
        ]

  grunt.registerTask 'cleanThenHologram', [
    'clean:hologram_output'
    'shell:hologram'
  ]
  grunt.registerTask 'default', [
    'compass'
    'cleanThenHologram'
    'growl:common'
  ]
