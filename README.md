# resume

# Release
This build automatically upon creating a tag.

# Local Build
```bash
docker build -t latex .
docker run --rm -i -v "$PWD":/data latex pdflatex resume.tex
```