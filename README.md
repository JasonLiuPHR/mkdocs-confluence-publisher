# MkDocs Confluence Publisher Plugin

This MkDocs plugin automatically publishes your documentation to Confluence. It creates a hierarchical structure in Confluence that mirrors your MkDocs site structure, updates page content, and handles attachments.

## Features

- Automatically creates and updates pages in Confluence
- Maintains the hierarchy of your MkDocs site in Confluence
- Handles attachments referenced in your markdown files
- Configurable page prefix for easy identification in Confluence

## Installation

Install the plugin using pip:

```bash
pip install mkdocs-confluence-publisher
```

## Configuration

Add the following to your `mkdocs.yml`:

```yaml
plugins:
  - confluence-publisher:
      confluence_prefix: "MkDocs - "  # Optional: Prefix for page titles in Confluence
      confluence_suffix: " - MkDocs"  # Optional: Suffix for page titles in Confluence
      space_key: "YOUR_SPACE_KEY"     # Required: Confluence space key
      parent_page_id: 123456          # Required: ID of the parent page in Confluence
```

## Environment Variables

The plugin requires the following environment variables to be set:

- `CONFLUENCE_URL`: The base URL of your Confluence instance
- `CONFLUENCE_USERNAME`: Your Confluence username
- `CONFLUENCE_API_TOKEN`: Your Confluence API token

You can set these in your environment or use a `.env` file.

## Usage

Once configured, the plugin will automatically publish your documentation to Confluence when you build your MkDocs site:

```bash
mkdocs build
```

## How It Works

1. **Initialization**: The plugin connects to Confluence using the provided credentials.
2. **Page Creation**: It creates a structure in Confluence mirroring your MkDocs navigation.
3. **Content Update**: As it processes each page, it updates the content in Confluence.
4. **Attachment Handling**: Any attachments referenced in your markdown are uploaded to the corresponding Confluence page.

## Example Project

This repository includes a sample `mkdocs` project in the `example-docs/` directory that demonstrates a wide range of features, including:

- A multi-level page structure
- Embedded images
- Internal and external links
- Code blocks

### Running the Example

To run the example project and test the development version of the plugin:

1. **Navigate to the example directory:**
   ```bash
   cd example-docs
   ```

2. **Set up your Confluence environment:**
   Create a `.env` file in the project root with your Confluence credentials:
   ```
   CONFLUENCE_URL=<your_confluence_url>
   CONFLUENCE_USERNAME=<your_username>
   CONFLUENCE_API_TOKEN=<your_api_token>
   ```

3. **Update `mkdocs.yml`:**
   In `example-docs/mkdocs.yml`, update the `space_key` and `parent_page_id` with your Confluence details.

4. **Run the build script:**
   ```bash
   ./run-example.sh
   ```

This will install the plugin in editable mode and build the site, publishing the content to your Confluence instance.

## Logging

The plugin uses Python's logging module. You can configure logging in your `mkdocs.yml`:

```yaml
logging:
  level: INFO
```

Set to `DEBUG` for more detailed logging information.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the Apache-2.0 license.
