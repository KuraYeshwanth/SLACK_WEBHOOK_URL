import Tesseract from 'tesseract.js';
import fs from 'fs';
import path from 'path';

const imageFiles = [
  'IMG_9241.PNG',
  'IMG_9242.PNG',
  'IMG_9243.PNG',
  'IMG_9244.PNG',
  'IMG_9245.PNG',
  'IMG_9246.PNG',
  'IMG_9247.PNG',
  'IMG_9248.PNG',
  'IMG_9249.PNG',
  'IMG_9250.PNG',
  'IMG_9251.PNG',
  'IMG_9253.PNG',
  'IMG_9255.PNG',
  'IMG_9256.PNG',
  'IMG_9257.PNG',
  'IMG_9258.PNG',
  'IMG_9259.PNG',
  'IMG_9260.PNG',
  'IMG_9261.PNG',
  'IMG_9262.PNG',
  'IMG_9263.PNG',
];

async function ocrFile(file) {
  console.log(`Starting OCR for: ${file}`);
  try {
    const { data: { text } } = await Tesseract.recognize(
      path.resolve(file),
      'eng',
      { logger: m => console.log(m) }
    );
    console.log(`OCR result for ${file}:\n${text}\n\n`);
  } catch (error) {
    console.error(`Error processing ${file}:`, error);
  }
}

async function run() {
  for (const file of imageFiles) {
    if (fs.existsSync(file)) {
      await ocrFile(file);
    } else {
      console.log(`File not found: ${file}`);
    }
  }
}

run();
