const gulp = require('gulp')
const browserSync = require('browser-sync').create()

gulp.task('default', () => {

  browserSync.init({
    proxy: 'http://localhost:3400/TPASolution.Client/#!/',
    port: 3410,
    watch: true,
    files: ['C:/inetpub']
  })

})
