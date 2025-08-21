/*
Lesli

Copyright (c) 2025, Lesli Technologies, S. A.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program. If not, see http://www.gnu.org/licenses/.

Lesli · Ruby on Rails SaaS Development Framework.

Made with ♥ by LesliTech
Building a better future, one line of code at a time.

@contact  hello@lesli.tech
@website  https://www.lesli.tech
@license  GPLv3 http://www.gnu.org/licenses/gpl-3.0.en.html

// · ~·~     ~·~     ~·~     ~·~     ~·~     ~·~     ~·~     ~·~     ~·~
// · 
*/

const path      = require("path");
const gulp      = require("gulp");
const mjml      = require("gulp-mjml");
const rename    = require("gulp-rename");
const rimraf    = require("rimraf");
const browser   = require("browser-sync");
const htmlmin   = require("gulp-htmlmin");
const inlineCss = require("gulp-inline-css");


const email_templates_dist_path = "lib/lesli_mailer_emails"
const email_templates_src_path = ["lib/lesli_mailer_builder/**/devise/*.mjml"]


gulp.task("default",    gulp.series(clean, pages, inline, minify, distribute));
gulp.task("build",      gulp.series(clean, pages, inline, minify, distribute));
gulp.task("sync",       gulp.series(clean, pages, inline, minify, distribute, server, watch_sync));
gulp.task("dev",        gulp.series(clean, pages, inline, minify, distribute, server, watch_dev));

gulp.task("clean",      gulp.series(clean));
gulp.task("pages",      gulp.series(clean, pages));
gulp.task("inline",     gulp.series(clean, pages, inline));
gulp.task("minify",     gulp.series(clean, pages, inline, minify));
gulp.task("distribute", gulp.series(clean, pages, inline, minify, distribute));

gulp.task("dev_clean",      gulp.series(clean));
gulp.task("dev_pages",      gulp.series(pages));
gulp.task("dev_inline",     gulp.series(inline));
gulp.task("dev_minify",     gulp.series(minify));
gulp.task("dev_distribute", gulp.series(distribute));



// Delete the "dist" folder, this happens every time a build starts
function clean(done) {
    rimraf.sync(email_templates_dist_path)
    done()
}



// Compile layouts, pages, and partials into flat HTML files
// Then parse using Inky templates
function pages() {
    return gulp
    .src(email_templates_src_path)
    .pipe(mjml())
    .pipe(gulp.dest(email_templates_dist_path));
}



// Inline CSS 
function inline(done) {
    return gulp
    .src(path.join(email_templates_dist_path, "**", "**", "*.html"))
    .pipe(
        inlineCss({
            applyStyleTags: true,
            applyLinkTags: true,
            removeStyleTags: true,
            removeLinkTags: true
        })
    ).pipe(gulp.dest(email_templates_dist_path));
}



// Minify HTML
function minify() {
    return gulp
    .src(path.join(email_templates_dist_path, "**", "**", "*.html"))
    .pipe(htmlmin({ collapseWhitespace: true }))
    .pipe(gulp.dest(email_templates_dist_path));
}



// Distribute templates over The Lesli Platform
function distribute(done) {

    gulp
    .src(path.join(email_templates_dist_path, "**", "**", "*.html"))
    .pipe(rename({ suffix: ".html", extname: ".erb" }))
    .pipe(gulp.dest("app/views/lesli_mailer/emails"))

    done()
}



// Start a server with LiveReload to preview the site in
function server(done) {
    browser.init({ server: email_templates_dist_path });
    done();
}


// Watch for file changes
function watch_dev() {
    gulp
    .watch(["lib/lesli_mailer_builder/instances/**/*.mjml", ...email_templates_src_path])
    .on("all", gulp.series(pages, browser.reload, inline));
}


// Watch for file changes
function watch_sync() {
    gulp.watch(email_templates_path).on("all", gulp.series(pages, inline, distribute, browser.reload));
}
