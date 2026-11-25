# Bukhari SEO Blog — deployment notes

## What changed
- Rebuilt the deployed static blog while keeping the existing Netlify publish directory (`site/static`) and `netlify.toml` unchanged.
- Replaced the single-page JavaScript article display with 20 separate, crawlable article URLs.
- Added page-specific title and description tags, canonical URLs, Open Graph metadata, Article structured data, a sitemap, robots.txt, and a custom 404 page.
- Added an accessible client-side search box to filter the 20 guides.
- Added standalone About, Contact, Privacy Policy, Disclaimer and Terms pages.
- Reworked the 20 existing short posts into more topic-specific educational guides using the supplied source copy as a base. No rankings, traffic, revenue or fixed-time outcomes are promised.
- Removed the dummy AdSense publisher placeholder from the rebuilt public pages. Add the real AdSense code only if/when Google provides your actual publisher code and instructs you to install it.

## Google Analytics preservation
The Google Analytics block from the previously published `site/static/index.html` was copied unchanged into the new homepage and every article/legal page. It still contains both existing IDs:
- `G-Y22DMCJBL2`
- `G-CTNN1BY058`

The existing `trackBlogEvent(eventName, params = {})` function is preserved. The previous article page-view event call pattern is also retained on each article page. Do not edit, replace, consolidate or remove these IDs unless you intentionally decide to change analytics properties.

## Before deploying
1. Open the homepage and click several article cards. Confirm each opens its own URL.
2. Test the search box, navigation, images and contact links on desktop and mobile.
3. Confirm the email address and phone number on the Contact page are still correct public business contacts.
4. In Google Analytics Realtime, visit the homepage and at least one article URL to confirm traffic is received by the expected properties.
5. After deployment, open `/sitemap.xml` and `/robots.txt` and submit the sitemap in Google Search Console.
6. Do not expect AdSense approval automatically. Review all content, verify ownership and follow the instructions shown in your AdSense account.

## Important editorial note
The original source contained short, repetitive posts. The new articles add topic-specific practical guidance, but they are not a substitute for first-hand experience, original examples, author credentials or a documented editorial review. Before an AdSense application, add real business examples where you can substantiate them, identify the responsible author/editor, check all contact details, and review every page for accuracy. Do not invent testimonials, client results or qualifications.

## Deployment
The current Netlify configuration still publishes `site/static`. Upload/commit the updated repository to the same GitHub repository and let Netlify deploy as it currently does. No Hugo build command or publish-directory change is required for this version.
