# datadocgen
This is document for Datadoc generator

This has the following files:

1. datadoc_parser.ipynb
2. dash_template.ipynb
3. input-notebook.ipynb
4. deploy.sh
5. redeploy.sh

The main file is the file datadoc_parser.ipynb.
This notebook reads the input-notebook.ipynb and  dash_template.ipynb file.
This creates a  app.py file which is a datadoc that can be run on Heroku or locally based on the input notebook file.

Please look at the  input-notebook.ipynb file to see the format for the input file. It has 3 cells - a markdown cell whcih consists of text and 2 code cells with specific tags namely "code" and  "plot" for two respective code cells.

Finally, the application is run to test the datadoc. -UPDATE: This step has been commented as it is unnecessary.

#UPDATED
The deploy and re-deploy of the datadoc to heroku as a dash application has been added.
-Yet to be completed-conditional redeployment and parameterization

