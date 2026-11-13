# CV maintenance

Edit `_data/publications.yml` for publications. It supplies both the homepage and the CV, including category, title, authors and venue. Use `<u>...</u>` to underline a name and `<sup>†</sup>` to mark a corresponding author.

Edit `cv/main.tex` for the rest of the CV. Do not replace `\input{publications.generated.tex}`: the publication section is generated from the shared data.

On each push to `master`, GitHub Actions generates the publication section, builds the PDF with Korean support, and publishes it at `/cv.pdf` along with the website. The tracked root `cv.pdf` is a fallback; the deployed file is generated during the build.

To build locally with Ruby, pdfLaTeX and ko.TeX installed, run from the repository root:

```sh
ruby scripts/generate_publications.rb
cd cv
pdflatex -interaction=nonstopmode -halt-on-error main.tex
pdflatex -interaction=nonstopmode -halt-on-error main.tex
```
