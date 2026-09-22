# ragnarenglish.com

My blog! A mostly static website built with Astro. Content is stored in Markdown and managed through version control.

## Development

Use the Nix flake for a reproducible environment:

```
nix develop
```

Start the dev server with live reload:

```
nix develop --command astro dev --background
```

Manage the background server:

```
nix develop --command astro dev status
nix develop --command astro dev logs
nix develop --command astro dev stop
```

Astro watches source files and rebuilds automatically. Refresh the browser to see the latest output.

## Content

- Posts: `src/content/posts/YYYY-MM-DD-slug.md`
- Pages: `src/content/pages/{slug}.md`

### Creating a new post

1. Create a file under `src/content/posts/` with an ISO date prefix and a URL-friendly slug, for example `2026-10-27-my-post.md`.
2. Include `title`, `date`, and an optional `description` in the frontmatter.
3. `lang` in the frontmatter defaults to `"en"`; set it to `"is"` for Icelandic posts so browsers and screen readers treat mixed-language content correctly.

## Build and preview

Create a production build:

```
nix develop --command npm run build
```

Preview the built site:

```
nix develop --command npm run preview
```

Output is written to `dist/`.

## Deployment

The site is deployed to GitHub Pages by the workflow in `.github/workflows/astro.yaml`.

**To deploy, push to `main`:**

```
git push origin main
```

The workflow installs dependencies (`npm ci`), builds the site (`npm run build`), and publishes `dist/` via `actions/deploy-pages`. Deploys typically take a minute or two; progress is visible under the repository's **Actions** tab. You can also trigger a deploy without a commit via **Actions → Deploy Astro site to Pages → Run workflow**.

One-time setup (already done, documented here for reference):

- Repository **Settings → Pages → Build and deployment → Source** must be set to **GitHub Actions** (not "Deploy from a branch").
- The custom domain is set by `public/CNAME` (`www.ragnarenglish.com`), which Pages picks up on each deploy. DNS for the domain must point at GitHub Pages.

Dependabot (`.github/dependabot.yml`) opens weekly PRs for npm and GitHub Actions updates; merging those PRs deploys automatically like any other push to `main`.
