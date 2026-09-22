## Development

Use the Nix flake for a reproducible environment:

```
nix develop
```

Start the dev server with background mode and live reload:

```
nix develop --command astro dev --background
```

Manage the background server with:

```
nix develop --command astro dev status
nix develop --command astro dev logs
nix develop --command astro dev stop
```

Astro rebuilds automatically when files change. Refresh the browser to see the latest output.

For a production build and preview:

```
nix develop --command npm run build
nix develop --command npm run preview
```

## Documentation

Full documentation: https://docs.astro.build

Consult these guides before working on related tasks:

- [Adding pages, dynamic routes, or middleware](https://docs.astro.build/en/guides/routing/)
- [Working with Astro components](https://docs.astro.build/en/basics/astro-components/)
- [Using React, Vue, Svelte, or other framework components](https://docs.astro.build/en/guides/framework-components/)
- [Adding or managing content](https://docs.astro.build/en/guides/content-collections/)
- [Adding styles or using Tailwind](https://docs.astro.build/en/guides/styling/)
