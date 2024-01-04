# VISA CUPS Driver

The VISA CUPS Driver is used to send print requests to the host computer of a VISA user.

The PPD (Postscript Printer Driver) configuration requests a PDF filter to generate PDF data. The PDF data is then sent to the backend that requests a local [VISA Print Server](https://github.com/ILLGrenoble/visa-print-server) to send the PDF data via a websocket to the VISA client.

The [VISA Print Client](https://github.com/ILLGrenoble/visa-print-client), an angular module integrated into the [VISA front end](https://github.com/ILLGrenoble/visa-web) receives the PDF data and informs the user/opens a print dialog.

An [authentication proxy](https://github.com/ILLGrenoble/visa-jupyter-proxy) is used to ensure that only the owner of an instance can connect to the VISA Print Server and receive print requests.

The user then selects a local printer to print the document or saves the PDF as a local file.

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