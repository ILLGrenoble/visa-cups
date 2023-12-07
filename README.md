# VISA CUPS Driver

The VISA CUPS Driver is used to send print requests to the host computer of a VISA user.

The driver converts the printable document from Postscript to PDF and then requests a local print server to send the PDF data via a websocket to the VISA client.

The VISA Client receives the PDF data and informs the user/opens a print dialog.

The user then selects a local printer or saves the PDF.

## Driver installation

Run the following command to install the VISA Printer driver:

```
sudo ./install.sh
```

## Adding a VISA Printer

The following command adds a VIS Printer:

```
lpadmin -p VISA -E -v visa:/queue -m visa.ppd
```

to verify that the printer has been installed, the following command is used:

```
lpstat -l -p VISA
```

When printing from applications, the printer `VISA` should be visible.

## Acknowledgements 

This project is inspired from the [cups-email](https://github.com/aardsoft/cups-email) project.