# HyperMeshColorPalette
A mapping of the colors used in HyperMesh 2017.

These colors were found using a tcl script called ``hm_colors_to_file.tcl`` which does exactly what the name suggests. 

---

# Disclaimer
I do not own any of the HyperMesh, HyperWorks, or Altair trademarks, copyrights, or other trade secrets which might be implied, included, or mentioned in this repository. This information in this repository is provided only for those who might need it for their own purposes. 

**There is no warranty or coverage included with this content. It is up to the user to verify this content for their own usage. The author of the files, code, and other content in this repository cannot be held reponsible for any outcomes that result from usage of this content.**

**NOTE**: The Tcl script in this repository has not been tested with any version of HyperMesh other than HyperMesh 2017.2. It _should_ work with later versions but there is no guarentee. Some of the HyperMesh Tcl API was changed sometime between HyperMesh version 2017 and 2021 so your results may vary.

---

## Files in this repo
**Code Files**
* ``color_html_maker.py``
* ``hm_colors_to_file.tcl``
* ``vba_code_in_hm_color_palette.vb``
  * This is a copy of the VBA macro in the included ``hm_color_palette.xlsm`` workbook. I've included this because I know downloading macro-enabled Excel workbooks from random internet strangers is a sketchy proposition. You'll just have to trust me on this one if you want the Excel version. 
  * **What it does**: This macro colors the cells in the workbook based on the RGB values in the row. It was faster to use this macro than color all the cells by hand using the color-picker. 

**Excel Workbooks**
* ``hm_color_palette.xlsm``
  * **NOTE**: This is a macro-enabled workbook! Based on your security settings on your computer and/or Microsoft Excel you might not be able to open this workbook! See above (``vba_coide_in_hm_color_palette.vb``) for an explanation on what the macro in this workbook is for. If you need the data but cannot open the Excel workbook try using the plain text tab-delimited .csv file included (``hypermesh_color_palette.txt``).

**HTML Versions**
* ``hm_colors.html``
  * Requires ``style.css``
* ``style.css``
* ``hm_colors_standalone.html``
  * Embedded CSS so no .css style file is needed.

**Other Files**
* ``hm_color_html.txt``
* ``hypermesh_color_palette.txt``
  * A plain text tab-delimited .csv version of the table
* ``HyperMesh2017ColorPalette.png``
  * An image of the content in the "Printable Version" sheet in the Excel workbook.
