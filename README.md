# Finix: Game Dev Blog & Portfolio

Hugo + [Blowfish](https://blowfish.page/). Posts are Markdown files.
(Tested with Hugo extended 0.167.0. Current Blowfish needs Hugo ≥ 0.164.)

## First run
```bash
bash scripts/import-images.sh   # pulls your images from the old portfolio
hugo server -D                  # -D also shows drafts (the sample devlog/tutorial)
```

## Writing posts
```bash
hugo new content projects/my-new-game   # full project showcase
hugo new content devlogs/my-game-week-1 # devlog (use `series` to group them)
hugo new content blog/my-first-tutorial # tutorial / ramble
```
Each post is a folder (a "page bundle") with `index.md`. Put images next to it:
- `feature.png` becomes the card thumbnail and the hero image
- everything else: `![Alt](my-image.png)`

Posts are created with `draft: true`. Set it to `false` (or delete the line) to publish.

## Structure
| Folder | Purpose |
|---|---|
| `content/projects/` | Showcases (card grid) |
| `content/devlogs/` | Devlogs, grouped by `series` |
| `content/blog/` | Tutorials and rambles |
| `content/about.md`, `content/_index.md` | About page, home intro text |
| `config/_default/` | Site, menu, theme and author settings |
| `assets/css/schemes/finix.css` | **Colour palette** |

## Deploy (GitHub Pages)
1. Push to `main`. In the repo: Settings → Pages → Source: **GitHub Actions**.
2. `baseURL` in `config/_default/hugo.toml` is set for `.../my-portfolio/`.
   If you rename the repo to `finixgamedev.github.io`, change it to `https://finixgamedev.github.io/`.

## Updating the theme
The theme is vendored in `themes/blowfish`. To track upstream instead:
`rm -rf themes/blowfish && git submodule add -b main https://github.com/nunocoracao/blowfish.git themes/blowfish`
