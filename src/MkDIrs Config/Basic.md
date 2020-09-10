

## MkDocs Configuration

This site is powered by a markdown documentation site generator called MkDocs you can find more about MkDocs [here][linkmk]

[linkmk]: https://www.mkdocs.org/

MkDocs is fitted with a custom theme called windmill, docs about it can be found [here][linkwindmill]

[linkwindmill]: https://github.com/gristlabs/mkdocs-windmill

## Install

Begin by making sure you have python3 and pip3 installed. Now you have to install the necessary dependencies.

Install MkDocs

```bash
pip3 install mkdocs
sudo apt install mkdocs
```

Install MkDocs Windmill

```bash
pip3 install mkdocs-windmill
```

## Build and Run

After installing all the dependencies, you can run the following command to start a local server previewing the documentation.

```bash
cd project_location
mkdocs serve
```

To build the project run:

```bash
mkdocs build
```

Now the documents in the `site` directory are updated and ready to push to production.

## Static and extra configuration

In the root directory of the project there is a file called `mkdocs.yml`. This file contains configuration regarding static files, themes and [more][morelink]

[morelink]: https://www.mkdocs.org/user-guide/configuration/

To make images available under `http://example.com/Img` paste them in the `docs/img/` folder.


## Linking images

###Example MD image:

```md
![Brive logo](/testsitehehe.github.io/img/icon.png){: style="height:150px;width:150px"}
```

###Result:

![Brive logo](/testsitehehe.github.io/img/icon.png){: style="height:150px;width:150px"}
