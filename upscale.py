import os
import sys
from realesrgan import RealESRGAN

# Verifica che sia stato passato un argomento
if len(sys.argv) != 2:
    print("Usage: python upscale.py <input_image_path>")
    sys.exit(1)

# Ottieni il percorso dell'immagine di input
input_image_path = sys.argv[1]
output_image_path = 'output.png'

# Carica il modello Real-ESRGAN
model = RealESRGAN('Real-ESRGAN/experiments/pretrained_models/RealESRGAN_x2.pth', scale=2)

# Esegui l'ingrandimento
model.enhance(input_image_path, output_image_path)
