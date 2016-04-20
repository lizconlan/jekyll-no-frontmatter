# jekyll-no-frontmatter

A Jekyll plugin for generating a local site without needing to add
frontmatter yaml to your markdown pages.

## Why would I want this?

Comes in handy if you're trying to check markdown files destined for a
GitHub repository before you commit them. (GitHub will render the yaml
header as a table.)

## Use

Copy the `no-frontmatter.rb` file into your `_plugins` directory

Open your `_config.yml` file and add

```
safe: false
```

to allow the plugin to work

Add `_site/` to your `.gitignore` file to avoid commiting the rendered
html files to your GitHub repo.

Enjoy!
