# Resume
This is my resume. I updated the resume.tex file; it automatically converts the text file into pdf. I use this resume for my job application or whatever. I open-source it so that others can use it as well.

## Release
This build automatically upon creating a tag.

Example:
```bash
git tag -a v2.2.2 -m "v2.2.2"
git push --tags
```

## Local Build
```bash
dockerlatex.sh pdflatex resume.tex
```
