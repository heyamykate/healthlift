var gulp = require('gulp'),
    sass = require('gulp-sass'),
    uglify = require('gulp-uglify'),
    concat = require('gulp-concat'),
    rename = require('gulp-rename'),
    prefix = require('gulp-autoprefixer');


gulp.task('sass', function() {
  return gulp.src('main/static/style/**/*.scss')
  .pipe(sass({outputStyle: 'compressed'}))
  .pipe(prefix({
    browsers: ['last 2 versions'],
    cascade: false
  }))
  .pipe(gulp.dest('main/static/dist/style/'));
});

gulp.task('scripts', function() {
  return gulp.src('main/static/js/**/*.js')
    .pipe(concat('app.js'))
    .pipe(uglify())
    .pipe(rename('app.min.js'))
    .pipe(gulp.dest('main/static/dist/js/'))
});

gulp.task('libs', function() {
  return gulp.src('main/static/libs/*.js')
    .pipe(concat('libs.js'))
    .pipe(uglify())
    .pipe(rename('libs.min.js'))
    .pipe(gulp.dest('main/static/dist/libs/'));
});

gulp.task('watch', function() {
  gulp.watch('main/static/style/*.scss', ['sass']);
  gulp.watch('main/static/js/*.js', ['scripts']);
  gulp.watch('main/static/libs/*.js', ['libs']);
});

gulp.task('default', [
  'sass',
  'scripts',
  'libs',
  'watch'
]);
