# Copilot Instructions for `blog-source`

## Overview
This repository is a Hexo-based blog project using the `volantis` theme. It includes custom configurations, theme layouts, and assets for generating a static site. The project structure is organized to support Hexo's conventions and the `volantis` theme's features.

## Key Components

### 1. Hexo Configuration
- **Global Configurations**: `_config.yml`, `_config.volantis.yml`, `_config.landscape.yml`.
  - `_config.yml` is the main configuration file for Hexo.
  - `_config.volantis.yml` contains theme-specific settings.
- **Commands**:
  - `npm i hexo-theme-volantis`: Installs the `volantis` theme.
  - `hexo generate`: Generates static files.
  - `hexo server`: Starts a local development server.

### 2. Theme Customization
- **Theme Directory**: `themes/volantis`
  - Layouts: `layout/` contains `.ejs` files for rendering pages.
  - Styles: `source/css/` for custom styles.
  - Scripts: `source/js/` for custom JavaScript.
  - Configurations: `_config.yml` for theme-specific settings.

### 3. Content Organization
- **Source Directory**: `source/`
  - `_posts/`: Markdown files for blog posts.
  - `categories/`, `tags/`, `archives/`: Auto-generated pages for organizing content.

### 4. Deployment
- **Deployment Script**: `deploy.bat`
  - Automates deployment to the hosting platform.

## Development Workflow

### Setting Up
1. Install dependencies:
   ```bash
   npm install
   ```
2. Configure `_config.yml` and `_config.volantis.yml` as needed.

### Local Development
1. Start the development server:
   ```bash
   hexo server
   ```
2. Access the site at `http://localhost:4000`.

### Building the Site
1. Generate static files:
   ```bash
   hexo generate
   ```

### Deployment
1. Run the deployment script:
   ```bash
   ./deploy.bat
   ```

## Conventions
- Use `ejs` for layouts and partials.
- Follow Hexo's directory structure for organizing content.
- Use `_config.volantis.yml` for theme-specific settings.

## External Resources
- [Hexo Documentation](https://hexo.io/docs/)
- [Volantis Theme Documentation](https://volantis.js.org)

## Feedback and Contributions
- Report issues: [GitHub Issues](https://github.com/volantis-x/hexo-theme-volantis/issues)
- Discuss with the community: [GitHub Discussions](https://github.com/volantis-x/hexo-theme-volantis/discussions)