﻿"use strict";

var gulp = require("gulp"),
    rimraf = require("rimraf"),
    less = require("gulp-less");

var paths = {
    webroot: "./wwwroot/"
};
gulp.task("less", function () {
    return gulp.src('Content/styles.less')
        .pipe(less())
        .pipe(gulp.dest(paths.webroot + '/css'))
});