# resume

# Release
This build automatically upon creating a tag.
Example: 
```bash
git tag -a v2.2.2 -m "v2.2.2"
ggit push --tags
```

# Local Build
```bash
docker build -t latex .
docker run --rm -i -v "$PWD":/data latex pdflatex resume.tex
```