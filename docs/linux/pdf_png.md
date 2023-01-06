# DynTools : Linux : PDF and PNG Tools

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Linux : PDF and PNG Tools](#dyntools--linux--pdf-and-png-tools)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [PDF Compressor](#pdf-compressor)
  - [PDF Merge](#pdf-merge)
  - [PPTX to PDF](#pptx-to-pdf)
  - [PNG Merge to PDF](#png-merge-to-pdf)
  - [PDF Extract as PNG](#pdf-extract-as-png)
  - [PNG Batch](#png-batch)

## Description

Here is a list of tools to manage some PDF or PNG.

## PDF Compressor

```bash
sudo apt-get install ghostscript
ps2pdf input.pdf output.pdf
ps2pdf -dPDFSETTINGS=/ebook input.pdf output.pdf
```

**Online** :

- [Shrink PDF](https://shrinkpdf.com/)
- [Compress PNG](https://compresspng.com/)
- [Compress JPEG](https://compressjpeg.com/)
- [Compress All](https://www.wecompress.com/en/)

## PDF Merge

```bash
sudo apt-get install poppler-utils
pdfunite *.pdf output.pdf
```

## PPTX to PDF

```bash
libreoffice --headless --convert-to pdf file.pptx
```

## PNG Merge to PDF

```bash
sudo apt-get install poppler-utils
convert doc-*.png doc.pdf
convert -density 400 -resize 3000^ file.pdf file%d.jpg

Error : cache resources exhausted Imagemagick

sudo vim /etc/ImageMagick-6/policy.xml
# Change this
<policy domain="resource" name="disk" value="1GiB"/>
# By this
<policy domain="resource" name="disk" value="8GiB"/>

Error : ImageMagick security policy 'PDF' blocking conversion

sudo vim /etc/ImageMagick-6/policy.xml
# Add this just after </policymap>
<policy domain="coder" rights="read | write" pattern="PDF" />
```

## PDF Extract as PNG

```bash
sudo apt-get install poppler-utils
pdftoppm -png output.pdf doc
```

## PNG Batch

```bash
Use **XnConvert** for process batch images
```
