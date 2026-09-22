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

Output is written to `dist/` and deployed to GitHub Pages by the workflow in `.github/workflows/astro.yaml`. The custom domain is configured via `public/CNAME`.
