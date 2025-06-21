
//1. Use the inquirer npm package to get user input.
import qrImage from 'qr-image';
import inquirer from 'inquirer';
import fs from 'node:fs';
inquirer.prompt(
    {
      type: 'input',
      name: 'link',
      message: "Give me a link to make its QR Code: "
    }
  ).then((answers) => { var webLink = answers.link;
    var qrPng = qrImage.image(webLink);
    qrPng.pipe(fs.createWriteStream('google_qr.png'))
    fs.writeFile('link.txt', webLink, (err) => {
        if (err) throw err;
        console.log('The file has been saved!');
      });});


//2. Use the qr-image npm package to turn the user entered URL into a QR code image.


//3. Create a txt file to save the user input using the native fs node module.

