# Hugo template for Decap CMS with Netlify Identity

This is a small business template built with [Hugo](https://gohugo.io) and [Decap CMS](https://github.com/decaporg/decap-cms), designed and developed by [Darin Dimitroff](https://twitter.com/deezel), [spacefarm.digital](https://www.spacefarm.digital).

## Getting started

Use our deploy button to get your own copy of the repository. 

[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/decaporg/one-click-hugo-cms&stack=cms)

This will setup everything needed for running the CMS:

* A new repository in your GitHub account with the code
* Full Continuous Deployment to Netlify's global CDN network
* Control users and access with Netlify Identity
* Manage content with Decap CMS

Once the initial build finishes, you can invite yourself as a user. Go to the Identity tab in your new site, click "Invite" and send yourself an invite.

Now you're all set, and you can start editing content!

## Local Development

Clone this repository, and run `yarn` or `npm install` from the new folder to install all required dependencies.

Then start the development server with `yarn start` or `npm start`.

## Testing

With the development server running, run the tests locally
with `yarn cypress:run` or `npm run cypress:run`.
Or use `yarn cypress:open` or `npm run cypress:open` to run interactively.

Cypress tests also run on deploy with the [Cypress Netlify integration](https://www.netlify.com/integrations/cypress/).

## Layouts

The template is based on small, content-agnostic partials that can be mixed and matched. The pre-built pages showcase just a few of the possible combinations. Refer to the `site/layouts/partials` folder for all available partials.

Use Hugo’s `dict` functionality to feed content into partials and avoid repeating yourself and creating discrepancies.

## CSS

The template uses a custom fork of Tachyons and PostCSS with cssnext and cssnano. To customize the template for your brand, refer to `src/css/imports/_variables.css` where most of the important global variables like colors and spacing are stored.

## SVG Social Icons

The social media icons are in `site/assets/img`.
Make sure you use consistent icons in terms of viewport and art direction for optimal results.
For an icon named `icons-facebook.svg`, refer to the SVG `social-icon` partial like so:

```
{{ partial "social-icon" (dict "link" "#" "svg" "icons-facebook" "alt" "Kaldi on Facebook") }}
```


## Preview the website on Windows before deployment

Do not double-click `site/static/index.html` to preview this project. The website uses root-relative paths such as `/assets/site.css` and `/images/post1.webp`; these are intended to be served from the website root and may not load under a `file:///` address.

1. Extract the complete ZIP.
2. Open the extracted `bukhariseo-blog-main` folder.
3. Double-click `PREVIEW-LOCALLY.bat`.
4. Your browser should open `http://127.0.0.1:8000/`.
5. Keep the black server window open while previewing. Close it when finished.

This local preview helper does not modify the website HTML, CSS, images, Netlify configuration, or Google Analytics code. It uses Python's built-in local web server. If Python is not installed, install it from https://www.python.org/downloads/ and select the option to add Python to PATH during setup.

For deployment, keep the existing Netlify publish directory `site/static`.
