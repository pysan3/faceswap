pip install -r requirements.txt
ffmpeg -i he/scene.mp4 -vf fps=30 he/scene%06d.png
python img_collector.py 橋本環奈 10000
python faceswap.py extract -i he -o hisface
python faceswap.py extract -i me -o myface